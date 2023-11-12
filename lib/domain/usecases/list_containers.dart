import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_containers.g.dart';

@riverpod
Future<(List<DockerContainer> running, List<DockerContainer> stopped)>
    listContainers(ListContainersRef ref) async {
  final containers =
      await ref.read(containerRepositoryProvider).getContainers();

  final running =
      containers.where((container) => container.state == 'running').toList();
  final stopped =
      containers.where((container) => container.state != 'running').toList();

  return (running, stopped);
}
