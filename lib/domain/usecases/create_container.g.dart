// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_container.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createContainerHash() => r'62249e419a8704d8131dc79f4ee0eec07d486da0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createContainer].
@ProviderFor(createContainer)
const createContainerProvider = CreateContainerFamily();

/// See also [createContainer].
class CreateContainerFamily extends Family<AsyncValue<void>> {
  /// See also [createContainer].
  const CreateContainerFamily();

  /// See also [createContainer].
  CreateContainerProvider call({
    required String containerName,
    required String image,
    String? volume,
    List<int>? ports,
    Map<String, String>? environment,
  }) {
    return CreateContainerProvider(
      containerName: containerName,
      image: image,
      volume: volume,
      ports: ports,
      environment: environment,
    );
  }

  @override
  CreateContainerProvider getProviderOverride(
    covariant CreateContainerProvider provider,
  ) {
    return call(
      containerName: provider.containerName,
      image: provider.image,
      volume: provider.volume,
      ports: provider.ports,
      environment: provider.environment,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createContainerProvider';
}

/// See also [createContainer].
class CreateContainerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createContainer].
  CreateContainerProvider({
    required String containerName,
    required String image,
    String? volume,
    List<int>? ports,
    Map<String, String>? environment,
  }) : this._internal(
          (ref) => createContainer(
            ref as CreateContainerRef,
            containerName: containerName,
            image: image,
            volume: volume,
            ports: ports,
            environment: environment,
          ),
          from: createContainerProvider,
          name: r'createContainerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createContainerHash,
          dependencies: CreateContainerFamily._dependencies,
          allTransitiveDependencies:
              CreateContainerFamily._allTransitiveDependencies,
          containerName: containerName,
          image: image,
          volume: volume,
          ports: ports,
          environment: environment,
        );

  CreateContainerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.containerName,
    required this.image,
    required this.volume,
    required this.ports,
    required this.environment,
  }) : super.internal();

  final String containerName;
  final String image;
  final String? volume;
  final List<int>? ports;
  final Map<String, String>? environment;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateContainerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateContainerProvider._internal(
        (ref) => create(ref as CreateContainerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        containerName: containerName,
        image: image,
        volume: volume,
        ports: ports,
        environment: environment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateContainerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateContainerProvider &&
        other.containerName == containerName &&
        other.image == image &&
        other.volume == volume &&
        other.ports == ports &&
        other.environment == environment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, containerName.hashCode);
    hash = _SystemHash.combine(hash, image.hashCode);
    hash = _SystemHash.combine(hash, volume.hashCode);
    hash = _SystemHash.combine(hash, ports.hashCode);
    hash = _SystemHash.combine(hash, environment.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateContainerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `containerName` of this provider.
  String get containerName;

  /// The parameter `image` of this provider.
  String get image;

  /// The parameter `volume` of this provider.
  String? get volume;

  /// The parameter `ports` of this provider.
  List<int>? get ports;

  /// The parameter `environment` of this provider.
  Map<String, String>? get environment;
}

class _CreateContainerProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateContainerRef {
  _CreateContainerProviderElement(super.provider);

  @override
  String get containerName => (origin as CreateContainerProvider).containerName;
  @override
  String get image => (origin as CreateContainerProvider).image;
  @override
  String? get volume => (origin as CreateContainerProvider).volume;
  @override
  List<int>? get ports => (origin as CreateContainerProvider).ports;
  @override
  Map<String, String>? get environment =>
      (origin as CreateContainerProvider).environment;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
