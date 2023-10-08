// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docker_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DockerContainer {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  DockerContainerStats? get stats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DockerContainerCopyWith<DockerContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerContainerCopyWith<$Res> {
  factory $DockerContainerCopyWith(
          DockerContainer value, $Res Function(DockerContainer) then) =
      _$DockerContainerCopyWithImpl<$Res, DockerContainer>;
  @useResult
  $Res call(
      {String id, String image, String state, DockerContainerStats? stats});

  $DockerContainerStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$DockerContainerCopyWithImpl<$Res, $Val extends DockerContainer>
    implements $DockerContainerCopyWith<$Res> {
  _$DockerContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? state = null,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DockerContainerStats?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DockerContainerStatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $DockerContainerStatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DockerContainerImplCopyWith<$Res>
    implements $DockerContainerCopyWith<$Res> {
  factory _$$DockerContainerImplCopyWith(_$DockerContainerImpl value,
          $Res Function(_$DockerContainerImpl) then) =
      __$$DockerContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String image, String state, DockerContainerStats? stats});

  @override
  $DockerContainerStatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$DockerContainerImplCopyWithImpl<$Res>
    extends _$DockerContainerCopyWithImpl<$Res, _$DockerContainerImpl>
    implements _$$DockerContainerImplCopyWith<$Res> {
  __$$DockerContainerImplCopyWithImpl(
      _$DockerContainerImpl _value, $Res Function(_$DockerContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? state = null,
    Object? stats = freezed,
  }) {
    return _then(_$DockerContainerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as DockerContainerStats?,
    ));
  }
}

/// @nodoc

class _$DockerContainerImpl implements _DockerContainer {
  const _$DockerContainerImpl(
      {required this.id, required this.image, required this.state, this.stats});

  @override
  final String id;
  @override
  final String image;
  @override
  final String state;
  @override
  final DockerContainerStats? stats;

  @override
  String toString() {
    return 'DockerContainer(id: $id, image: $image, state: $state, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerContainerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, image, state, stats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerContainerImplCopyWith<_$DockerContainerImpl> get copyWith =>
      __$$DockerContainerImplCopyWithImpl<_$DockerContainerImpl>(
          this, _$identity);
}

abstract class _DockerContainer implements DockerContainer {
  const factory _DockerContainer(
      {required final String id,
      required final String image,
      required final String state,
      final DockerContainerStats? stats}) = _$DockerContainerImpl;

  @override
  String get id;
  @override
  String get image;
  @override
  String get state;
  @override
  DockerContainerStats? get stats;
  @override
  @JsonKey(ignore: true)
  _$$DockerContainerImplCopyWith<_$DockerContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
