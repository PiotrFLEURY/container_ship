// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docker_container_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DockerContainerStats {
  MemoryStats get memoryStats => throw _privateConstructorUsedError;
  CpuStats get cpuStats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DockerContainerStatsCopyWith<DockerContainerStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerContainerStatsCopyWith<$Res> {
  factory $DockerContainerStatsCopyWith(DockerContainerStats value,
          $Res Function(DockerContainerStats) then) =
      _$DockerContainerStatsCopyWithImpl<$Res, DockerContainerStats>;
  @useResult
  $Res call({MemoryStats memoryStats, CpuStats cpuStats});

  $MemoryStatsCopyWith<$Res> get memoryStats;
  $CpuStatsCopyWith<$Res> get cpuStats;
}

/// @nodoc
class _$DockerContainerStatsCopyWithImpl<$Res,
        $Val extends DockerContainerStats>
    implements $DockerContainerStatsCopyWith<$Res> {
  _$DockerContainerStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryStats = null,
    Object? cpuStats = null,
  }) {
    return _then(_value.copyWith(
      memoryStats: null == memoryStats
          ? _value.memoryStats
          : memoryStats // ignore: cast_nullable_to_non_nullable
              as MemoryStats,
      cpuStats: null == cpuStats
          ? _value.cpuStats
          : cpuStats // ignore: cast_nullable_to_non_nullable
              as CpuStats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemoryStatsCopyWith<$Res> get memoryStats {
    return $MemoryStatsCopyWith<$Res>(_value.memoryStats, (value) {
      return _then(_value.copyWith(memoryStats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuStatsCopyWith<$Res> get cpuStats {
    return $CpuStatsCopyWith<$Res>(_value.cpuStats, (value) {
      return _then(_value.copyWith(cpuStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DockerContainerStatsImplCopyWith<$Res>
    implements $DockerContainerStatsCopyWith<$Res> {
  factory _$$DockerContainerStatsImplCopyWith(_$DockerContainerStatsImpl value,
          $Res Function(_$DockerContainerStatsImpl) then) =
      __$$DockerContainerStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MemoryStats memoryStats, CpuStats cpuStats});

  @override
  $MemoryStatsCopyWith<$Res> get memoryStats;
  @override
  $CpuStatsCopyWith<$Res> get cpuStats;
}

/// @nodoc
class __$$DockerContainerStatsImplCopyWithImpl<$Res>
    extends _$DockerContainerStatsCopyWithImpl<$Res, _$DockerContainerStatsImpl>
    implements _$$DockerContainerStatsImplCopyWith<$Res> {
  __$$DockerContainerStatsImplCopyWithImpl(_$DockerContainerStatsImpl _value,
      $Res Function(_$DockerContainerStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memoryStats = null,
    Object? cpuStats = null,
  }) {
    return _then(_$DockerContainerStatsImpl(
      memoryStats: null == memoryStats
          ? _value.memoryStats
          : memoryStats // ignore: cast_nullable_to_non_nullable
              as MemoryStats,
      cpuStats: null == cpuStats
          ? _value.cpuStats
          : cpuStats // ignore: cast_nullable_to_non_nullable
              as CpuStats,
    ));
  }
}

/// @nodoc

class _$DockerContainerStatsImpl implements _DockerContainerStats {
  const _$DockerContainerStatsImpl(
      {required this.memoryStats, required this.cpuStats});

  @override
  final MemoryStats memoryStats;
  @override
  final CpuStats cpuStats;

  @override
  String toString() {
    return 'DockerContainerStats(memoryStats: $memoryStats, cpuStats: $cpuStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerContainerStatsImpl &&
            (identical(other.memoryStats, memoryStats) ||
                other.memoryStats == memoryStats) &&
            (identical(other.cpuStats, cpuStats) ||
                other.cpuStats == cpuStats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memoryStats, cpuStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerContainerStatsImplCopyWith<_$DockerContainerStatsImpl>
      get copyWith =>
          __$$DockerContainerStatsImplCopyWithImpl<_$DockerContainerStatsImpl>(
              this, _$identity);
}

abstract class _DockerContainerStats implements DockerContainerStats {
  const factory _DockerContainerStats(
      {required final MemoryStats memoryStats,
      required final CpuStats cpuStats}) = _$DockerContainerStatsImpl;

  @override
  MemoryStats get memoryStats;
  @override
  CpuStats get cpuStats;
  @override
  @JsonKey(ignore: true)
  _$$DockerContainerStatsImplCopyWith<_$DockerContainerStatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemoryStats {
  int get usage => throw _privateConstructorUsedError;
  int get maxUsage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemoryStatsCopyWith<MemoryStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryStatsCopyWith<$Res> {
  factory $MemoryStatsCopyWith(
          MemoryStats value, $Res Function(MemoryStats) then) =
      _$MemoryStatsCopyWithImpl<$Res, MemoryStats>;
  @useResult
  $Res call({int usage, int maxUsage, int limit});
}

/// @nodoc
class _$MemoryStatsCopyWithImpl<$Res, $Val extends MemoryStats>
    implements $MemoryStatsCopyWith<$Res> {
  _$MemoryStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usage = null,
    Object? maxUsage = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as int,
      maxUsage: null == maxUsage
          ? _value.maxUsage
          : maxUsage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoryStatsImplCopyWith<$Res>
    implements $MemoryStatsCopyWith<$Res> {
  factory _$$MemoryStatsImplCopyWith(
          _$MemoryStatsImpl value, $Res Function(_$MemoryStatsImpl) then) =
      __$$MemoryStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int usage, int maxUsage, int limit});
}

/// @nodoc
class __$$MemoryStatsImplCopyWithImpl<$Res>
    extends _$MemoryStatsCopyWithImpl<$Res, _$MemoryStatsImpl>
    implements _$$MemoryStatsImplCopyWith<$Res> {
  __$$MemoryStatsImplCopyWithImpl(
      _$MemoryStatsImpl _value, $Res Function(_$MemoryStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usage = null,
    Object? maxUsage = null,
    Object? limit = null,
  }) {
    return _then(_$MemoryStatsImpl(
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as int,
      maxUsage: null == maxUsage
          ? _value.maxUsage
          : maxUsage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MemoryStatsImpl implements _MemoryStats {
  const _$MemoryStatsImpl(
      {required this.usage, required this.maxUsage, required this.limit});

  @override
  final int usage;
  @override
  final int maxUsage;
  @override
  final int limit;

  @override
  String toString() {
    return 'MemoryStats(usage: $usage, maxUsage: $maxUsage, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoryStatsImpl &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.maxUsage, maxUsage) ||
                other.maxUsage == maxUsage) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usage, maxUsage, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoryStatsImplCopyWith<_$MemoryStatsImpl> get copyWith =>
      __$$MemoryStatsImplCopyWithImpl<_$MemoryStatsImpl>(this, _$identity);
}

abstract class _MemoryStats implements MemoryStats {
  const factory _MemoryStats(
      {required final int usage,
      required final int maxUsage,
      required final int limit}) = _$MemoryStatsImpl;

  @override
  int get usage;
  @override
  int get maxUsage;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$MemoryStatsImplCopyWith<_$MemoryStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CpuStats {
  CpuUsage get cpuUsage => throw _privateConstructorUsedError;
  int get systemCpuUsage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CpuStatsCopyWith<CpuStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuStatsCopyWith<$Res> {
  factory $CpuStatsCopyWith(CpuStats value, $Res Function(CpuStats) then) =
      _$CpuStatsCopyWithImpl<$Res, CpuStats>;
  @useResult
  $Res call({CpuUsage cpuUsage, int systemCpuUsage});

  $CpuUsageCopyWith<$Res> get cpuUsage;
}

/// @nodoc
class _$CpuStatsCopyWithImpl<$Res, $Val extends CpuStats>
    implements $CpuStatsCopyWith<$Res> {
  _$CpuStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsage = null,
    Object? systemCpuUsage = null,
  }) {
    return _then(_value.copyWith(
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as CpuUsage,
      systemCpuUsage: null == systemCpuUsage
          ? _value.systemCpuUsage
          : systemCpuUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CpuUsageCopyWith<$Res> get cpuUsage {
    return $CpuUsageCopyWith<$Res>(_value.cpuUsage, (value) {
      return _then(_value.copyWith(cpuUsage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CpuStatsImplCopyWith<$Res>
    implements $CpuStatsCopyWith<$Res> {
  factory _$$CpuStatsImplCopyWith(
          _$CpuStatsImpl value, $Res Function(_$CpuStatsImpl) then) =
      __$$CpuStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CpuUsage cpuUsage, int systemCpuUsage});

  @override
  $CpuUsageCopyWith<$Res> get cpuUsage;
}

/// @nodoc
class __$$CpuStatsImplCopyWithImpl<$Res>
    extends _$CpuStatsCopyWithImpl<$Res, _$CpuStatsImpl>
    implements _$$CpuStatsImplCopyWith<$Res> {
  __$$CpuStatsImplCopyWithImpl(
      _$CpuStatsImpl _value, $Res Function(_$CpuStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cpuUsage = null,
    Object? systemCpuUsage = null,
  }) {
    return _then(_$CpuStatsImpl(
      cpuUsage: null == cpuUsage
          ? _value.cpuUsage
          : cpuUsage // ignore: cast_nullable_to_non_nullable
              as CpuUsage,
      systemCpuUsage: null == systemCpuUsage
          ? _value.systemCpuUsage
          : systemCpuUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CpuStatsImpl implements _CpuStats {
  const _$CpuStatsImpl({required this.cpuUsage, required this.systemCpuUsage});

  @override
  final CpuUsage cpuUsage;
  @override
  final int systemCpuUsage;

  @override
  String toString() {
    return 'CpuStats(cpuUsage: $cpuUsage, systemCpuUsage: $systemCpuUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CpuStatsImpl &&
            (identical(other.cpuUsage, cpuUsage) ||
                other.cpuUsage == cpuUsage) &&
            (identical(other.systemCpuUsage, systemCpuUsage) ||
                other.systemCpuUsage == systemCpuUsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cpuUsage, systemCpuUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CpuStatsImplCopyWith<_$CpuStatsImpl> get copyWith =>
      __$$CpuStatsImplCopyWithImpl<_$CpuStatsImpl>(this, _$identity);
}

abstract class _CpuStats implements CpuStats {
  const factory _CpuStats(
      {required final CpuUsage cpuUsage,
      required final int systemCpuUsage}) = _$CpuStatsImpl;

  @override
  CpuUsage get cpuUsage;
  @override
  int get systemCpuUsage;
  @override
  @JsonKey(ignore: true)
  _$$CpuStatsImplCopyWith<_$CpuStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CpuUsage {
  int get totalUsage => throw _privateConstructorUsedError;
  List<int> get percpuUsage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CpuUsageCopyWith<CpuUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CpuUsageCopyWith<$Res> {
  factory $CpuUsageCopyWith(CpuUsage value, $Res Function(CpuUsage) then) =
      _$CpuUsageCopyWithImpl<$Res, CpuUsage>;
  @useResult
  $Res call({int totalUsage, List<int> percpuUsage});
}

/// @nodoc
class _$CpuUsageCopyWithImpl<$Res, $Val extends CpuUsage>
    implements $CpuUsageCopyWith<$Res> {
  _$CpuUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsage = null,
    Object? percpuUsage = null,
  }) {
    return _then(_value.copyWith(
      totalUsage: null == totalUsage
          ? _value.totalUsage
          : totalUsage // ignore: cast_nullable_to_non_nullable
              as int,
      percpuUsage: null == percpuUsage
          ? _value.percpuUsage
          : percpuUsage // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CpuUsageImplCopyWith<$Res>
    implements $CpuUsageCopyWith<$Res> {
  factory _$$CpuUsageImplCopyWith(
          _$CpuUsageImpl value, $Res Function(_$CpuUsageImpl) then) =
      __$$CpuUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalUsage, List<int> percpuUsage});
}

/// @nodoc
class __$$CpuUsageImplCopyWithImpl<$Res>
    extends _$CpuUsageCopyWithImpl<$Res, _$CpuUsageImpl>
    implements _$$CpuUsageImplCopyWith<$Res> {
  __$$CpuUsageImplCopyWithImpl(
      _$CpuUsageImpl _value, $Res Function(_$CpuUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUsage = null,
    Object? percpuUsage = null,
  }) {
    return _then(_$CpuUsageImpl(
      totalUsage: null == totalUsage
          ? _value.totalUsage
          : totalUsage // ignore: cast_nullable_to_non_nullable
              as int,
      percpuUsage: null == percpuUsage
          ? _value._percpuUsage
          : percpuUsage // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$CpuUsageImpl implements _CpuUsage {
  const _$CpuUsageImpl(
      {required this.totalUsage, required final List<int> percpuUsage})
      : _percpuUsage = percpuUsage;

  @override
  final int totalUsage;
  final List<int> _percpuUsage;
  @override
  List<int> get percpuUsage {
    if (_percpuUsage is EqualUnmodifiableListView) return _percpuUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_percpuUsage);
  }

  @override
  String toString() {
    return 'CpuUsage(totalUsage: $totalUsage, percpuUsage: $percpuUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CpuUsageImpl &&
            (identical(other.totalUsage, totalUsage) ||
                other.totalUsage == totalUsage) &&
            const DeepCollectionEquality()
                .equals(other._percpuUsage, _percpuUsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalUsage,
      const DeepCollectionEquality().hash(_percpuUsage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CpuUsageImplCopyWith<_$CpuUsageImpl> get copyWith =>
      __$$CpuUsageImplCopyWithImpl<_$CpuUsageImpl>(this, _$identity);
}

abstract class _CpuUsage implements CpuUsage {
  const factory _CpuUsage(
      {required final int totalUsage,
      required final List<int> percpuUsage}) = _$CpuUsageImpl;

  @override
  int get totalUsage;
  @override
  List<int> get percpuUsage;
  @override
  @JsonKey(ignore: true)
  _$$CpuUsageImplCopyWith<_$CpuUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
