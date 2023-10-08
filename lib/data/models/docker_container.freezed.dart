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

DockerContainer _$DockerContainerFromJson(Map<String, dynamic> json) {
  return _DockerContainer.fromJson(json);
}

/// @nodoc
mixin _$DockerContainer {
  @JsonKey(name: 'Id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'State')
  String get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'Id') String id,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'State') String state});
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
    ) as $Val);
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
      {@JsonKey(name: 'Id') String id,
      @JsonKey(name: 'Image') String image,
      @JsonKey(name: 'State') String state});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockerContainerImpl implements _DockerContainer {
  const _$DockerContainerImpl(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'Image') required this.image,
      @JsonKey(name: 'State') required this.state});

  factory _$DockerContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockerContainerImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String id;
  @override
  @JsonKey(name: 'Image')
  final String image;
  @override
  @JsonKey(name: 'State')
  final String state;

  @override
  String toString() {
    return 'DockerContainer(id: $id, image: $image, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerContainerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerContainerImplCopyWith<_$DockerContainerImpl> get copyWith =>
      __$$DockerContainerImplCopyWithImpl<_$DockerContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerContainerImplToJson(
      this,
    );
  }
}

abstract class _DockerContainer implements DockerContainer {
  const factory _DockerContainer(
          {@JsonKey(name: 'Id') required final String id,
          @JsonKey(name: 'Image') required final String image,
          @JsonKey(name: 'State') required final String state}) =
      _$DockerContainerImpl;

  factory _DockerContainer.fromJson(Map<String, dynamic> json) =
      _$DockerContainerImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  String get id;
  @override
  @JsonKey(name: 'Image')
  String get image;
  @override
  @JsonKey(name: 'State')
  String get state;
  @override
  @JsonKey(ignore: true)
  _$$DockerContainerImplCopyWith<_$DockerContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
