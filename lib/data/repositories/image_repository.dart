import 'package:container_ship/data/sources/docker_api.dart';
import 'package:container_ship/domain/entities/entities.dart' as entity;
import 'package:container_ship/domain/repositories/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  const ImageRepositoryImpl(this._dockerApi);

  final DockerApi _dockerApi;

  @override
  Future<List<entity.DockerImage>> getImages() {
    return _dockerApi.getImages().then(
          (images) => images.map((image) {
            // return a list by repotag
            return image.repoTags!.map(
              (repotag) => entity.DockerImage(
                id: image.id ?? '',
                name: repotag.split(':').first,
                tag: repotag.split(':').last,
              ),
            );
          }).reduce((value, element) {
            return [...value, ...element];
          }).toList(),
        );
  }
}
