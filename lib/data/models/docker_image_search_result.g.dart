// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docker_image_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockerImageSearchResultImpl _$$DockerImageSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$DockerImageSearchResultImpl(
      description: json['description'] as String? ?? '',
      isOfficial: json['is_official'] as bool? ?? false,
      isAutomated: json['is_automated'] as bool? ?? false,
      name: json['name'] as String? ?? '',
      starCount: json['star_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$DockerImageSearchResultImplToJson(
        _$DockerImageSearchResultImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_official': instance.isOfficial,
      'is_automated': instance.isAutomated,
      'name': instance.name,
      'star_count': instance.starCount,
    };
