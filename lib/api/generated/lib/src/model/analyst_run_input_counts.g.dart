// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_run_input_counts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalystRunInputCounts extends AnalystRunInputCounts {
  @override
  final int? events;
  @override
  final int? anomalies;
  @override
  final int? alerts;

  factory _$AnalystRunInputCounts([
    void Function(AnalystRunInputCountsBuilder)? updates,
  ]) => (AnalystRunInputCountsBuilder()..update(updates))._build();

  _$AnalystRunInputCounts._({this.events, this.anomalies, this.alerts})
    : super._();
  @override
  AnalystRunInputCounts rebuild(
    void Function(AnalystRunInputCountsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalystRunInputCountsBuilder toBuilder() =>
      AnalystRunInputCountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystRunInputCounts &&
        events == other.events &&
        anomalies == other.anomalies &&
        alerts == other.alerts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jc(_$hash, anomalies.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystRunInputCounts')
          ..add('events', events)
          ..add('anomalies', anomalies)
          ..add('alerts', alerts))
        .toString();
  }
}

class AnalystRunInputCountsBuilder
    implements Builder<AnalystRunInputCounts, AnalystRunInputCountsBuilder> {
  _$AnalystRunInputCounts? _$v;

  int? _events;
  int? get events => _$this._events;
  set events(int? events) => _$this._events = events;

  int? _anomalies;
  int? get anomalies => _$this._anomalies;
  set anomalies(int? anomalies) => _$this._anomalies = anomalies;

  int? _alerts;
  int? get alerts => _$this._alerts;
  set alerts(int? alerts) => _$this._alerts = alerts;

  AnalystRunInputCountsBuilder() {
    AnalystRunInputCounts._defaults(this);
  }

  AnalystRunInputCountsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events;
      _anomalies = $v.anomalies;
      _alerts = $v.alerts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystRunInputCounts other) {
    _$v = other as _$AnalystRunInputCounts;
  }

  @override
  void update(void Function(AnalystRunInputCountsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystRunInputCounts build() => _build();

  _$AnalystRunInputCounts _build() {
    final _$result =
        _$v ??
        _$AnalystRunInputCounts._(
          events: events,
          anomalies: anomalies,
          alerts: alerts,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
