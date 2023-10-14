import 'package:container_ship/presentation/state/providers/providers.dart';
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
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Docker Container'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
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
                    TextFormField(
                      controller: _imageController,
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
                      decoration:
                          const InputDecoration(labelText: 'Environment'),
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
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _createContainer,
                      child: const Text('Create'),
                    ),
                  ],
                ),
              ),
            ),
    );
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

      await ref.read(containerListNotifierProvider.notifier).createContainer(
            name: name,
            image: image,
            ports: ports?.contains(',') ?? false
                ? ports?.split(',').map(int.parse).toList()
                : [int.parse(ports!)],
            volume: volume.isEmpty ? null : volume,
            environment: env.isEmpty
                ? null
                : Map.fromIterable(env.split(','), key: (e) => e.split('=')[0]),
          );

      setState(() {
        _isLoading = false;
      });

      if (mounted) Navigator.of(context).pop();
    }
  }
}
