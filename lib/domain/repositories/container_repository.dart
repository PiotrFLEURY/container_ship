import 'package:container_ship/domain/entities/entities.dart';

abstract class ContainerRepository {
  Future<List<DockerContainer>> getContainers();

  Future<DockerContainerStats> getContainerStats(String id);

  Future<void> stopContainer(String id);

  Future<String> getContainerLogs(String id);

  Future<void> createContainer({
    required String name,
    required String image,
    String? volume,
    List<int>? ports,
    Map<String, String>? environment,
  });

  Future<void> startContainer(String id);

  Future<void> removeContainer(String id);
}
