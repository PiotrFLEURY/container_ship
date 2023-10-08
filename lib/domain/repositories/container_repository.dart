import 'package:container_ship/domain/entities/entities.dart';

abstract class ContainerRepository {
  Future<List<DockerContainer>> getContainers();

  Future<DockerContainerStats> getContainerStats(String id);

  Future<void> stopContainer(String id);

  Future<String> getContainerLogs(String id);
}
