// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockerContainerImpl _$$DockerContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$DockerContainerImpl(
      id: json['Id'] as String,
      image: json['Image'] as String,
      state: json['State'] as String,
    );

Map<String, dynamic> _$$DockerContainerImplToJson(
        _$DockerContainerImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Image': instance.image,
      'State': instance.state,
    };
