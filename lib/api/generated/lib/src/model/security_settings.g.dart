// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecuritySettings extends SecuritySettings {
  @override
  final bool openReads;
  @override
  final bool? exposeObserver;
  @override
  final ReadRestriction? anonymous;
  @override
  final bool? metricsOpen;
  @override
  final bool? exposeMlat;

  factory _$SecuritySettings([
    void Function(SecuritySettingsBuilder)? updates,
  ]) => (SecuritySettingsBuilder()..update(updates))._build();

  _$SecuritySettings._({
    required this.openReads,
    this.exposeObserver,
    this.anonymous,
    this.metricsOpen,
    this.exposeMlat,
  }) : super._();
  @override
  SecuritySettings rebuild(void Function(SecuritySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecuritySettingsBuilder toBuilder() =>
      SecuritySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecuritySettings &&
        openReads == other.openReads &&
        exposeObserver == other.exposeObserver &&
        anonymous == other.anonymous &&
        metricsOpen == other.metricsOpen &&
        exposeMlat == other.exposeMlat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openReads.hashCode);
    _$hash = $jc(_$hash, exposeObserver.hashCode);
    _$hash = $jc(_$hash, anonymous.hashCode);
    _$hash = $jc(_$hash, metricsOpen.hashCode);
    _$hash = $jc(_$hash, exposeMlat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SecuritySettings')
          ..add('openReads', openReads)
          ..add('exposeObserver', exposeObserver)
          ..add('anonymous', anonymous)
          ..add('metricsOpen', metricsOpen)
          ..add('exposeMlat', exposeMlat))
        .toString();
  }
}

class SecuritySettingsBuilder
    implements Builder<SecuritySettings, SecuritySettingsBuilder> {
  _$SecuritySettings? _$v;

  bool? _openReads;
  bool? get openReads => _$this._openReads;
  set openReads(bool? openReads) => _$this._openReads = openReads;

  bool? _exposeObserver;
  bool? get exposeObserver => _$this._exposeObserver;
  set exposeObserver(bool? exposeObserver) =>
      _$this._exposeObserver = exposeObserver;

  ReadRestrictionBuilder? _anonymous;
  ReadRestrictionBuilder get anonymous =>
      _$this._anonymous ??= ReadRestrictionBuilder();
  set anonymous(ReadRestrictionBuilder? anonymous) =>
      _$this._anonymous = anonymous;

  bool? _metricsOpen;
  bool? get metricsOpen => _$this._metricsOpen;
  set metricsOpen(bool? metricsOpen) => _$this._metricsOpen = metricsOpen;

  bool? _exposeMlat;
  bool? get exposeMlat => _$this._exposeMlat;
  set exposeMlat(bool? exposeMlat) => _$this._exposeMlat = exposeMlat;

  SecuritySettingsBuilder() {
    SecuritySettings._defaults(this);
  }

  SecuritySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openReads = $v.openReads;
      _exposeObserver = $v.exposeObserver;
      _anonymous = $v.anonymous?.toBuilder();
      _metricsOpen = $v.metricsOpen;
      _exposeMlat = $v.exposeMlat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecuritySettings other) {
    _$v = other as _$SecuritySettings;
  }

  @override
  void update(void Function(SecuritySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecuritySettings build() => _build();

  _$SecuritySettings _build() {
    _$SecuritySettings _$result;
    try {
      _$result =
          _$v ??
          _$SecuritySettings._(
            openReads: BuiltValueNullFieldError.checkNotNull(
              openReads,
              r'SecuritySettings',
              'openReads',
            ),
            exposeObserver: exposeObserver,
            anonymous: _anonymous?.build(),
            metricsOpen: metricsOpen,
            exposeMlat: exposeMlat,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anonymous';
        _anonymous?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SecuritySettings',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
