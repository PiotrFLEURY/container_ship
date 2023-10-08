// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_container_stats.freezed.dart';

part 'docker_container_stats.g.dart';

@freezed
class DockerContainerStats with _$DockerContainerStats {
  const factory DockerContainerStats({
    @JsonKey(name: 'memory_stats') required MemoryStats memoryStats,
    @JsonKey(name: 'cpu_stats') required CpuStats cpuStats,
  }) = _DockerContainerStats;

  factory DockerContainerStats.fromJson(Map<String, dynamic> json) =>
      _$DockerContainerStatsFromJson(json);
}

@freezed
class MemoryStats with _$MemoryStats {
  const factory MemoryStats({
    @JsonKey(name: 'usage') required int usage,
    @JsonKey(name: 'max_usage') @Default(null) int? maxUsage,
    @JsonKey(name: 'limit') required int limit,
  }) = _MemoryStats;

  factory MemoryStats.fromJson(Map<String, dynamic> json) =>
      _$MemoryStatsFromJson(json);
}

@freezed
class CpuStats with _$CpuStats {
  const factory CpuStats({
    @JsonKey(name: 'cpu_usage') required CpuUsage cpuUsage,
    @JsonKey(name: 'system_cpu_usage') required int systemCpuUsage,
  }) = _CpuStats;

  factory CpuStats.fromJson(Map<String, dynamic> json) =>
      _$CpuStatsFromJson(json);
}

@freezed
class CpuUsage with _$CpuUsage {
  const factory CpuUsage({
    @JsonKey(name: 'total_usage') required int totalUsage,
    @JsonKey(name: 'percpu_usage') @Default([]) List<int> percpuUsage,
  }) = _CpuUsage;

  factory CpuUsage.fromJson(Map<String, dynamic> json) =>
      _$CpuUsageFromJson(json);
}
