import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_search_result.g.dart';

@riverpod
class ImageSearchResult extends _$ImageSearchResult {
  @override
  List<DockerImageSearchResult> build() => [];

  Future<void> searchImages(String term) async {
    state = await ref.read(imageRepositoryProvider).searchImages(term);
  }

  void clearResults() {
    state = [];
  }
}
