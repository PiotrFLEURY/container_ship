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

DockerImage _$DockerImageFromJson(Map<String, dynamic> json) {
  return _DockerImage.fromJson(json);
}

/// @nodoc
mixin _$DockerImage {
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'RepoTags')
  List<String>? get repoTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(name: 'Id') String? id,
      @JsonKey(name: 'RepoTags') List<String>? repoTags});
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
    Object? id = freezed,
    Object? repoTags = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repoTags: freezed == repoTags
          ? _value.repoTags
          : repoTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
  $Res call(
      {@JsonKey(name: 'Id') String? id,
      @JsonKey(name: 'RepoTags') List<String>? repoTags});
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
    Object? id = freezed,
    Object? repoTags = freezed,
  }) {
    return _then(_$DockerImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      repoTags: freezed == repoTags
          ? _value._repoTags
          : repoTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockerImageImpl implements _DockerImage {
  const _$DockerImageImpl(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'RepoTags') final List<String>? repoTags})
      : _repoTags = repoTags;

  factory _$DockerImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockerImageImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String? id;
  final List<String>? _repoTags;
  @override
  @JsonKey(name: 'RepoTags')
  List<String>? get repoTags {
    final value = _repoTags;
    if (value == null) return null;
    if (_repoTags is EqualUnmodifiableListView) return _repoTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DockerImage(id: $id, repoTags: $repoTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._repoTags, _repoTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_repoTags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerImageImplCopyWith<_$DockerImageImpl> get copyWith =>
      __$$DockerImageImplCopyWithImpl<_$DockerImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerImageImplToJson(
      this,
    );
  }
}

abstract class _DockerImage implements DockerImage {
  const factory _DockerImage(
          {@JsonKey(name: 'Id') final String? id,
          @JsonKey(name: 'RepoTags') final List<String>? repoTags}) =
      _$DockerImageImpl;

  factory _DockerImage.fromJson(Map<String, dynamic> json) =
      _$DockerImageImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'RepoTags')
  List<String>? get repoTags;
  @override
  @JsonKey(ignore: true)
  _$$DockerImageImplCopyWith<_$DockerImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
