// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'docker_container_creation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DockerContainerCreationRequest _$DockerContainerCreationRequestFromJson(
    Map<String, dynamic> json) {
  return _DockerContainerCreationRequest.fromJson(json);
}

/// @nodoc
mixin _$DockerContainerCreationRequest {
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'Env')
  List<String>? get environment => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExposedPorts')
  Map<String, dynamic>? get ports => throw _privateConstructorUsedError;
  @JsonKey(name: 'Volumes')
  Map<String, dynamic>? get volumes => throw _privateConstructorUsedError;
  @JsonKey(name: 'Tty')
  bool get tty => throw _privateConstructorUsedError;
  @JsonKey(name: 'OpenStdin')
  bool get openStdin => throw _privateConstructorUsedError;
  @JsonKey(name: 'HostConfig')
  DockerHostingConfig? get hostConfig => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DockerContainerCreationRequestCopyWith<DockerContainerCreationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerContainerCreationRequestCopyWith<$Res> {
  factory $DockerContainerCreationRequestCopyWith(
          DockerContainerCreationRequest value,
          $Res Function(DockerContainerCreationRequest) then) =
      _$DockerContainerCreationRequestCopyWithImpl<$Res,
          DockerContainerCreationRequest>;
  @useResult
  $Res call(
      {String image,
      @JsonKey(name: 'Env') List<String>? environment,
      @JsonKey(name: 'ExposedPorts') Map<String, dynamic>? ports,
      @JsonKey(name: 'Volumes') Map<String, dynamic>? volumes,
      @JsonKey(name: 'Tty') bool tty,
      @JsonKey(name: 'OpenStdin') bool openStdin,
      @JsonKey(name: 'HostConfig') DockerHostingConfig? hostConfig});

  $DockerHostingConfigCopyWith<$Res>? get hostConfig;
}

/// @nodoc
class _$DockerContainerCreationRequestCopyWithImpl<$Res,
        $Val extends DockerContainerCreationRequest>
    implements $DockerContainerCreationRequestCopyWith<$Res> {
  _$DockerContainerCreationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? environment = freezed,
    Object? ports = freezed,
    Object? volumes = freezed,
    Object? tty = null,
    Object? openStdin = null,
    Object? hostConfig = freezed,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ports: freezed == ports
          ? _value.ports
          : ports // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      volumes: freezed == volumes
          ? _value.volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tty: null == tty
          ? _value.tty
          : tty // ignore: cast_nullable_to_non_nullable
              as bool,
      openStdin: null == openStdin
          ? _value.openStdin
          : openStdin // ignore: cast_nullable_to_non_nullable
              as bool,
      hostConfig: freezed == hostConfig
          ? _value.hostConfig
          : hostConfig // ignore: cast_nullable_to_non_nullable
              as DockerHostingConfig?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DockerHostingConfigCopyWith<$Res>? get hostConfig {
    if (_value.hostConfig == null) {
      return null;
    }

    return $DockerHostingConfigCopyWith<$Res>(_value.hostConfig!, (value) {
      return _then(_value.copyWith(hostConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DockerContainerCreationRequestImplCopyWith<$Res>
    implements $DockerContainerCreationRequestCopyWith<$Res> {
  factory _$$DockerContainerCreationRequestImplCopyWith(
          _$DockerContainerCreationRequestImpl value,
          $Res Function(_$DockerContainerCreationRequestImpl) then) =
      __$$DockerContainerCreationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image,
      @JsonKey(name: 'Env') List<String>? environment,
      @JsonKey(name: 'ExposedPorts') Map<String, dynamic>? ports,
      @JsonKey(name: 'Volumes') Map<String, dynamic>? volumes,
      @JsonKey(name: 'Tty') bool tty,
      @JsonKey(name: 'OpenStdin') bool openStdin,
      @JsonKey(name: 'HostConfig') DockerHostingConfig? hostConfig});

  @override
  $DockerHostingConfigCopyWith<$Res>? get hostConfig;
}

/// @nodoc
class __$$DockerContainerCreationRequestImplCopyWithImpl<$Res>
    extends _$DockerContainerCreationRequestCopyWithImpl<$Res,
        _$DockerContainerCreationRequestImpl>
    implements _$$DockerContainerCreationRequestImplCopyWith<$Res> {
  __$$DockerContainerCreationRequestImplCopyWithImpl(
      _$DockerContainerCreationRequestImpl _value,
      $Res Function(_$DockerContainerCreationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? environment = freezed,
    Object? ports = freezed,
    Object? volumes = freezed,
    Object? tty = null,
    Object? openStdin = null,
    Object? hostConfig = freezed,
  }) {
    return _then(_$DockerContainerCreationRequestImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      environment: freezed == environment
          ? _value._environment
          : environment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ports: freezed == ports
          ? _value._ports
          : ports // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      volumes: freezed == volumes
          ? _value._volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      tty: null == tty
          ? _value.tty
          : tty // ignore: cast_nullable_to_non_nullable
              as bool,
      openStdin: null == openStdin
          ? _value.openStdin
          : openStdin // ignore: cast_nullable_to_non_nullable
              as bool,
      hostConfig: freezed == hostConfig
          ? _value.hostConfig
          : hostConfig // ignore: cast_nullable_to_non_nullable
              as DockerHostingConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockerContainerCreationRequestImpl
    implements _DockerContainerCreationRequest {
  _$DockerContainerCreationRequestImpl(
      {required this.image,
      @JsonKey(name: 'Env') final List<String>? environment,
      @JsonKey(name: 'ExposedPorts') final Map<String, dynamic>? ports,
      @JsonKey(name: 'Volumes') final Map<String, dynamic>? volumes,
      @JsonKey(name: 'Tty') this.tty = true,
      @JsonKey(name: 'OpenStdin') this.openStdin = true,
      @JsonKey(name: 'HostConfig') this.hostConfig})
      : _environment = environment,
        _ports = ports,
        _volumes = volumes;

  factory _$DockerContainerCreationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DockerContainerCreationRequestImplFromJson(json);

  @override
  final String image;
  final List<String>? _environment;
  @override
  @JsonKey(name: 'Env')
  List<String>? get environment {
    final value = _environment;
    if (value == null) return null;
    if (_environment is EqualUnmodifiableListView) return _environment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _ports;
  @override
  @JsonKey(name: 'ExposedPorts')
  Map<String, dynamic>? get ports {
    final value = _ports;
    if (value == null) return null;
    if (_ports is EqualUnmodifiableMapView) return _ports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _volumes;
  @override
  @JsonKey(name: 'Volumes')
  Map<String, dynamic>? get volumes {
    final value = _volumes;
    if (value == null) return null;
    if (_volumes is EqualUnmodifiableMapView) return _volumes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'Tty')
  final bool tty;
  @override
  @JsonKey(name: 'OpenStdin')
  final bool openStdin;
  @override
  @JsonKey(name: 'HostConfig')
  final DockerHostingConfig? hostConfig;

  @override
  String toString() {
    return 'DockerContainerCreationRequest(image: $image, environment: $environment, ports: $ports, volumes: $volumes, tty: $tty, openStdin: $openStdin, hostConfig: $hostConfig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerContainerCreationRequestImpl &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._environment, _environment) &&
            const DeepCollectionEquality().equals(other._ports, _ports) &&
            const DeepCollectionEquality().equals(other._volumes, _volumes) &&
            (identical(other.tty, tty) || other.tty == tty) &&
            (identical(other.openStdin, openStdin) ||
                other.openStdin == openStdin) &&
            (identical(other.hostConfig, hostConfig) ||
                other.hostConfig == hostConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      image,
      const DeepCollectionEquality().hash(_environment),
      const DeepCollectionEquality().hash(_ports),
      const DeepCollectionEquality().hash(_volumes),
      tty,
      openStdin,
      hostConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerContainerCreationRequestImplCopyWith<
          _$DockerContainerCreationRequestImpl>
      get copyWith => __$$DockerContainerCreationRequestImplCopyWithImpl<
          _$DockerContainerCreationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerContainerCreationRequestImplToJson(
      this,
    );
  }
}

abstract class _DockerContainerCreationRequest
    implements DockerContainerCreationRequest {
  factory _DockerContainerCreationRequest(
          {required final String image,
          @JsonKey(name: 'Env') final List<String>? environment,
          @JsonKey(name: 'ExposedPorts') final Map<String, dynamic>? ports,
          @JsonKey(name: 'Volumes') final Map<String, dynamic>? volumes,
          @JsonKey(name: 'Tty') final bool tty,
          @JsonKey(name: 'OpenStdin') final bool openStdin,
          @JsonKey(name: 'HostConfig') final DockerHostingConfig? hostConfig}) =
      _$DockerContainerCreationRequestImpl;

  factory _DockerContainerCreationRequest.fromJson(Map<String, dynamic> json) =
      _$DockerContainerCreationRequestImpl.fromJson;

  @override
  String get image;
  @override
  @JsonKey(name: 'Env')
  List<String>? get environment;
  @override
  @JsonKey(name: 'ExposedPorts')
  Map<String, dynamic>? get ports;
  @override
  @JsonKey(name: 'Volumes')
  Map<String, dynamic>? get volumes;
  @override
  @JsonKey(name: 'Tty')
  bool get tty;
  @override
  @JsonKey(name: 'OpenStdin')
  bool get openStdin;
  @override
  @JsonKey(name: 'HostConfig')
  DockerHostingConfig? get hostConfig;
  @override
  @JsonKey(ignore: true)
  _$$DockerContainerCreationRequestImplCopyWith<
          _$DockerContainerCreationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DockerHostingConfig _$DockerHostingConfigFromJson(Map<String, dynamic> json) {
  return _DockerHostingConfig.fromJson(json);
}

/// @nodoc
mixin _$DockerHostingConfig {
  @JsonKey(name: 'PortBindings')
  Map<String, List<DockerPortBinding>>? get portBindings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DockerHostingConfigCopyWith<DockerHostingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerHostingConfigCopyWith<$Res> {
  factory $DockerHostingConfigCopyWith(
          DockerHostingConfig value, $Res Function(DockerHostingConfig) then) =
      _$DockerHostingConfigCopyWithImpl<$Res, DockerHostingConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PortBindings')
      Map<String, List<DockerPortBinding>>? portBindings});
}

/// @nodoc
class _$DockerHostingConfigCopyWithImpl<$Res, $Val extends DockerHostingConfig>
    implements $DockerHostingConfigCopyWith<$Res> {
  _$DockerHostingConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portBindings = freezed,
  }) {
    return _then(_value.copyWith(
      portBindings: freezed == portBindings
          ? _value.portBindings
          : portBindings // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DockerPortBinding>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockerHostingConfigImplCopyWith<$Res>
    implements $DockerHostingConfigCopyWith<$Res> {
  factory _$$DockerHostingConfigImplCopyWith(_$DockerHostingConfigImpl value,
          $Res Function(_$DockerHostingConfigImpl) then) =
      __$$DockerHostingConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PortBindings')
      Map<String, List<DockerPortBinding>>? portBindings});
}

/// @nodoc
class __$$DockerHostingConfigImplCopyWithImpl<$Res>
    extends _$DockerHostingConfigCopyWithImpl<$Res, _$DockerHostingConfigImpl>
    implements _$$DockerHostingConfigImplCopyWith<$Res> {
  __$$DockerHostingConfigImplCopyWithImpl(_$DockerHostingConfigImpl _value,
      $Res Function(_$DockerHostingConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portBindings = freezed,
  }) {
    return _then(_$DockerHostingConfigImpl(
      portBindings: freezed == portBindings
          ? _value._portBindings
          : portBindings // ignore: cast_nullable_to_non_nullable
              as Map<String, List<DockerPortBinding>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockerHostingConfigImpl implements _DockerHostingConfig {
  _$DockerHostingConfigImpl(
      {@JsonKey(name: 'PortBindings')
      final Map<String, List<DockerPortBinding>>? portBindings})
      : _portBindings = portBindings;

  factory _$DockerHostingConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockerHostingConfigImplFromJson(json);

  final Map<String, List<DockerPortBinding>>? _portBindings;
  @override
  @JsonKey(name: 'PortBindings')
  Map<String, List<DockerPortBinding>>? get portBindings {
    final value = _portBindings;
    if (value == null) return null;
    if (_portBindings is EqualUnmodifiableMapView) return _portBindings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'DockerHostingConfig(portBindings: $portBindings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerHostingConfigImpl &&
            const DeepCollectionEquality()
                .equals(other._portBindings, _portBindings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_portBindings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerHostingConfigImplCopyWith<_$DockerHostingConfigImpl> get copyWith =>
      __$$DockerHostingConfigImplCopyWithImpl<_$DockerHostingConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerHostingConfigImplToJson(
      this,
    );
  }
}

abstract class _DockerHostingConfig implements DockerHostingConfig {
  factory _DockerHostingConfig(
          {@JsonKey(name: 'PortBindings')
          final Map<String, List<DockerPortBinding>>? portBindings}) =
      _$DockerHostingConfigImpl;

  factory _DockerHostingConfig.fromJson(Map<String, dynamic> json) =
      _$DockerHostingConfigImpl.fromJson;

  @override
  @JsonKey(name: 'PortBindings')
  Map<String, List<DockerPortBinding>>? get portBindings;
  @override
  @JsonKey(ignore: true)
  _$$DockerHostingConfigImplCopyWith<_$DockerHostingConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DockerPortBinding _$DockerPortBindingFromJson(Map<String, dynamic> json) {
  return _DockerPortBinding.fromJson(json);
}

/// @nodoc
mixin _$DockerPortBinding {
  @JsonKey(name: 'HostPort')
  String? get hostPort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DockerPortBindingCopyWith<DockerPortBinding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockerPortBindingCopyWith<$Res> {
  factory $DockerPortBindingCopyWith(
          DockerPortBinding value, $Res Function(DockerPortBinding) then) =
      _$DockerPortBindingCopyWithImpl<$Res, DockerPortBinding>;
  @useResult
  $Res call({@JsonKey(name: 'HostPort') String? hostPort});
}

/// @nodoc
class _$DockerPortBindingCopyWithImpl<$Res, $Val extends DockerPortBinding>
    implements $DockerPortBindingCopyWith<$Res> {
  _$DockerPortBindingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostPort = freezed,
  }) {
    return _then(_value.copyWith(
      hostPort: freezed == hostPort
          ? _value.hostPort
          : hostPort // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockerPortBindingImplCopyWith<$Res>
    implements $DockerPortBindingCopyWith<$Res> {
  factory _$$DockerPortBindingImplCopyWith(_$DockerPortBindingImpl value,
          $Res Function(_$DockerPortBindingImpl) then) =
      __$$DockerPortBindingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'HostPort') String? hostPort});
}

/// @nodoc
class __$$DockerPortBindingImplCopyWithImpl<$Res>
    extends _$DockerPortBindingCopyWithImpl<$Res, _$DockerPortBindingImpl>
    implements _$$DockerPortBindingImplCopyWith<$Res> {
  __$$DockerPortBindingImplCopyWithImpl(_$DockerPortBindingImpl _value,
      $Res Function(_$DockerPortBindingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hostPort = freezed,
  }) {
    return _then(_$DockerPortBindingImpl(
      hostPort: freezed == hostPort
          ? _value.hostPort
          : hostPort // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockerPortBindingImpl implements _DockerPortBinding {
  _$DockerPortBindingImpl({@JsonKey(name: 'HostPort') this.hostPort});

  factory _$DockerPortBindingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockerPortBindingImplFromJson(json);

  @override
  @JsonKey(name: 'HostPort')
  final String? hostPort;

  @override
  String toString() {
    return 'DockerPortBinding(hostPort: $hostPort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockerPortBindingImpl &&
            (identical(other.hostPort, hostPort) ||
                other.hostPort == hostPort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hostPort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockerPortBindingImplCopyWith<_$DockerPortBindingImpl> get copyWith =>
      __$$DockerPortBindingImplCopyWithImpl<_$DockerPortBindingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockerPortBindingImplToJson(
      this,
    );
  }
}

abstract class _DockerPortBinding implements DockerPortBinding {
  factory _DockerPortBinding(
          {@JsonKey(name: 'HostPort') final String? hostPort}) =
      _$DockerPortBindingImpl;

  factory _DockerPortBinding.fromJson(Map<String, dynamic> json) =
      _$DockerPortBindingImpl.fromJson;

  @override
  @JsonKey(name: 'HostPort')
  String? get hostPort;
  @override
  @JsonKey(ignore: true)
  _$$DockerPortBindingImplCopyWith<_$DockerPortBindingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
