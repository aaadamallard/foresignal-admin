// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_cursor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystCursor extends AnalystCursor {
  @override
  final int? seq;
  @override
  final int? alertId;
  @override
  final DateTime? eventUpdatedAt;
  @override
  final int? anomalyId;

  factory _$AnalystCursor([void Function(AnalystCursorBuilder)? updates]) =>
      (AnalystCursorBuilder()..update(updates))._build();

  _$AnalystCursor._(
      {this.seq, this.alertId, this.eventUpdatedAt, this.anomalyId})
      : super._();
  @override
  AnalystCursor rebuild(void Function(AnalystCursorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystCursorBuilder toBuilder() => AnalystCursorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystCursor &&
        seq == other.seq &&
        alertId == other.alertId &&
        eventUpdatedAt == other.eventUpdatedAt &&
        anomalyId == other.anomalyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, alertId.hashCode);
    _$hash = $jc(_$hash, eventUpdatedAt.hashCode);
    _$hash = $jc(_$hash, anomalyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystCursor')
          ..add('seq', seq)
          ..add('alertId', alertId)
          ..add('eventUpdatedAt', eventUpdatedAt)
          ..add('anomalyId', anomalyId))
        .toString();
  }
}

class AnalystCursorBuilder
    implements Builder<AnalystCursor, AnalystCursorBuilder> {
  _$AnalystCursor? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _alertId;
  int? get alertId => _$this._alertId;
  set alertId(int? alertId) => _$this._alertId = alertId;

  DateTime? _eventUpdatedAt;
  DateTime? get eventUpdatedAt => _$this._eventUpdatedAt;
  set eventUpdatedAt(DateTime? eventUpdatedAt) =>
      _$this._eventUpdatedAt = eventUpdatedAt;

  int? _anomalyId;
  int? get anomalyId => _$this._anomalyId;
  set anomalyId(int? anomalyId) => _$this._anomalyId = anomalyId;

  AnalystCursorBuilder() {
    AnalystCursor._defaults(this);
  }

  AnalystCursorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _alertId = $v.alertId;
      _eventUpdatedAt = $v.eventUpdatedAt;
      _anomalyId = $v.anomalyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystCursor other) {
    _$v = other as _$AnalystCursor;
  }

  @override
  void update(void Function(AnalystCursorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystCursor build() => _build();

  _$AnalystCursor _build() {
    final _$result = _$v ??
        _$AnalystCursor._(
          seq: seq,
          alertId: alertId,
          eventUpdatedAt: eventUpdatedAt,
          anomalyId: anomalyId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
