import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_container_stats.freezed.dart';

@freezed
class DockerContainerStats with _$DockerContainerStats {
  const factory DockerContainerStats({
    required MemoryStats memoryStats,
    required CpuStats cpuStats,
  }) = _DockerContainerStats;
}

@freezed
class MemoryStats with _$MemoryStats {
  const factory MemoryStats({
    required int usage,
    required int maxUsage,
    required int limit,
  }) = _MemoryStats;
}

@freezed
class CpuStats with _$CpuStats {
  const factory CpuStats({
    required CpuUsage cpuUsage,
    required int systemCpuUsage,
  }) = _CpuStats;
}

@freezed
class CpuUsage with _$CpuUsage {
  const factory CpuUsage({
    required int totalUsage,
    required List<int> percpuUsage,
  }) = _CpuUsage;
}
