import 'package:container_ship/domain/entities/entities.dart';

abstract class ImageRepository {
  Future<List<DockerImage>> getImages();
}
