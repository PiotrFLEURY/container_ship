import 'dart:async';

import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/presentation/state/providers/providers.dart';
import 'package:container_ship/presentation/ui/views/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerCreationPage extends ConsumerStatefulWidget {
  const ContainerCreationPage({super.key});

  @override
  ContainerCreationPageState createState() => ContainerCreationPageState();
}

class ContainerCreationPageState extends ConsumerState<ContainerCreationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _imageController = TextEditingController();
  final _portsController = TextEditingController();
  final _volumeController = TextEditingController();
  final _envController = TextEditingController();
  DockerImage? _selectedImage;
  bool _isLoading = false;
  Timer? pullingTimer;

  @override
  void initState() {
    super.initState();
    ref.read(imageListNotifierProvider.notifier).getImages();
  }

  @override
  void dispose() {
    pullingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // get image name from arguments
    final imageName = ModalRoute.of(context)!.settings.arguments as String?;

    final imageList = imageName == null
        ? ref.watch(imageListNotifierProvider)
        : const <DockerImage>[];

    _nameController.text = imageName ?? '';
    _imageController.text = imageName ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Docker Container'),
      ),
      body: Background(
        child: Container(
          color: Colors.white.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                  if (imageName == null)
                    DropdownButton(
                      value: _selectedImage,
                      selectedItemBuilder: (context) => imageList
                          .map(
                            (image) => Text('${image.name}:${image.tag}'),
                          )
                          .toList(),
                      items: imageList.map((image) {
                        return DropdownMenuItem(
                          value: image,
                          child: Text('${image.name}:${image.tag}'),
                        );
                      }).toList(),
                      onChanged: _onImageSelected,
                    ),
                  TextFormField(
                    controller: _imageController,
                    enabled: true,
                    decoration: const InputDecoration(labelText: 'Image'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an image';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _portsController,
                    decoration: const InputDecoration(labelText: 'Ports'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      try {
                        int.parse(value);
                        return null;
                      } catch (e) {
                        return 'Please enter a valid port';
                      }
                    },
                  ),
                  TextFormField(
                    controller: _volumeController,
                    decoration: const InputDecoration(labelText: 'Volume'),
                  ),
                  TextFormField(
                    controller: _envController,
                    decoration: const InputDecoration(labelText: 'Environment'),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return null;
                      }
                      final envRegex = RegExp(r'^([A-Za-z0-9_]+)=(.+)$');
                      final values =
                          value.contains(',') ? value.split(',') : [value];
                      for (final value in values) {
                        if (!envRegex.hasMatch(value)) {
                          return 'Please enter a valid environment variable';
                        }
                      }
                      return null;
                    },
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _createContainer,
                    child: Text(
                      pullingTimer?.isActive ?? false
                          ? 'Pulling image...'
                          : 'Create',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onImageSelected(DockerImage? image) {
    if (image != null) {
      _imageController.text = '${image.name}:${image.tag}';
      _nameController.text = image.name;
      _selectedImage = image;
    }
  }

  void _pullImage(String name) {
    ref.read(imageListNotifierProvider.notifier).pullImage(name: name);
    pullingTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      await ref.read(imageListNotifierProvider.notifier).getImages();
      final imageList = ref.read(imageListNotifierProvider);
      if (imageList.any((element) => element.name == name)) {
        setState(() {
          _isLoading = false;
        });
        timer.cancel();
        _onImageSelected(
          imageList.firstWhere((element) => element.name == name),
        );
      }
    });
  }

  void _createContainer() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      final name = _nameController.text;
      final image = _imageController.text;
      final ports =
          _portsController.text.isEmpty ? null : _portsController.text;
      final volume = _volumeController.text;
      final env = _envController.text;

      final imageList = ref.read(imageListNotifierProvider);
      if (!imageList.any((element) => element.name == name)) {
        _pullImage(name);
      } else {
        await ref.read(containerListNotifierProvider.notifier).createContainer(
              name: name,
              image: image,
              ports: ports?.contains(',') ?? false
                  ? ports?.split(',').map(int.parse).toList()
                  : ports == null
                      ? null
                      : [int.parse(ports)],
              volume: volume.isEmpty ? null : volume,
              environment: env.isEmpty
                  ? null
                  : Map.fromIterable(
                      env.split(','),
                      key: (e) => e.split('=')[0],
                    ),
            );

        setState(() {
          _isLoading = false;
        });

        if (mounted) Navigator.of(context).pop();
      }
    }
  }
}
