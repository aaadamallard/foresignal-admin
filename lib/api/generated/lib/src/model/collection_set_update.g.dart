// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_set_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CollectionSetUpdate extends CollectionSetUpdate {
  @override
  final BuiltList<CollectionSource> sources;

  factory _$CollectionSetUpdate([
    void Function(CollectionSetUpdateBuilder)? updates,
  ]) => (CollectionSetUpdateBuilder()..update(updates))._build();

  _$CollectionSetUpdate._({required this.sources}) : super._();
  @override
  CollectionSetUpdate rebuild(
    void Function(CollectionSetUpdateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CollectionSetUpdateBuilder toBuilder() =>
      CollectionSetUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionSetUpdate && sources == other.sources;
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
      r'CollectionSetUpdate',
    )..add('sources', sources)).toString();
  }
}

class CollectionSetUpdateBuilder
    implements Builder<CollectionSetUpdate, CollectionSetUpdateBuilder> {
  _$CollectionSetUpdate? _$v;

  ListBuilder<CollectionSource>? _sources;
  ListBuilder<CollectionSource> get sources =>
      _$this._sources ??= ListBuilder<CollectionSource>();
  set sources(ListBuilder<CollectionSource>? sources) =>
      _$this._sources = sources;

  CollectionSetUpdateBuilder() {
    CollectionSetUpdate._defaults(this);
  }

  CollectionSetUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionSetUpdate other) {
    _$v = other as _$CollectionSetUpdate;
  }

  @override
  void update(void Function(CollectionSetUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollectionSetUpdate build() => _build();

  _$CollectionSetUpdate _build() {
    _$CollectionSetUpdate _$result;
    try {
      _$result = _$v ?? _$CollectionSetUpdate._(sources: sources.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CollectionSetUpdate',
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
