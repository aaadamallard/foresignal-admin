// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketItem extends CyclePacketItem {
  @override
  final String ref;
  @override
  final String title;
  @override
  final String change;
  @override
  final String? severity;
  @override
  final DateTime? at;
  @override
  final JsonObject? detail;
  @override
  final int? rank;

  factory _$CyclePacketItem([void Function(CyclePacketItemBuilder)? updates]) =>
      (CyclePacketItemBuilder()..update(updates))._build();

  _$CyclePacketItem._(
      {required this.ref,
      required this.title,
      required this.change,
      this.severity,
      this.at,
      this.detail,
      this.rank})
      : super._();
  @override
  CyclePacketItem rebuild(void Function(CyclePacketItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CyclePacketItemBuilder toBuilder() => CyclePacketItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketItem &&
        ref == other.ref &&
        title == other.title &&
        change == other.change &&
        severity == other.severity &&
        at == other.at &&
        detail == other.detail &&
        rank == other.rank;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketItem')
          ..add('ref', ref)
          ..add('title', title)
          ..add('change', change)
          ..add('severity', severity)
          ..add('at', at)
          ..add('detail', detail)
          ..add('rank', rank))
        .toString();
  }
}

class CyclePacketItemBuilder
    implements Builder<CyclePacketItem, CyclePacketItemBuilder> {
  _$CyclePacketItem? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _change;
  String? get change => _$this._change;
  set change(String? change) => _$this._change = change;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  JsonObject? _detail;
  JsonObject? get detail => _$this._detail;
  set detail(JsonObject? detail) => _$this._detail = detail;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  CyclePacketItemBuilder() {
    CyclePacketItem._defaults(this);
  }

  CyclePacketItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _title = $v.title;
      _change = $v.change;
      _severity = $v.severity;
      _at = $v.at;
      _detail = $v.detail;
      _rank = $v.rank;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketItem other) {
    _$v = other as _$CyclePacketItem;
  }

  @override
  void update(void Function(CyclePacketItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketItem build() => _build();

  _$CyclePacketItem _build() {
    final _$result = _$v ??
        _$CyclePacketItem._(
          ref: BuiltValueNullFieldError.checkNotNull(
              ref, r'CyclePacketItem', 'ref'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CyclePacketItem', 'title'),
          change: BuiltValueNullFieldError.checkNotNull(
              change, r'CyclePacketItem', 'change'),
          severity: severity,
          at: at,
          detail: detail,
          rank: rank,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
