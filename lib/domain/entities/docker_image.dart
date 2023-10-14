import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_image.freezed.dart';

@freezed
class DockerImage with _$DockerImage {
  const factory DockerImage({
    required String id,
    required String name,
    required String tag,
  }) = _DockerImage;
}
