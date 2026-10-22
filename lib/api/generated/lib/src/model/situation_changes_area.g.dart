// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_changes_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationChangesArea extends SituationChangesArea {
  @override
  final num? beforeKm2;
  @override
  final num? afterKm2;
  @override
  final num? deltaKm2;

  factory _$SituationChangesArea([
    void Function(SituationChangesAreaBuilder)? updates,
  ]) => (SituationChangesAreaBuilder()..update(updates))._build();

  _$SituationChangesArea._({this.beforeKm2, this.afterKm2, this.deltaKm2})
    : super._();
  @override
  SituationChangesArea rebuild(
    void Function(SituationChangesAreaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationChangesAreaBuilder toBuilder() =>
      SituationChangesAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationChangesArea &&
        beforeKm2 == other.beforeKm2 &&
        afterKm2 == other.afterKm2 &&
        deltaKm2 == other.deltaKm2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, beforeKm2.hashCode);
    _$hash = $jc(_$hash, afterKm2.hashCode);
    _$hash = $jc(_$hash, deltaKm2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationChangesArea')
          ..add('beforeKm2', beforeKm2)
          ..add('afterKm2', afterKm2)
          ..add('deltaKm2', deltaKm2))
        .toString();
  }
}

class SituationChangesAreaBuilder
    implements Builder<SituationChangesArea, SituationChangesAreaBuilder> {
  _$SituationChangesArea? _$v;

  num? _beforeKm2;
  num? get beforeKm2 => _$this._beforeKm2;
  set beforeKm2(num? beforeKm2) => _$this._beforeKm2 = beforeKm2;

  num? _afterKm2;
  num? get afterKm2 => _$this._afterKm2;
  set afterKm2(num? afterKm2) => _$this._afterKm2 = afterKm2;

  num? _deltaKm2;
  num? get deltaKm2 => _$this._deltaKm2;
  set deltaKm2(num? deltaKm2) => _$this._deltaKm2 = deltaKm2;

  SituationChangesAreaBuilder() {
    SituationChangesArea._defaults(this);
  }

  SituationChangesAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _beforeKm2 = $v.beforeKm2;
      _afterKm2 = $v.afterKm2;
      _deltaKm2 = $v.deltaKm2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationChangesArea other) {
    _$v = other as _$SituationChangesArea;
  }

  @override
  void update(void Function(SituationChangesAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationChangesArea build() => _build();

  _$SituationChangesArea _build() {
    final _$result =
        _$v ??
        _$SituationChangesArea._(
          beforeKm2: beforeKm2,
          afterKm2: afterKm2,
          deltaKm2: deltaKm2,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
