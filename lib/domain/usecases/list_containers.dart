import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_containers.g.dart';

@riverpod
Future<List<DockerContainer>> listContainers(ListContainersRef ref) {
  return ref.read(containerRepositoryProvider).getContainers();
}
