import 'package:container_ship/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_container.freezed.dart';

@freezed
class DockerContainer with _$DockerContainer {
  const factory DockerContainer({
    required String id,
    required String image,
    required String state,
    DockerContainerStats? stats,
  }) = _DockerContainer;
}
