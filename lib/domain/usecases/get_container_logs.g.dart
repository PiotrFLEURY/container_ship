// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_container_logs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getContainerLogsHash() => r'b0b8c7d5187ff0ef5ee0de5cb1bc3e4d9f18ff09';

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

/// See also [getContainerLogs].
@ProviderFor(getContainerLogs)
const getContainerLogsProvider = GetContainerLogsFamily();

/// See also [getContainerLogs].
class GetContainerLogsFamily extends Family<AsyncValue<String>> {
  /// See also [getContainerLogs].
  const GetContainerLogsFamily();

  /// See also [getContainerLogs].
  GetContainerLogsProvider call(
    String id,
  ) {
    return GetContainerLogsProvider(
      id,
    );
  }

  @override
  GetContainerLogsProvider getProviderOverride(
    covariant GetContainerLogsProvider provider,
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
  String? get name => r'getContainerLogsProvider';
}

/// See also [getContainerLogs].
class GetContainerLogsProvider extends AutoDisposeFutureProvider<String> {
  /// See also [getContainerLogs].
  GetContainerLogsProvider(
    String id,
  ) : this._internal(
          (ref) => getContainerLogs(
            ref as GetContainerLogsRef,
            id,
          ),
          from: getContainerLogsProvider,
          name: r'getContainerLogsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getContainerLogsHash,
          dependencies: GetContainerLogsFamily._dependencies,
          allTransitiveDependencies:
              GetContainerLogsFamily._allTransitiveDependencies,
          id: id,
        );

  GetContainerLogsProvider._internal(
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
    FutureOr<String> Function(GetContainerLogsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetContainerLogsProvider._internal(
        (ref) => create(ref as GetContainerLogsRef),
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
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GetContainerLogsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetContainerLogsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetContainerLogsRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String get id;
}

class _GetContainerLogsProviderElement
    extends AutoDisposeFutureProviderElement<String> with GetContainerLogsRef {
  _GetContainerLogsProviderElement(super.provider);

  @override
  String get id => (origin as GetContainerLogsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
