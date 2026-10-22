// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCollections extends OgcCollections {
  @override
  final BuiltList<OgcLink> links;
  @override
  final BuiltList<OgcCollection200Response> collections;

  factory _$OgcCollections([void Function(OgcCollectionsBuilder)? updates]) =>
      (OgcCollectionsBuilder()..update(updates))._build();

  _$OgcCollections._({required this.links, required this.collections})
    : super._();
  @override
  OgcCollections rebuild(void Function(OgcCollectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCollectionsBuilder toBuilder() => OgcCollectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollections &&
        links == other.links &&
        collections == other.collections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, collections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCollections')
          ..add('links', links)
          ..add('collections', collections))
        .toString();
  }
}

class OgcCollectionsBuilder
    implements Builder<OgcCollections, OgcCollectionsBuilder> {
  _$OgcCollections? _$v;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  ListBuilder<OgcCollection200Response>? _collections;
  ListBuilder<OgcCollection200Response> get collections =>
      _$this._collections ??= ListBuilder<OgcCollection200Response>();
  set collections(ListBuilder<OgcCollection200Response>? collections) =>
      _$this._collections = collections;

  OgcCollectionsBuilder() {
    OgcCollections._defaults(this);
  }

  OgcCollectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _links = $v.links.toBuilder();
      _collections = $v.collections.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollections other) {
    _$v = other as _$OgcCollections;
  }

  @override
  void update(void Function(OgcCollectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollections build() => _build();

  _$OgcCollections _build() {
    _$OgcCollections _$result;
    try {
      _$result =
          _$v ??
          _$OgcCollections._(
            links: links.build(),
            collections: collections.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
        _$failedField = 'collections';
        collections.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OgcCollections',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
