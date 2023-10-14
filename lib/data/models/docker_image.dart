import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_image.freezed.dart';
part 'docker_image.g.dart';

@freezed
class DockerImage with _$DockerImage {
  const factory DockerImage({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'RepoTags') List<String>? repoTags,
  }) = _DockerImage;

  factory DockerImage.fromJson(Map<String, dynamic> json) =>
      _$DockerImageFromJson(json);
}
