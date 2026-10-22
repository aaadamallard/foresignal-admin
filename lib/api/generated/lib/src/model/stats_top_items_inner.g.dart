// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_top_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatsTopItemsInner extends StatsTopItemsInner {
  @override
  final String key;
  @override
  final String? sourceId;
  @override
  final String? kind;
  @override
  final String? cell;
  @override
  final String? externalId;
  @override
  final String? title;
  @override
  final int count;

  factory _$StatsTopItemsInner([
    void Function(StatsTopItemsInnerBuilder)? updates,
  ]) => (StatsTopItemsInnerBuilder()..update(updates))._build();

  _$StatsTopItemsInner._({
    required this.key,
    this.sourceId,
    this.kind,
    this.cell,
    this.externalId,
    this.title,
    required this.count,
  }) : super._();
  @override
  StatsTopItemsInner rebuild(
    void Function(StatsTopItemsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StatsTopItemsInnerBuilder toBuilder() =>
      StatsTopItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsTopItemsInner &&
        key == other.key &&
        sourceId == other.sourceId &&
        kind == other.kind &&
        cell == other.cell &&
        externalId == other.externalId &&
        title == other.title &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cell.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsTopItemsInner')
          ..add('key', key)
          ..add('sourceId', sourceId)
          ..add('kind', kind)
          ..add('cell', cell)
          ..add('externalId', externalId)
          ..add('title', title)
          ..add('count', count))
        .toString();
  }
}

class StatsTopItemsInnerBuilder
    implements Builder<StatsTopItemsInner, StatsTopItemsInnerBuilder> {
  _$StatsTopItemsInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _cell;
  String? get cell => _$this._cell;
  set cell(String? cell) => _$this._cell = cell;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  StatsTopItemsInnerBuilder() {
    StatsTopItemsInner._defaults(this);
  }

  StatsTopItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _sourceId = $v.sourceId;
      _kind = $v.kind;
      _cell = $v.cell;
      _externalId = $v.externalId;
      _title = $v.title;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsTopItemsInner other) {
    _$v = other as _$StatsTopItemsInner;
  }

  @override
  void update(void Function(StatsTopItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsTopItemsInner build() => _build();

  _$StatsTopItemsInner _build() {
    final _$result =
        _$v ??
        _$StatsTopItemsInner._(
          key: BuiltValueNullFieldError.checkNotNull(
            key,
            r'StatsTopItemsInner',
            'key',
          ),
          sourceId: sourceId,
          kind: kind,
          cell: cell,
          externalId: externalId,
          title: title,
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'StatsTopItemsInner',
            'count',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
