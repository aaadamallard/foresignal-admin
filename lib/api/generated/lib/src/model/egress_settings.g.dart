// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressSettings extends EgressSettings {
  @override
  final String rotation;
  @override
  final String? defaultRoute;

  factory _$EgressSettings([void Function(EgressSettingsBuilder)? updates]) =>
      (EgressSettingsBuilder()..update(updates))._build();

  _$EgressSettings._({required this.rotation, this.defaultRoute}) : super._();
  @override
  EgressSettings rebuild(void Function(EgressSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressSettingsBuilder toBuilder() => EgressSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressSettings &&
        rotation == other.rotation &&
        defaultRoute == other.defaultRoute;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rotation.hashCode);
    _$hash = $jc(_$hash, defaultRoute.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressSettings')
          ..add('rotation', rotation)
          ..add('defaultRoute', defaultRoute))
        .toString();
  }
}

class EgressSettingsBuilder
    implements Builder<EgressSettings, EgressSettingsBuilder> {
  _$EgressSettings? _$v;

  String? _rotation;
  String? get rotation => _$this._rotation;
  set rotation(String? rotation) => _$this._rotation = rotation;

  String? _defaultRoute;
  String? get defaultRoute => _$this._defaultRoute;
  set defaultRoute(String? defaultRoute) => _$this._defaultRoute = defaultRoute;

  EgressSettingsBuilder() {
    EgressSettings._defaults(this);
  }

  EgressSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rotation = $v.rotation;
      _defaultRoute = $v.defaultRoute;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressSettings other) {
    _$v = other as _$EgressSettings;
  }

  @override
  void update(void Function(EgressSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressSettings build() => _build();

  _$EgressSettings _build() {
    final _$result =
        _$v ??
        _$EgressSettings._(
          rotation: BuiltValueNullFieldError.checkNotNull(
            rotation,
            r'EgressSettings',
            'rotation',
          ),
          defaultRoute: defaultRoute,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
