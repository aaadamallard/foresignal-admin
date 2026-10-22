// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_snapshot_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederationSnapshotPage extends FederationSnapshotPage {
  @override
  final BuiltList<FederationItem> items;
  @override
  final int atSeq;
  @override
  final String? nextCursor;

  factory _$FederationSnapshotPage(
          [void Function(FederationSnapshotPageBuilder)? updates]) =>
      (FederationSnapshotPageBuilder()..update(updates))._build();

  _$FederationSnapshotPage._(
      {required this.items, required this.atSeq, this.nextCursor})
      : super._();
  @override
  FederationSnapshotPage rebuild(
          void Function(FederationSnapshotPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederationSnapshotPageBuilder toBuilder() =>
      FederationSnapshotPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationSnapshotPage &&
        items == other.items &&
        atSeq == other.atSeq &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, atSeq.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationSnapshotPage')
          ..add('items', items)
          ..add('atSeq', atSeq)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class FederationSnapshotPageBuilder
    implements Builder<FederationSnapshotPage, FederationSnapshotPageBuilder> {
  _$FederationSnapshotPage? _$v;

  ListBuilder<FederationItem>? _items;
  ListBuilder<FederationItem> get items =>
      _$this._items ??= ListBuilder<FederationItem>();
  set items(ListBuilder<FederationItem>? items) => _$this._items = items;

  int? _atSeq;
  int? get atSeq => _$this._atSeq;
  set atSeq(int? atSeq) => _$this._atSeq = atSeq;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  FederationSnapshotPageBuilder() {
    FederationSnapshotPage._defaults(this);
  }

  FederationSnapshotPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _atSeq = $v.atSeq;
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationSnapshotPage other) {
    _$v = other as _$FederationSnapshotPage;
  }

  @override
  void update(void Function(FederationSnapshotPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationSnapshotPage build() => _build();

  _$FederationSnapshotPage _build() {
    _$FederationSnapshotPage _$result;
    try {
      _$result = _$v ??
          _$FederationSnapshotPage._(
            items: items.build(),
            atSeq: BuiltValueNullFieldError.checkNotNull(
                atSeq, r'FederationSnapshotPage', 'atSeq'),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FederationSnapshotPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
