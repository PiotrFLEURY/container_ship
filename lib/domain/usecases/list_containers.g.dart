// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_containers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listContainersHash() => r'37e01d144f93ae78db00f0e9547811f22f3c4f78';

/// See also [listContainers].
@ProviderFor(listContainers)
final listContainersProvider = AutoDisposeFutureProvider<
    (List<DockerContainer> running, List<DockerContainer> stopped)>.internal(
  listContainers,
  name: r'listContainersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listContainersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ListContainersRef = AutoDisposeFutureProviderRef<
    (List<DockerContainer> running, List<DockerContainer> stopped)>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
