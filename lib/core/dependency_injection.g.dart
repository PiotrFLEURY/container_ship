// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a6bb799824555d7a9a2e55ddd654ea5b4b01ce51';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$dockerApiHash() => r'31cf55eafa3a69b596f821edcbd8570e3c601b0b';

/// See also [dockerApi].
@ProviderFor(dockerApi)
final dockerApiProvider = AutoDisposeProvider<DockerApi>.internal(
  dockerApi,
  name: r'dockerApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dockerApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DockerApiRef = AutoDisposeProviderRef<DockerApi>;
String _$containerRepositoryHash() =>
    r'40eef7af05564db5abad84b8d70debb1d655341f';

/// See also [containerRepository].
@ProviderFor(containerRepository)
final containerRepositoryProvider =
    AutoDisposeProvider<ContainerRepository>.internal(
  containerRepository,
  name: r'containerRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$containerRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ContainerRepositoryRef = AutoDisposeProviderRef<ContainerRepository>;
String _$imageRepositoryHash() => r'8b898cfca12bf1a6fb73b8e809bdb776d0a6e34a';

/// See also [imageRepository].
@ProviderFor(imageRepository)
final imageRepositoryProvider = AutoDisposeProvider<ImageRepository>.internal(
  imageRepository,
  name: r'imageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$imageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ImageRepositoryRef = AutoDisposeProviderRef<ImageRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
