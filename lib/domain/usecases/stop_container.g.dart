// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_container.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stopContainerHash() => r'dae525b7b4637494ed14d1225698da95f95f9728';

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

/// See also [stopContainer].
@ProviderFor(stopContainer)
const stopContainerProvider = StopContainerFamily();

/// See also [stopContainer].
class StopContainerFamily extends Family<AsyncValue<void>> {
  /// See also [stopContainer].
  const StopContainerFamily();

  /// See also [stopContainer].
  StopContainerProvider call(
    String id,
  ) {
    return StopContainerProvider(
      id,
    );
  }

  @override
  StopContainerProvider getProviderOverride(
    covariant StopContainerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'stopContainerProvider';
}

/// See also [stopContainer].
class StopContainerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [stopContainer].
  StopContainerProvider(
    String id,
  ) : this._internal(
          (ref) => stopContainer(
            ref as StopContainerRef,
            id,
          ),
          from: stopContainerProvider,
          name: r'stopContainerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stopContainerHash,
          dependencies: StopContainerFamily._dependencies,
          allTransitiveDependencies:
              StopContainerFamily._allTransitiveDependencies,
          id: id,
        );

  StopContainerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<void> Function(StopContainerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StopContainerProvider._internal(
        (ref) => create(ref as StopContainerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _StopContainerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StopContainerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StopContainerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  String get id;
}

class _StopContainerProviderElement
    extends AutoDisposeFutureProviderElement<void> with StopContainerRef {
  _StopContainerProviderElement(super.provider);

  @override
  String get id => (origin as StopContainerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
