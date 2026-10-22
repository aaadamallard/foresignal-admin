// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_cluster_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleClusterPage extends ChronicleClusterPage {
  @override
  final BuiltList<ChronicleCluster> items;
  @override
  final String? nextCursor;

  factory _$ChronicleClusterPage([
    void Function(ChronicleClusterPageBuilder)? updates,
  ]) => (ChronicleClusterPageBuilder()..update(updates))._build();

  _$ChronicleClusterPage._({required this.items, this.nextCursor}) : super._();
  @override
  ChronicleClusterPage rebuild(
    void Function(ChronicleClusterPageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleClusterPageBuilder toBuilder() =>
      ChronicleClusterPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleClusterPage &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleClusterPage')
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ChronicleClusterPageBuilder
    implements Builder<ChronicleClusterPage, ChronicleClusterPageBuilder> {
  _$ChronicleClusterPage? _$v;

  ListBuilder<ChronicleCluster>? _items;
  ListBuilder<ChronicleCluster> get items =>
      _$this._items ??= ListBuilder<ChronicleCluster>();
  set items(ListBuilder<ChronicleCluster>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ChronicleClusterPageBuilder() {
    ChronicleClusterPage._defaults(this);
  }

  ChronicleClusterPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleClusterPage other) {
    _$v = other as _$ChronicleClusterPage;
  }

  @override
  void update(void Function(ChronicleClusterPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleClusterPage build() => _build();

  _$ChronicleClusterPage _build() {
    _$ChronicleClusterPage _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleClusterPage._(
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleClusterPage',
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
