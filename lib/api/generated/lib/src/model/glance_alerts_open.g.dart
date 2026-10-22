// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_alerts_open.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlanceAlertsOpen extends GlanceAlertsOpen {
  @override
  final int? critical;
  @override
  final int? warning;
  @override
  final int? info;

  factory _$GlanceAlertsOpen([
    void Function(GlanceAlertsOpenBuilder)? updates,
  ]) => (GlanceAlertsOpenBuilder()..update(updates))._build();

  _$GlanceAlertsOpen._({this.critical, this.warning, this.info}) : super._();
  @override
  GlanceAlertsOpen rebuild(void Function(GlanceAlertsOpenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceAlertsOpenBuilder toBuilder() =>
      GlanceAlertsOpenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceAlertsOpen &&
        critical == other.critical &&
        warning == other.warning &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, critical.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlanceAlertsOpen')
          ..add('critical', critical)
          ..add('warning', warning)
          ..add('info', info))
        .toString();
  }
}

class GlanceAlertsOpenBuilder
    implements Builder<GlanceAlertsOpen, GlanceAlertsOpenBuilder> {
  _$GlanceAlertsOpen? _$v;

  int? _critical;
  int? get critical => _$this._critical;
  set critical(int? critical) => _$this._critical = critical;

  int? _warning;
  int? get warning => _$this._warning;
  set warning(int? warning) => _$this._warning = warning;

  int? _info;
  int? get info => _$this._info;
  set info(int? info) => _$this._info = info;

  GlanceAlertsOpenBuilder() {
    GlanceAlertsOpen._defaults(this);
  }

  GlanceAlertsOpenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _critical = $v.critical;
      _warning = $v.warning;
      _info = $v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceAlertsOpen other) {
    _$v = other as _$GlanceAlertsOpen;
  }

  @override
  void update(void Function(GlanceAlertsOpenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceAlertsOpen build() => _build();

  _$GlanceAlertsOpen _build() {
    final _$result =
        _$v ??
        _$GlanceAlertsOpen._(critical: critical, warning: warning, info: info);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
