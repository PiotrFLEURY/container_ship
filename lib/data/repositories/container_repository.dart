import 'package:container_ship/data/models/models.dart';
import 'package:container_ship/data/sources/docker_api.dart';
import 'package:container_ship/domain/repositories/repositories.dart';
import 'package:container_ship/domain/entities/entities.dart' as entity;

class ContainerRepositoryImpl implements ContainerRepository {
  ContainerRepositoryImpl(this._dockerApi);

  final DockerApi _dockerApi;

  @override
  Future<List<entity.DockerContainer>> getContainers() {
    return _dockerApi.getContainers(all: true).then(
          (value) => value.map((model) {
            return entity.DockerContainer(
              id: model.id,
              image: model.image,
              state: model.state,
            );
          }).toList(),
        );
  }

  @override
  Future<entity.DockerContainerStats> getContainerStats(String id) {
    return _dockerApi.getContainerStats(id).then(
          (model) => entity.DockerContainerStats(
            cpuStats: entity.CpuStats(
              cpuUsage: entity.CpuUsage(
                totalUsage: model.cpuStats.cpuUsage.totalUsage,
                percpuUsage: model.cpuStats.cpuUsage.percpuUsage,
              ),
              systemCpuUsage: model.cpuStats.systemCpuUsage,
            ),
            memoryStats: entity.MemoryStats(
              usage: model.memoryStats.usage,
              maxUsage: model.memoryStats.maxUsage ?? 0,
              limit: model.memoryStats.limit,
            ),
          ),
        );
  }

  @override
  Future<void> stopContainer(String id) {
    return _dockerApi.stopContainer(id);
  }

  @override
  Future<String> getContainerLogs(String id) {
    return _dockerApi.getContainerLogs(id);
  }

  @override
  Future<void> createContainer({
    required String name,
    required String image,
    String? volume,
    List<int>? ports,
    Map<String, String>? environment,
  }) {
    return _dockerApi.createContainer(
      name: name,
      body: DockerContainerCreationRequest(
        image: image,
        volumes: volume == null ? null : {volume: {}},
        ports: ports == null ? null : {for (var port in ports) '$port/tcp': {}},
        hostConfig: ports == null
            ? null
            : DockerHostingConfig(
                portBindings: {
                  for (var port in ports)
                    '$port/tcp': [
                      DockerPortBinding(
                        hostPort: port.toString(),
                      ),
                    ],
                },
              ),
        environment:
            environment?.entries.map((e) => '${e.key}=${e.value}').toList(),
      ),
    );
  }

  @override
  Future<void> startContainer(String id) {
    return _dockerApi.startContainer(id);
  }

  @override
  Future<void> removeContainer(String id) {
    return _dockerApi.removeContainer(id);
  }
}
