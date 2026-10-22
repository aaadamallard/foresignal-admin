// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxii_collections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaxiiCollections extends TaxiiCollections {
  @override
  final BuiltList<TaxiiCollection>? collections;

  factory _$TaxiiCollections([
    void Function(TaxiiCollectionsBuilder)? updates,
  ]) => (TaxiiCollectionsBuilder()..update(updates))._build();

  _$TaxiiCollections._({this.collections}) : super._();
  @override
  TaxiiCollections rebuild(void Function(TaxiiCollectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxiiCollectionsBuilder toBuilder() =>
      TaxiiCollectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxiiCollections && collections == other.collections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TaxiiCollections',
    )..add('collections', collections)).toString();
  }
}

class TaxiiCollectionsBuilder
    implements Builder<TaxiiCollections, TaxiiCollectionsBuilder> {
  _$TaxiiCollections? _$v;

  ListBuilder<TaxiiCollection>? _collections;
  ListBuilder<TaxiiCollection> get collections =>
      _$this._collections ??= ListBuilder<TaxiiCollection>();
  set collections(ListBuilder<TaxiiCollection>? collections) =>
      _$this._collections = collections;

  TaxiiCollectionsBuilder() {
    TaxiiCollections._defaults(this);
  }

  TaxiiCollectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collections = $v.collections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxiiCollections other) {
    _$v = other as _$TaxiiCollections;
  }

  @override
  void update(void Function(TaxiiCollectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxiiCollections build() => _build();

  _$TaxiiCollections _build() {
    _$TaxiiCollections _$result;
    try {
      _$result =
          _$v ?? _$TaxiiCollections._(collections: _collections?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'collections';
        _collections?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TaxiiCollections',
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
