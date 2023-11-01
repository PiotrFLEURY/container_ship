// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_container.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$removeContainerHash() => r'9d5f0a0d09a9e470d1ba75780f4b7e4c1e66f6ab';

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

/// See also [removeContainer].
@ProviderFor(removeContainer)
const removeContainerProvider = RemoveContainerFamily();

/// See also [removeContainer].
class RemoveContainerFamily extends Family<AsyncValue<void>> {
  /// See also [removeContainer].
  const RemoveContainerFamily();

  /// See also [removeContainer].
  RemoveContainerProvider call(
    String id,
  ) {
    return RemoveContainerProvider(
      id,
    );
  }

  @override
  RemoveContainerProvider getProviderOverride(
    covariant RemoveContainerProvider provider,
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
  String? get name => r'removeContainerProvider';
}

/// See also [removeContainer].
class RemoveContainerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [removeContainer].
  RemoveContainerProvider(
    String id,
  ) : this._internal(
          (ref) => removeContainer(
            ref as RemoveContainerRef,
            id,
          ),
          from: removeContainerProvider,
          name: r'removeContainerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$removeContainerHash,
          dependencies: RemoveContainerFamily._dependencies,
          allTransitiveDependencies:
              RemoveContainerFamily._allTransitiveDependencies,
          id: id,
        );

  RemoveContainerProvider._internal(
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
    FutureOr<void> Function(RemoveContainerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoveContainerProvider._internal(
        (ref) => create(ref as RemoveContainerRef),
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
    return _RemoveContainerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoveContainerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RemoveContainerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  String get id;
}

class _RemoveContainerProviderElement
    extends AutoDisposeFutureProviderElement<void> with RemoveContainerRef {
  _RemoveContainerProviderElement(super.provider);

  @override
  String get id => (origin as RemoveContainerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
