// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_container_creation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockerContainerCreationRequestImpl
    _$$DockerContainerCreationRequestImplFromJson(Map<String, dynamic> json) =>
        _$DockerContainerCreationRequestImpl(
          image: json['image'] as String,
          environment:
              (json['Env'] as List<dynamic>?)?.map((e) => e as String).toList(),
          ports: json['ExposedPorts'] as Map<String, dynamic>?,
          volumes: json['Volumes'] as Map<String, dynamic>?,
          tty: json['Tty'] as bool? ?? true,
          openStdin: json['OpenStdin'] as bool? ?? true,
          hostConfig: json['HostConfig'] == null
              ? null
              : DockerHostingConfig.fromJson(
                  json['HostConfig'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$DockerContainerCreationRequestImplToJson(
        _$DockerContainerCreationRequestImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'Env': instance.environment,
      'ExposedPorts': instance.ports,
      'Volumes': instance.volumes,
      'Tty': instance.tty,
      'OpenStdin': instance.openStdin,
      'HostConfig': instance.hostConfig,
    };

_$DockerHostingConfigImpl _$$DockerHostingConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$DockerHostingConfigImpl(
      portBindings: (json['PortBindings'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) =>
                    DockerPortBinding.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$DockerHostingConfigImplToJson(
        _$DockerHostingConfigImpl instance) =>
    <String, dynamic>{
      'PortBindings': instance.portBindings,
    };

_$DockerPortBindingImpl _$$DockerPortBindingImplFromJson(
        Map<String, dynamic> json) =>
    _$DockerPortBindingImpl(
      hostPort: json['HostPort'] as String?,
    );

Map<String, dynamic> _$$DockerPortBindingImplToJson(
        _$DockerPortBindingImpl instance) =>
    <String, dynamic>{
      'HostPort': instance.hostPort,
    };
