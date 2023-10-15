import 'package:container_ship/domain/entities/docker_image_search_result.dart';
import 'package:container_ship/domain/repositories/image_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageSearchNotifier extends StateNotifier<List<DockerImageSearchResult>> {
  ImageSearchNotifier(this._imageRepository) : super([]);

  final ImageRepository _imageRepository;

  Future<void> searchImages(String term) async {
    state = await _imageRepository.searchImages(term);
  }

  void clearResults() {
    state = [];
  }
}
