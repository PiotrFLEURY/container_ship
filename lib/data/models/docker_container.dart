// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_container.freezed.dart';
part 'docker_container.g.dart';

@freezed
class DockerContainer with _$DockerContainer {
  const factory DockerContainer({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Image') required String image,
    @JsonKey(name: 'State') required String state,
  }) = _DockerContainer;

  factory DockerContainer.fromJson(Map<String, dynamic> json) =>
      _$DockerContainerFromJson(json);
}
