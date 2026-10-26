// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionSet extends CollectionSet {
  @override
  final BuiltList<CollectionSource> sources;

  factory _$CollectionSet([void Function(CollectionSetBuilder)? updates]) =>
      (CollectionSetBuilder()..update(updates))._build();

  _$CollectionSet._({required this.sources}) : super._();
  @override
  CollectionSet rebuild(void Function(CollectionSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionSetBuilder toBuilder() => CollectionSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionSet && sources == other.sources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CollectionSet',
    )..add('sources', sources)).toString();
  }
}

class CollectionSetBuilder
    implements Builder<CollectionSet, CollectionSetBuilder> {
  _$CollectionSet? _$v;

  ListBuilder<CollectionSource>? _sources;
  ListBuilder<CollectionSource> get sources =>
      _$this._sources ??= ListBuilder<CollectionSource>();
  set sources(ListBuilder<CollectionSource>? sources) =>
      _$this._sources = sources;

  CollectionSetBuilder() {
    CollectionSet._defaults(this);
  }

  CollectionSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionSet other) {
    _$v = other as _$CollectionSet;
  }

  @override
  void update(void Function(CollectionSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionSet build() => _build();

  _$CollectionSet _build() {
    _$CollectionSet _$result;
    try {
      _$result = _$v ?? _$CollectionSet._(sources: sources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CollectionSet',
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
