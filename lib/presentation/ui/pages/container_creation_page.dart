import 'dart:async';

import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/usecases/usecases.dart';
import 'package:container_ship/presentation/state_notifiers/content_panel_notifier.dart';
import 'package:container_ship/presentation/ui/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerCreationPage extends ConsumerStatefulWidget {
  const ContainerCreationPage({
    required this.imageName,
    super.key,
  });

  final String imageName;

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
  bool _isLoading = false;
  Timer? pullingTimer;

  @override
  void dispose() {
    pullingTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _nameController.text = widget.imageName;
    _imageController.text = widget.imageName;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Docker Container'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Spacer(),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter a name for the container',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const Spacer(),
              TextFormField(
                controller: _imageController,
                enabled: true,
                decoration: const InputDecoration(
                  labelText: 'Image',
                  hintText: 'Enter a docker image name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an image';
                  }
                  return null;
                },
              ),
              const Spacer(),
              TextFormField(
                controller: _portsController,
                decoration: const InputDecoration(
                  labelText: 'Ports',
                  hintText: 'Enter a comma separated list of ports',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
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
              const Spacer(),
              TextFormField(
                controller: _volumeController,
                decoration: const InputDecoration(
                  labelText: 'Volume',
                  hintText: 'Enter a volume path',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              TextFormField(
                controller: _envController,
                decoration: const InputDecoration(
                  labelText: 'Environment',
                  hintText:
                      'Enter a comma separated list of environment variables',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
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
              const Spacer(),
              ElevatedButton(
                onPressed: _isLoading ? null : _createContainer,
                child: Text(
                  pullingTimer?.isActive ?? false
                      ? 'Pulling image...'
                      : 'Create',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onImageSelected(DockerImage? image) {
    if (image != null) {
      _imageController.text = '${image.name}:${image.tag}';
      _nameController.text = image.name;
    }
  }

  void _pullImage(String name) {
    ref.read(pullImageProvider(name));
    pullingTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final imageList = await ref.refresh(listImagesProvider.future);
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

      final imageList = await ref.read(listImagesProvider.future);
      if (!imageList.any((element) => element.name == name)) {
        _pullImage(name);
      } else {
        ref.read(
          createContainerProvider(
            containerName: name,
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
          ),
        );

        setState(() {
          _isLoading = false;
        });
      }

      ref.read(contentPanelNotifierProvider.notifier).selectMenu(
            ContainerShipMenu.menuRunningContainers,
          );
    }
  }
}
