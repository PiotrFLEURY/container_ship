import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/repositories/image_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageListNotifier extends StateNotifier<List<DockerImage>> {
  ImageListNotifier(this._imageRepository) : super([]);

  final ImageRepository _imageRepository;

  Future<void> getImages() async {
    final images = await _imageRepository.getImages();
    state = images;
  }

  void pullImage({required String name}) {
    _imageRepository.pullImage(name);
  }
}
