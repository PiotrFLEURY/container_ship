import 'package:container_ship/data/sources/docker_api.dart';
import 'package:container_ship/domain/repositories/container_repository.dart';
import 'package:container_ship/domain/entities/entities.dart';

class ContainerRepositoryImpl implements ContainerRepository {
  ContainerRepositoryImpl(this._dockerApi);

  final DockerApi _dockerApi;

  @override
  Future<List<DockerContainer>> getContainers() {
    return _dockerApi.getContainers(all: true).then(
          (value) => value.map((model) {
            return DockerContainer(
              id: model.id,
              image: model.image,
              state: model.state,
            );
          }).toList(),
        );
  }

  @override
  Future<DockerContainerStats> getContainerStats(String id) {
    return _dockerApi.getContainerStats(id).then(
          (model) => DockerContainerStats(
            cpuStats: CpuStats(
              cpuUsage: CpuUsage(
                totalUsage: model.cpuStats.cpuUsage.totalUsage,
                percpuUsage: model.cpuStats.cpuUsage.percpuUsage,
              ),
              systemCpuUsage: model.cpuStats.systemCpuUsage,
            ),
            memoryStats: MemoryStats(
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
}
