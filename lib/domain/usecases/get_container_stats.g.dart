// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_container_stats.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getContainerStatsHash() => r'6a3699ca77ec23ee162817f83729ec3e7aa1e5c0';

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

/// See also [getContainerStats].
@ProviderFor(getContainerStats)
const getContainerStatsProvider = GetContainerStatsFamily();

/// See also [getContainerStats].
class GetContainerStatsFamily extends Family<AsyncValue<DockerContainerStats>> {
  /// See also [getContainerStats].
  const GetContainerStatsFamily();

  /// See also [getContainerStats].
  GetContainerStatsProvider call(
    String id,
  ) {
    return GetContainerStatsProvider(
      id,
    );
  }

  @override
  GetContainerStatsProvider getProviderOverride(
    covariant GetContainerStatsProvider provider,
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
  String? get name => r'getContainerStatsProvider';
}

/// See also [getContainerStats].
class GetContainerStatsProvider
    extends AutoDisposeFutureProvider<DockerContainerStats> {
  /// See also [getContainerStats].
  GetContainerStatsProvider(
    String id,
  ) : this._internal(
          (ref) => getContainerStats(
            ref as GetContainerStatsRef,
            id,
          ),
          from: getContainerStatsProvider,
          name: r'getContainerStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getContainerStatsHash,
          dependencies: GetContainerStatsFamily._dependencies,
          allTransitiveDependencies:
              GetContainerStatsFamily._allTransitiveDependencies,
          id: id,
        );

  GetContainerStatsProvider._internal(
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
    FutureOr<DockerContainerStats> Function(GetContainerStatsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetContainerStatsProvider._internal(
        (ref) => create(ref as GetContainerStatsRef),
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
  AutoDisposeFutureProviderElement<DockerContainerStats> createElement() {
    return _GetContainerStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetContainerStatsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetContainerStatsRef
    on AutoDisposeFutureProviderRef<DockerContainerStats> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetContainerStatsProviderElement
    extends AutoDisposeFutureProviderElement<DockerContainerStats>
    with GetContainerStatsRef {
  _GetContainerStatsProviderElement(super.provider);

  @override
  String get id => (origin as GetContainerStatsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
