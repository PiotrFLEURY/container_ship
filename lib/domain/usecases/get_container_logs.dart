import 'package:container_ship/core/dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_container_logs.g.dart';

@riverpod
Future<String> getContainerLogs(GetContainerLogsRef ref, String id) {
  return ref.read(containerRepositoryProvider).getContainerLogs(id);
}
