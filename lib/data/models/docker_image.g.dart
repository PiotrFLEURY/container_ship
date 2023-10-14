// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockerImageImpl _$$DockerImageImplFromJson(Map<String, dynamic> json) =>
    _$DockerImageImpl(
      id: json['Id'] as String?,
      repoTags: (json['RepoTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$DockerImageImplToJson(_$DockerImageImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'RepoTags': instance.repoTags,
    };
