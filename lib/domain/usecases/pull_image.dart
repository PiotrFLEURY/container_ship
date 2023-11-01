import 'package:container_ship/core/dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pull_image.g.dart';

@riverpod
void pullImage(PullImageRef ref, String imageName) {
  return ref.read(imageRepositoryProvider).pullImage(imageName);
}
