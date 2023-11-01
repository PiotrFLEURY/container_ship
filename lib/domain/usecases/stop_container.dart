import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/usecases/list_containers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stop_container.g.dart';

@riverpod
Future<void> stopContainer(StopContainerRef ref, String id) async {
  final containerRepository = ref.read(containerRepositoryProvider);
  await containerRepository.stopContainer(id);
  return ref.refresh(listContainersProvider.future);
}
