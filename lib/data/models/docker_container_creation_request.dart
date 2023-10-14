// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'docker_container_creation_request.freezed.dart';
part 'docker_container_creation_request.g.dart';

@freezed
class DockerContainerCreationRequest with _$DockerContainerCreationRequest {
  factory DockerContainerCreationRequest({
    required String image,
    @JsonKey(name: 'Env') List<String>? environment,
    @JsonKey(name: 'ExposedPorts') Map<String, dynamic>? ports,
    @JsonKey(name: 'Volumes') Map<String, dynamic>? volumes,
    @Default(true) @JsonKey(name: 'Tty') bool tty,
    @Default(true) @JsonKey(name: 'OpenStdin') bool openStdin,
    @JsonKey(name: 'HostConfig') DockerHostingConfig? hostConfig,
  }) = _DockerContainerCreationRequest;

  factory DockerContainerCreationRequest.fromJson(Map<String, dynamic> json) =>
      _$DockerContainerCreationRequestFromJson(json);
}

@freezed
class DockerHostingConfig with _$DockerHostingConfig {
  factory DockerHostingConfig({
    @JsonKey(name: 'PortBindings')
    Map<String, List<DockerPortBinding>>? portBindings,
  }) = _DockerHostingConfig;

  factory DockerHostingConfig.fromJson(Map<String, dynamic> json) =>
      _$DockerHostingConfigFromJson(json);
}

@freezed
class DockerPortBinding with _$DockerPortBinding {
  factory DockerPortBinding({
    @JsonKey(name: 'HostPort') String? hostPort,
  }) = _DockerPortBinding;

  factory DockerPortBinding.fromJson(Map<String, dynamic> json) =>
      _$DockerPortBindingFromJson(json);
}
