import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/usecases/list_containers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_container.g.dart';

@riverpod
Future<void> createContainer(
  CreateContainerRef ref, {
  required String containerName,
  required String image,
  String? volume,
  List<int>? ports,
  Map<String, String>? environment,
}) async {
  await ref.read(containerRepositoryProvider).createContainer(
        name: containerName,
        image: image,
        volume: volume,
        ports: ports,
        environment: environment,
      );
  return ref.refresh(listContainersProvider.future);
}
