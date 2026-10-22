// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glance_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlanceActivity extends GlanceActivity {
  @override
  final int? versionsLastHour;

  factory _$GlanceActivity([void Function(GlanceActivityBuilder)? updates]) =>
      (GlanceActivityBuilder()..update(updates))._build();

  _$GlanceActivity._({this.versionsLastHour}) : super._();
  @override
  GlanceActivity rebuild(void Function(GlanceActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlanceActivityBuilder toBuilder() => GlanceActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlanceActivity &&
        versionsLastHour == other.versionsLastHour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionsLastHour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GlanceActivity',
    )..add('versionsLastHour', versionsLastHour)).toString();
  }
}

class GlanceActivityBuilder
    implements Builder<GlanceActivity, GlanceActivityBuilder> {
  _$GlanceActivity? _$v;

  int? _versionsLastHour;
  int? get versionsLastHour => _$this._versionsLastHour;
  set versionsLastHour(int? versionsLastHour) =>
      _$this._versionsLastHour = versionsLastHour;

  GlanceActivityBuilder() {
    GlanceActivity._defaults(this);
  }

  GlanceActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionsLastHour = $v.versionsLastHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlanceActivity other) {
    _$v = other as _$GlanceActivity;
  }

  @override
  void update(void Function(GlanceActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlanceActivity build() => _build();

  _$GlanceActivity _build() {
    final _$result =
        _$v ?? _$GlanceActivity._(versionsLastHour: versionsLastHour);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
