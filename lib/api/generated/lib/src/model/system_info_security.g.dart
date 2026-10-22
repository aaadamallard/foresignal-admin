// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info_security.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfoSecurity extends SystemInfoSecurity {
  @override
  final bool? openReads;
  @override
  final bool? anonymousRestricted;
  @override
  final BuiltList<SettingsWarning>? warnings;

  factory _$SystemInfoSecurity([
    void Function(SystemInfoSecurityBuilder)? updates,
  ]) => (SystemInfoSecurityBuilder()..update(updates))._build();

  _$SystemInfoSecurity._({
    this.openReads,
    this.anonymousRestricted,
    this.warnings,
  }) : super._();
  @override
  SystemInfoSecurity rebuild(
    void Function(SystemInfoSecurityBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemInfoSecurityBuilder toBuilder() =>
      SystemInfoSecurityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfoSecurity &&
        openReads == other.openReads &&
        anonymousRestricted == other.anonymousRestricted &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openReads.hashCode);
    _$hash = $jc(_$hash, anonymousRestricted.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfoSecurity')
          ..add('openReads', openReads)
          ..add('anonymousRestricted', anonymousRestricted)
          ..add('warnings', warnings))
        .toString();
  }
}

class SystemInfoSecurityBuilder
    implements Builder<SystemInfoSecurity, SystemInfoSecurityBuilder> {
  _$SystemInfoSecurity? _$v;

  bool? _openReads;
  bool? get openReads => _$this._openReads;
  set openReads(bool? openReads) => _$this._openReads = openReads;

  bool? _anonymousRestricted;
  bool? get anonymousRestricted => _$this._anonymousRestricted;
  set anonymousRestricted(bool? anonymousRestricted) =>
      _$this._anonymousRestricted = anonymousRestricted;

  ListBuilder<SettingsWarning>? _warnings;
  ListBuilder<SettingsWarning> get warnings =>
      _$this._warnings ??= ListBuilder<SettingsWarning>();
  set warnings(ListBuilder<SettingsWarning>? warnings) =>
      _$this._warnings = warnings;

  SystemInfoSecurityBuilder() {
    SystemInfoSecurity._defaults(this);
  }

  SystemInfoSecurityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openReads = $v.openReads;
      _anonymousRestricted = $v.anonymousRestricted;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfoSecurity other) {
    _$v = other as _$SystemInfoSecurity;
  }

  @override
  void update(void Function(SystemInfoSecurityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfoSecurity build() => _build();

  _$SystemInfoSecurity _build() {
    _$SystemInfoSecurity _$result;
    try {
      _$result =
          _$v ??
          _$SystemInfoSecurity._(
            openReads: openReads,
            anonymousRestricted: anonymousRestricted,
            warnings: _warnings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SystemInfoSecurity',
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
