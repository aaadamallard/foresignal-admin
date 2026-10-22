// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_alerts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlanceAlerts extends GlanceAlerts {
  @override
  final GlanceAlertsOpen? open;
  @override
  final BuiltList<GlanceAlertsLatestInner>? latest;

  factory _$GlanceAlerts([void Function(GlanceAlertsBuilder)? updates]) =>
      (GlanceAlertsBuilder()..update(updates))._build();

  _$GlanceAlerts._({this.open, this.latest}) : super._();
  @override
  GlanceAlerts rebuild(void Function(GlanceAlertsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceAlertsBuilder toBuilder() => GlanceAlertsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceAlerts &&
        open == other.open &&
        latest == other.latest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, latest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlanceAlerts')
          ..add('open', open)
          ..add('latest', latest))
        .toString();
  }
}

class GlanceAlertsBuilder
    implements Builder<GlanceAlerts, GlanceAlertsBuilder> {
  _$GlanceAlerts? _$v;

  GlanceAlertsOpenBuilder? _open;
  GlanceAlertsOpenBuilder get open =>
      _$this._open ??= GlanceAlertsOpenBuilder();
  set open(GlanceAlertsOpenBuilder? open) => _$this._open = open;

  ListBuilder<GlanceAlertsLatestInner>? _latest;
  ListBuilder<GlanceAlertsLatestInner> get latest =>
      _$this._latest ??= ListBuilder<GlanceAlertsLatestInner>();
  set latest(ListBuilder<GlanceAlertsLatestInner>? latest) =>
      _$this._latest = latest;

  GlanceAlertsBuilder() {
    GlanceAlerts._defaults(this);
  }

  GlanceAlertsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _open = $v.open?.toBuilder();
      _latest = $v.latest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceAlerts other) {
    _$v = other as _$GlanceAlerts;
  }

  @override
  void update(void Function(GlanceAlertsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceAlerts build() => _build();

  _$GlanceAlerts _build() {
    _$GlanceAlerts _$result;
    try {
      _$result = _$v ??
          _$GlanceAlerts._(
            open: _open?.build(),
            latest: _latest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'open';
        _open?.build();
        _$failedField = 'latest';
        _latest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GlanceAlerts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
