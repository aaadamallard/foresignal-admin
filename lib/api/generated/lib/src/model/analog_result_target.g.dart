// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_result_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogResultTarget extends AnalogResultTarget {
  @override
  final String? situationId;
  @override
  final String? regionCode;
  @override
  final DateTime? from;
  @override
  final DateTime? to;

  factory _$AnalogResultTarget(
          [void Function(AnalogResultTargetBuilder)? updates]) =>
      (AnalogResultTargetBuilder()..update(updates))._build();

  _$AnalogResultTarget._(
      {this.situationId, this.regionCode, this.from, this.to})
      : super._();
  @override
  AnalogResultTarget rebuild(
          void Function(AnalogResultTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogResultTargetBuilder toBuilder() =>
      AnalogResultTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogResultTarget &&
        situationId == other.situationId &&
        regionCode == other.regionCode &&
        from == other.from &&
        to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogResultTarget')
          ..add('situationId', situationId)
          ..add('regionCode', regionCode)
          ..add('from', from)
          ..add('to', to))
        .toString();
  }
}

class AnalogResultTargetBuilder
    implements Builder<AnalogResultTarget, AnalogResultTargetBuilder> {
  _$AnalogResultTarget? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  AnalogResultTargetBuilder() {
    AnalogResultTarget._defaults(this);
  }

  AnalogResultTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _regionCode = $v.regionCode;
      _from = $v.from;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogResultTarget other) {
    _$v = other as _$AnalogResultTarget;
  }

  @override
  void update(void Function(AnalogResultTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogResultTarget build() => _build();

  _$AnalogResultTarget _build() {
    final _$result = _$v ??
        _$AnalogResultTarget._(
          situationId: situationId,
          regionCode: regionCode,
          from: from,
          to: to,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
