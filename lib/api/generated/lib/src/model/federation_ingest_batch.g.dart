// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_ingest_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederationIngestBatch extends FederationIngestBatch {
  @override
  final BuiltList<FederationItem> items;

  factory _$FederationIngestBatch([
    void Function(FederationIngestBatchBuilder)? updates,
  ]) => (FederationIngestBatchBuilder()..update(updates))._build();

  _$FederationIngestBatch._({required this.items}) : super._();
  @override
  FederationIngestBatch rebuild(
    void Function(FederationIngestBatchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FederationIngestBatchBuilder toBuilder() =>
      FederationIngestBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationIngestBatch && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FederationIngestBatch',
    )..add('items', items)).toString();
  }
}

class FederationIngestBatchBuilder
    implements Builder<FederationIngestBatch, FederationIngestBatchBuilder> {
  _$FederationIngestBatch? _$v;

  ListBuilder<FederationItem>? _items;
  ListBuilder<FederationItem> get items =>
      _$this._items ??= ListBuilder<FederationItem>();
  set items(ListBuilder<FederationItem>? items) => _$this._items = items;

  FederationIngestBatchBuilder() {
    FederationIngestBatch._defaults(this);
  }

  FederationIngestBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationIngestBatch other) {
    _$v = other as _$FederationIngestBatch;
  }

  @override
  void update(void Function(FederationIngestBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationIngestBatch build() => _build();

  _$FederationIngestBatch _build() {
    _$FederationIngestBatch _$result;
    try {
      _$result = _$v ?? _$FederationIngestBatch._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FederationIngestBatch',
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
