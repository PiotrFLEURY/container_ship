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

DockerImageSearchResult _$DockerImageSearchResultFromJson(
    Map<String, dynamic> json) {
  return _DockerImageSearchResult.fromJson(json);
}

/// @nodoc
mixin _$DockerImageSearchResult {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_official')
  bool get isOfficial => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_automated')
  bool get isAutomated => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'star_count')
  int get starCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'is_official') bool isOfficial,
      @JsonKey(name: 'is_automated') bool isAutomated,
      String name,
      @JsonKey(name: 'star_count') int starCount});
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
      @JsonKey(name: 'is_official') bool isOfficial,
      @JsonKey(name: 'is_automated') bool isAutomated,
      String name,
      @JsonKey(name: 'star_count') int starCount});
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
@JsonSerializable()
class _$DockerImageSearchResultImpl implements _DockerImageSearchResult {
  const _$DockerImageSearchResultImpl(
      {this.description = '',
      @JsonKey(name: 'is_official') this.isOfficial = false,
      @JsonKey(name: 'is_automated') this.isAutomated = false,
      this.name = '',
      @JsonKey(name: 'star_count') this.starCount = 0});

  factory _$DockerImageSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockerImageSearchResultImplFromJson(json);

  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'is_official')
  final bool isOfficial;
  @override
  @JsonKey(name: 'is_automated')
  final bool isAutomated;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey(name: 'star_count')
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, description, isOfficial, isAutomated, name, starCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerImageSearchResultImplCopyWith<_$DockerImageSearchResultImpl>
      get copyWith => __$$DockerImageSearchResultImplCopyWithImpl<
          _$DockerImageSearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerImageSearchResultImplToJson(
      this,
    );
  }
}

abstract class _DockerImageSearchResult implements DockerImageSearchResult {
  const factory _DockerImageSearchResult(
          {final String description,
          @JsonKey(name: 'is_official') final bool isOfficial,
          @JsonKey(name: 'is_automated') final bool isAutomated,
          final String name,
          @JsonKey(name: 'star_count') final int starCount}) =
      _$DockerImageSearchResultImpl;

  factory _DockerImageSearchResult.fromJson(Map<String, dynamic> json) =
      _$DockerImageSearchResultImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'is_official')
  bool get isOfficial;
  @override
  @JsonKey(name: 'is_automated')
  bool get isAutomated;
  @override
  String get name;
  @override
  @JsonKey(name: 'star_count')
  int get starCount;
  @override
  @JsonKey(ignore: true)
  _$$DockerImageSearchResultImplCopyWith<_$DockerImageSearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
