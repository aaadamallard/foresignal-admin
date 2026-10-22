// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_alerts_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimelineAlertsInner extends TimelineAlertsInner {
  @override
  final DateTime t;
  @override
  final int? info;
  @override
  final int? warning;
  @override
  final int? critical;

  factory _$TimelineAlertsInner([
    void Function(TimelineAlertsInnerBuilder)? updates,
  ]) => (TimelineAlertsInnerBuilder()..update(updates))._build();

  _$TimelineAlertsInner._({
    required this.t,
    this.info,
    this.warning,
    this.critical,
  }) : super._();
  @override
  TimelineAlertsInner rebuild(
    void Function(TimelineAlertsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimelineAlertsInnerBuilder toBuilder() =>
      TimelineAlertsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineAlertsInner &&
        t == other.t &&
        info == other.info &&
        warning == other.warning &&
        critical == other.critical;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jc(_$hash, critical.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimelineAlertsInner')
          ..add('t', t)
          ..add('info', info)
          ..add('warning', warning)
          ..add('critical', critical))
        .toString();
  }
}

class TimelineAlertsInnerBuilder
    implements Builder<TimelineAlertsInner, TimelineAlertsInnerBuilder> {
  _$TimelineAlertsInner? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _info;
  int? get info => _$this._info;
  set info(int? info) => _$this._info = info;

  int? _warning;
  int? get warning => _$this._warning;
  set warning(int? warning) => _$this._warning = warning;

  int? _critical;
  int? get critical => _$this._critical;
  set critical(int? critical) => _$this._critical = critical;

  TimelineAlertsInnerBuilder() {
    TimelineAlertsInner._defaults(this);
  }

  TimelineAlertsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _info = $v.info;
      _warning = $v.warning;
      _critical = $v.critical;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineAlertsInner other) {
    _$v = other as _$TimelineAlertsInner;
  }

  @override
  void update(void Function(TimelineAlertsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineAlertsInner build() => _build();

  _$TimelineAlertsInner _build() {
    final _$result =
        _$v ??
        _$TimelineAlertsInner._(
          t: BuiltValueNullFieldError.checkNotNull(
            t,
            r'TimelineAlertsInner',
            't',
          ),
          info: info,
          warning: warning,
          critical: critical,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
