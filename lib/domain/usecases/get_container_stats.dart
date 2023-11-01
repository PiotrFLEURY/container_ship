import 'package:container_ship/core/dependency_injection.dart';
import 'package:container_ship/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_container_stats.g.dart';

@riverpod
Future<DockerContainerStats> getContainerStats(
  GetContainerStatsRef ref,
  String id,
) {
  return ref.read(containerRepositoryProvider).getContainerStats(id);
}
