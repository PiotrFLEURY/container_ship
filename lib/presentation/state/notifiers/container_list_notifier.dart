import 'package:container_ship/domain/entities/entities.dart';
import 'package:container_ship/domain/repositories/container_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerListNotifier extends StateNotifier<List<DockerContainer>> {
  ContainerListNotifier(this._containerRepository) : super([]);

  final ContainerRepository _containerRepository;

  Future<void> getContainers() async {
    final containers = await _containerRepository.getContainers();
    state = containers;
  }

  Future<void> getContainerStats(String id) async {
    final containerStats = await _containerRepository.getContainerStats(id);
    final index = state.indexWhere((element) => element.id == id);
    state[index] = state[index].copyWith(stats: containerStats);
    state = [...state];
  }

  Future<void> stopContainer(String id) async {
    await _containerRepository.stopContainer(id);
    getContainers();
  }

  Future<void> createContainer({
    required String name,
    required String image,
    String? volume,
    List<int>? ports,
    Map<String, String>? environment,
  }) async {
    await _containerRepository.createContainer(
      name: name,
      image: image,
      volume: volume,
      ports: ports,
      environment: environment,
    );
    getContainers();
  }

  Future<void> startContainer(String id) async {
    await _containerRepository.startContainer(id);
    getContainers();
  }

  Future<void> removeContainer(String id) async {
    await _containerRepository.removeContainer(id);
    getContainers();
  }
}
