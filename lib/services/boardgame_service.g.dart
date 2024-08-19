// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boardgame_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchBoardgameDataHash() =>
    r'd88b990a5e580dd326fed226405f2933d554da4a';

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

/// See also [fetchBoardgameData].
@ProviderFor(fetchBoardgameData)
const fetchBoardgameDataProvider = FetchBoardgameDataFamily();

/// See also [fetchBoardgameData].
class FetchBoardgameDataFamily extends Family<AsyncValue<BoardGame>> {
  /// See also [fetchBoardgameData].
  const FetchBoardgameDataFamily();

  /// See also [fetchBoardgameData].
  FetchBoardgameDataProvider call(
    String objectId,
  ) {
    return FetchBoardgameDataProvider(
      objectId,
    );
  }

  @override
  FetchBoardgameDataProvider getProviderOverride(
    covariant FetchBoardgameDataProvider provider,
  ) {
    return call(
      provider.objectId,
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
  String? get name => r'fetchBoardgameDataProvider';
}

/// See also [fetchBoardgameData].
class FetchBoardgameDataProvider extends AutoDisposeFutureProvider<BoardGame> {
  /// See also [fetchBoardgameData].
  FetchBoardgameDataProvider(
    String objectId,
  ) : this._internal(
          (ref) => fetchBoardgameData(
            ref as FetchBoardgameDataRef,
            objectId,
          ),
          from: fetchBoardgameDataProvider,
          name: r'fetchBoardgameDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchBoardgameDataHash,
          dependencies: FetchBoardgameDataFamily._dependencies,
          allTransitiveDependencies:
              FetchBoardgameDataFamily._allTransitiveDependencies,
          objectId: objectId,
        );

  FetchBoardgameDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.objectId,
  }) : super.internal();

  final String objectId;

  @override
  Override overrideWith(
    FutureOr<BoardGame> Function(FetchBoardgameDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchBoardgameDataProvider._internal(
        (ref) => create(ref as FetchBoardgameDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        objectId: objectId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<BoardGame> createElement() {
    return _FetchBoardgameDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBoardgameDataProvider && other.objectId == objectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, objectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchBoardgameDataRef on AutoDisposeFutureProviderRef<BoardGame> {
  /// The parameter `objectId` of this provider.
  String get objectId;
}

class _FetchBoardgameDataProviderElement
    extends AutoDisposeFutureProviderElement<BoardGame>
    with FetchBoardgameDataRef {
  _FetchBoardgameDataProviderElement(super.provider);

  @override
  String get objectId => (origin as FetchBoardgameDataProvider).objectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
