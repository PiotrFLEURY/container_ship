import 'package:container_ship/domain/entities/entities.dart';

abstract class ImageRepository {
  Future<List<DockerImage>> getImages();

  Future<List<DockerImageSearchResult>> searchImages(String term);

  void pullImage(String name);
}
