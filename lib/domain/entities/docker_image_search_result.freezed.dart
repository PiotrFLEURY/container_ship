// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docker_image_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DockerImageSearchResult {
  String get description => throw _privateConstructorUsedError;
  bool get isOfficial => throw _privateConstructorUsedError;
  bool get isAutomated => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get starCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DockerImageSearchResultCopyWith<DockerImageSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerImageSearchResultCopyWith<$Res> {
  factory $DockerImageSearchResultCopyWith(DockerImageSearchResult value,
          $Res Function(DockerImageSearchResult) then) =
      _$DockerImageSearchResultCopyWithImpl<$Res, DockerImageSearchResult>;
  @useResult
  $Res call(
      {String description,
      bool isOfficial,
      bool isAutomated,
      String name,
      int starCount});
}

/// @nodoc
class _$DockerImageSearchResultCopyWithImpl<$Res,
        $Val extends DockerImageSearchResult>
    implements $DockerImageSearchResultCopyWith<$Res> {
  _$DockerImageSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isOfficial = null,
    Object? isAutomated = null,
    Object? name = null,
    Object? starCount = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isOfficial: null == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutomated: null == isAutomated
          ? _value.isAutomated
          : isAutomated // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockerImageSearchResultImplCopyWith<$Res>
    implements $DockerImageSearchResultCopyWith<$Res> {
  factory _$$DockerImageSearchResultImplCopyWith(
          _$DockerImageSearchResultImpl value,
          $Res Function(_$DockerImageSearchResultImpl) then) =
      __$$DockerImageSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      bool isOfficial,
      bool isAutomated,
      String name,
      int starCount});
}

/// @nodoc
class __$$DockerImageSearchResultImplCopyWithImpl<$Res>
    extends _$DockerImageSearchResultCopyWithImpl<$Res,
        _$DockerImageSearchResultImpl>
    implements _$$DockerImageSearchResultImplCopyWith<$Res> {
  __$$DockerImageSearchResultImplCopyWithImpl(
      _$DockerImageSearchResultImpl _value,
      $Res Function(_$DockerImageSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? isOfficial = null,
    Object? isAutomated = null,
    Object? name = null,
    Object? starCount = null,
  }) {
    return _then(_$DockerImageSearchResultImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isOfficial: null == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutomated: null == isAutomated
          ? _value.isAutomated
          : isAutomated // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DockerImageSearchResultImpl implements _DockerImageSearchResult {
  const _$DockerImageSearchResultImpl(
      {required this.description,
      required this.isOfficial,
      required this.isAutomated,
      required this.name,
      required this.starCount});

  @override
  final String description;
  @override
  final bool isOfficial;
  @override
  final bool isAutomated;
  @override
  final String name;
  @override
  final int starCount;

  @override
  String toString() {
    return 'DockerImageSearchResult(description: $description, isOfficial: $isOfficial, isAutomated: $isAutomated, name: $name, starCount: $starCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerImageSearchResultImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isOfficial, isOfficial) ||
                other.isOfficial == isOfficial) &&
            (identical(other.isAutomated, isAutomated) ||
                other.isAutomated == isAutomated) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.starCount, starCount) ||
                other.starCount == starCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, description, isOfficial, isAutomated, name, starCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerImageSearchResultImplCopyWith<_$DockerImageSearchResultImpl>
      get copyWith => __$$DockerImageSearchResultImplCopyWithImpl<
          _$DockerImageSearchResultImpl>(this, _$identity);
}

abstract class _DockerImageSearchResult implements DockerImageSearchResult {
  const factory _DockerImageSearchResult(
      {required final String description,
      required final bool isOfficial,
      required final bool isAutomated,
      required final String name,
      required final int starCount}) = _$DockerImageSearchResultImpl;

  @override
  String get description;
  @override
  bool get isOfficial;
  @override
  bool get isAutomated;
  @override
  String get name;
  @override
  int get starCount;
  @override
  @JsonKey(ignore: true)
  _$$DockerImageSearchResultImplCopyWith<_$DockerImageSearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
