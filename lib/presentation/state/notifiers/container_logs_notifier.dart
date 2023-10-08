import 'package:container_ship/domain/repositories/container_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerLogsNotifier extends StateNotifier<String> {
  ContainerLogsNotifier(this._containerRepository) : super('');

  final ContainerRepository _containerRepository;

  Future<void> getContainerLogs(String id) async {
    final logs = await _containerRepository.getContainerLogs(id);
    state = logs;
  }
}
