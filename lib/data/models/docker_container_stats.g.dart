// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_container_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockerContainerStatsImpl _$$DockerContainerStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$DockerContainerStatsImpl(
      memoryStats:
          MemoryStats.fromJson(json['memory_stats'] as Map<String, dynamic>),
      cpuStats: CpuStats.fromJson(json['cpu_stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DockerContainerStatsImplToJson(
        _$DockerContainerStatsImpl instance) =>
    <String, dynamic>{
      'memory_stats': instance.memoryStats,
      'cpu_stats': instance.cpuStats,
    };

_$MemoryStatsImpl _$$MemoryStatsImplFromJson(Map<String, dynamic> json) =>
    _$MemoryStatsImpl(
      usage: json['usage'] as int,
      maxUsage: json['max_usage'] as int? ?? null,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$MemoryStatsImplToJson(_$MemoryStatsImpl instance) =>
    <String, dynamic>{
      'usage': instance.usage,
      'max_usage': instance.maxUsage,
      'limit': instance.limit,
    };

_$CpuStatsImpl _$$CpuStatsImplFromJson(Map<String, dynamic> json) =>
    _$CpuStatsImpl(
      cpuUsage: CpuUsage.fromJson(json['cpu_usage'] as Map<String, dynamic>),
      systemCpuUsage: json['system_cpu_usage'] as int,
    );

Map<String, dynamic> _$$CpuStatsImplToJson(_$CpuStatsImpl instance) =>
    <String, dynamic>{
      'cpu_usage': instance.cpuUsage,
      'system_cpu_usage': instance.systemCpuUsage,
    };

_$CpuUsageImpl _$$CpuUsageImplFromJson(Map<String, dynamic> json) =>
    _$CpuUsageImpl(
      totalUsage: json['total_usage'] as int,
      percpuUsage: (json['percpu_usage'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CpuUsageImplToJson(_$CpuUsageImpl instance) =>
    <String, dynamic>{
      'total_usage': instance.totalUsage,
      'percpu_usage': instance.percpuUsage,
    };
