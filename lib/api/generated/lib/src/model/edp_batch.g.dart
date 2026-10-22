// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpBatch extends EdpBatch {
  @override
  final String protocol;
  @override
  final String? sourceId;
  @override
  final DateTime? sentAt;
  @override
  final BuiltList<EdpItem> items;
  @override
  final String? nextCursor;
  @override
  final EdpSnapshot? snapshot;

  factory _$EdpBatch([void Function(EdpBatchBuilder)? updates]) =>
      (EdpBatchBuilder()..update(updates))._build();

  _$EdpBatch._({
    required this.protocol,
    this.sourceId,
    this.sentAt,
    required this.items,
    this.nextCursor,
    this.snapshot,
  }) : super._();
  @override
  EdpBatch rebuild(void Function(EdpBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdpBatchBuilder toBuilder() => EdpBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpBatch &&
        protocol == other.protocol &&
        sourceId == other.sourceId &&
        sentAt == other.sentAt &&
        items == other.items &&
        nextCursor == other.nextCursor &&
        snapshot == other.snapshot;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, sentAt.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, snapshot.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpBatch')
          ..add('protocol', protocol)
          ..add('sourceId', sourceId)
          ..add('sentAt', sentAt)
          ..add('items', items)
          ..add('nextCursor', nextCursor)
          ..add('snapshot', snapshot))
        .toString();
  }
}

class EdpBatchBuilder implements Builder<EdpBatch, EdpBatchBuilder> {
  _$EdpBatch? _$v;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DateTime? _sentAt;
  DateTime? get sentAt => _$this._sentAt;
  set sentAt(DateTime? sentAt) => _$this._sentAt = sentAt;

  ListBuilder<EdpItem>? _items;
  ListBuilder<EdpItem> get items => _$this._items ??= ListBuilder<EdpItem>();
  set items(ListBuilder<EdpItem>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  EdpSnapshotBuilder? _snapshot;
  EdpSnapshotBuilder get snapshot => _$this._snapshot ??= EdpSnapshotBuilder();
  set snapshot(EdpSnapshotBuilder? snapshot) => _$this._snapshot = snapshot;

  EdpBatchBuilder() {
    EdpBatch._defaults(this);
  }

  EdpBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _protocol = $v.protocol;
      _sourceId = $v.sourceId;
      _sentAt = $v.sentAt;
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _snapshot = $v.snapshot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpBatch other) {
    _$v = other as _$EdpBatch;
  }

  @override
  void update(void Function(EdpBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpBatch build() => _build();

  _$EdpBatch _build() {
    _$EdpBatch _$result;
    try {
      _$result =
          _$v ??
          _$EdpBatch._(
            protocol: BuiltValueNullFieldError.checkNotNull(
              protocol,
              r'EdpBatch',
              'protocol',
            ),
            sourceId: sourceId,
            sentAt: sentAt,
            items: items.build(),
            nextCursor: nextCursor,
            snapshot: _snapshot?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'snapshot';
        _snapshot?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpBatch',
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
