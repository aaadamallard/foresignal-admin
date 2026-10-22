// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_corroboration_auto_corroborate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelCorroborationAutoCorroborate
    extends IntelCorroborationAutoCorroborate {
  @override
  final bool? enabled;
  @override
  final num? withinKm;
  @override
  final String? window;
  @override
  final int? maxMembers;

  factory _$IntelCorroborationAutoCorroborate([
    void Function(IntelCorroborationAutoCorroborateBuilder)? updates,
  ]) => (IntelCorroborationAutoCorroborateBuilder()..update(updates))._build();

  _$IntelCorroborationAutoCorroborate._({
    this.enabled,
    this.withinKm,
    this.window,
    this.maxMembers,
  }) : super._();
  @override
  IntelCorroborationAutoCorroborate rebuild(
    void Function(IntelCorroborationAutoCorroborateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelCorroborationAutoCorroborateBuilder toBuilder() =>
      IntelCorroborationAutoCorroborateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelCorroborationAutoCorroborate &&
        enabled == other.enabled &&
        withinKm == other.withinKm &&
        window == other.window &&
        maxMembers == other.maxMembers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, withinKm.hashCode);
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, maxMembers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelCorroborationAutoCorroborate')
          ..add('enabled', enabled)
          ..add('withinKm', withinKm)
          ..add('window', window)
          ..add('maxMembers', maxMembers))
        .toString();
  }
}

class IntelCorroborationAutoCorroborateBuilder
    implements
        Builder<
          IntelCorroborationAutoCorroborate,
          IntelCorroborationAutoCorroborateBuilder
        > {
  _$IntelCorroborationAutoCorroborate? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  num? _withinKm;
  num? get withinKm => _$this._withinKm;
  set withinKm(num? withinKm) => _$this._withinKm = withinKm;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  int? _maxMembers;
  int? get maxMembers => _$this._maxMembers;
  set maxMembers(int? maxMembers) => _$this._maxMembers = maxMembers;

  IntelCorroborationAutoCorroborateBuilder() {
    IntelCorroborationAutoCorroborate._defaults(this);
  }

  IntelCorroborationAutoCorroborateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _withinKm = $v.withinKm;
      _window = $v.window;
      _maxMembers = $v.maxMembers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelCorroborationAutoCorroborate other) {
    _$v = other as _$IntelCorroborationAutoCorroborate;
  }

  @override
  void update(
    void Function(IntelCorroborationAutoCorroborateBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntelCorroborationAutoCorroborate build() => _build();

  _$IntelCorroborationAutoCorroborate _build() {
    final _$result =
        _$v ??
        _$IntelCorroborationAutoCorroborate._(
          enabled: enabled,
          withinKm: withinKm,
          window: window,
          maxMembers: maxMembers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
