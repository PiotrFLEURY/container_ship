import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/usecases/usecases.dart';
import 'package:container_ship/presentation/state_notifiers/selected_image_name_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PulledImagesPage extends ConsumerWidget {
  const PulledImagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageList = ref.watch(listImagesProvider);
    return imageList.when(
      data: (imageList) {
        return _PulledImages(
          imageList: imageList,
        );
      },
      error: (_, __) => const Center(child: Text('Error loading images')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class _PulledImages extends ConsumerStatefulWidget {
  const _PulledImages({
    required this.imageList,
  });

  final List<DockerImage> imageList;

  @override
  ConsumerState<_PulledImages> createState() => _PulledImagesState();
}

class _PulledImagesState extends ConsumerState<_PulledImages> {
  DockerImage? selectedImage;

  void selectImage(DockerImage image) {
    if (image == selectedImage) {
      setState(() {
        selectedImage = null;
      });
      return;
    }
    setState(() {
      selectedImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: selectedImage != null
          ? FloatingActionButton(
              onPressed: () {
                ref
                    .read(selectedImageNameNotifierProvider.notifier)
                    .select(selectedImage!.name);
              },
              child: const Icon(Icons.check),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.only(left: 48.0),
        child: ListView(
          children: [
            const SizedBox(height: 48),
            const Text(
              'Pulled Images',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48),
            ...widget.imageList.map((image) {
              return InkWell(
                onTap: () => selectImage(image),
                child: ListTile(
                  title: Text(image.name),
                  subtitle: Text(image.tag),
                  trailing: selectedImage == image
                      ? const Icon(
                          Icons.check_circle,
                        )
                      : null,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
