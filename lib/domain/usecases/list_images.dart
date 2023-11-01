import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_images.g.dart';

@riverpod
Future<List<DockerImage>> listImages(ListImagesRef ref) {
  return ref.read(imageRepositoryProvider).getImages();
}
