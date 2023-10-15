// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_image_search_result.freezed.dart';
part 'docker_image_search_result.g.dart';

@freezed
class DockerImageSearchResult with _$DockerImageSearchResult {
  const factory DockerImageSearchResult({
    @Default('') String description,
    @JsonKey(name: 'is_official') @Default(false) bool isOfficial,
    @JsonKey(name: 'is_automated') @Default(false) bool isAutomated,
    @Default('') String name,
    @JsonKey(name: 'star_count') @Default(0) int starCount,
  }) = _DockerImageSearchResult;

  factory DockerImageSearchResult.fromJson(Map<String, dynamic> json) =>
      _$DockerImageSearchResultFromJson(json);
}
