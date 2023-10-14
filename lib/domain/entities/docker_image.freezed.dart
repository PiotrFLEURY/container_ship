// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docker_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DockerImage {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DockerImageCopyWith<DockerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerImageCopyWith<$Res> {
  factory $DockerImageCopyWith(
          DockerImage value, $Res Function(DockerImage) then) =
      _$DockerImageCopyWithImpl<$Res, DockerImage>;
  @useResult
  $Res call({String id, String name, String tag});
}

/// @nodoc
class _$DockerImageCopyWithImpl<$Res, $Val extends DockerImage>
    implements $DockerImageCopyWith<$Res> {
  _$DockerImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockerImageImplCopyWith<$Res>
    implements $DockerImageCopyWith<$Res> {
  factory _$$DockerImageImplCopyWith(
          _$DockerImageImpl value, $Res Function(_$DockerImageImpl) then) =
      __$$DockerImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String tag});
}

/// @nodoc
class __$$DockerImageImplCopyWithImpl<$Res>
    extends _$DockerImageCopyWithImpl<$Res, _$DockerImageImpl>
    implements _$$DockerImageImplCopyWith<$Res> {
  __$$DockerImageImplCopyWithImpl(
      _$DockerImageImpl _value, $Res Function(_$DockerImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = null,
  }) {
    return _then(_$DockerImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DockerImageImpl implements _DockerImage {
  const _$DockerImageImpl(
      {required this.id, required this.name, required this.tag});

  @override
  final String id;
  @override
  final String name;
  @override
  final String tag;

  @override
  String toString() {
    return 'DockerImage(id: $id, name: $name, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerImageImplCopyWith<_$DockerImageImpl> get copyWith =>
      __$$DockerImageImplCopyWithImpl<_$DockerImageImpl>(this, _$identity);
}

abstract class _DockerImage implements DockerImage {
  const factory _DockerImage(
      {required final String id,
      required final String name,
      required final String tag}) = _$DockerImageImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$$DockerImageImplCopyWith<_$DockerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
