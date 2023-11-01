// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_image.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pullImageHash() => r'235b8134d8e05d755ef26bb6b5d18ca0b6922106';

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

/// See also [pullImage].
@ProviderFor(pullImage)
const pullImageProvider = PullImageFamily();

/// See also [pullImage].
class PullImageFamily extends Family<void> {
  /// See also [pullImage].
  const PullImageFamily();

  /// See also [pullImage].
  PullImageProvider call(
    String imageName,
  ) {
    return PullImageProvider(
      imageName,
    );
  }

  @override
  PullImageProvider getProviderOverride(
    covariant PullImageProvider provider,
  ) {
    return call(
      provider.imageName,
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
  String? get name => r'pullImageProvider';
}

/// See also [pullImage].
class PullImageProvider extends AutoDisposeProvider<void> {
  /// See also [pullImage].
  PullImageProvider(
    String imageName,
  ) : this._internal(
          (ref) => pullImage(
            ref as PullImageRef,
            imageName,
          ),
          from: pullImageProvider,
          name: r'pullImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pullImageHash,
          dependencies: PullImageFamily._dependencies,
          allTransitiveDependencies: PullImageFamily._allTransitiveDependencies,
          imageName: imageName,
        );

  PullImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageName,
  }) : super.internal();

  final String imageName;

  @override
  Override overrideWith(
    void Function(PullImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PullImageProvider._internal(
        (ref) => create(ref as PullImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageName: imageName,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _PullImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PullImageProvider && other.imageName == imageName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PullImageRef on AutoDisposeProviderRef<void> {
  /// The parameter `imageName` of this provider.
  String get imageName;
}

class _PullImageProviderElement extends AutoDisposeProviderElement<void>
    with PullImageRef {
  _PullImageProviderElement(super.provider);

  @override
  String get imageName => (origin as PullImageProvider).imageName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
