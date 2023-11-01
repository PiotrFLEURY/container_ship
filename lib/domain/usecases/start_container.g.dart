// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_container.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$startContainerHash() => r'4e000fe6cbebc0eaf9c544da35babe53e5e47b84';

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

/// See also [startContainer].
@ProviderFor(startContainer)
const startContainerProvider = StartContainerFamily();

/// See also [startContainer].
class StartContainerFamily extends Family<AsyncValue<void>> {
  /// See also [startContainer].
  const StartContainerFamily();

  /// See also [startContainer].
  StartContainerProvider call(
    String id,
  ) {
    return StartContainerProvider(
      id,
    );
  }

  @override
  StartContainerProvider getProviderOverride(
    covariant StartContainerProvider provider,
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
  String? get name => r'startContainerProvider';
}

/// See also [startContainer].
class StartContainerProvider extends AutoDisposeFutureProvider<void> {
  /// See also [startContainer].
  StartContainerProvider(
    String id,
  ) : this._internal(
          (ref) => startContainer(
            ref as StartContainerRef,
            id,
          ),
          from: startContainerProvider,
          name: r'startContainerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$startContainerHash,
          dependencies: StartContainerFamily._dependencies,
          allTransitiveDependencies:
              StartContainerFamily._allTransitiveDependencies,
          id: id,
        );

  StartContainerProvider._internal(
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
    FutureOr<void> Function(StartContainerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StartContainerProvider._internal(
        (ref) => create(ref as StartContainerRef),
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
    return _StartContainerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StartContainerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StartContainerRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `id` of this provider.
  String get id;
}

class _StartContainerProviderElement
    extends AutoDisposeFutureProviderElement<void> with StartContainerRef {
  _StartContainerProviderElement(super.provider);

  @override
  String get id => (origin as StartContainerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
