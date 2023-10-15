import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_image_search_result.freezed.dart';

@freezed
class DockerImageSearchResult with _$DockerImageSearchResult {
  const factory DockerImageSearchResult({
    required String description,
    required bool isOfficial,
    required bool isAutomated,
    required String name,
    required int starCount,
  }) = _DockerImageSearchResult;
}
