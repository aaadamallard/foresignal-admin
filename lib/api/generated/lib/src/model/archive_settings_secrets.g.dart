// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_settings_secrets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchiveSettingsSecrets extends ArchiveSettingsSecrets {
  @override
  final String? accessKey;
  @override
  final String? secretKey;

  factory _$ArchiveSettingsSecrets(
          [void Function(ArchiveSettingsSecretsBuilder)? updates]) =>
      (ArchiveSettingsSecretsBuilder()..update(updates))._build();

  _$ArchiveSettingsSecrets._({this.accessKey, this.secretKey}) : super._();
  @override
  ArchiveSettingsSecrets rebuild(
          void Function(ArchiveSettingsSecretsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveSettingsSecretsBuilder toBuilder() =>
      ArchiveSettingsSecretsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveSettingsSecrets &&
        accessKey == other.accessKey &&
        secretKey == other.secretKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKey.hashCode);
    _$hash = $jc(_$hash, secretKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchiveSettingsSecrets')
          ..add('accessKey', accessKey)
          ..add('secretKey', secretKey))
        .toString();
  }
}

class ArchiveSettingsSecretsBuilder
    implements Builder<ArchiveSettingsSecrets, ArchiveSettingsSecretsBuilder> {
  _$ArchiveSettingsSecrets? _$v;

  String? _accessKey;
  String? get accessKey => _$this._accessKey;
  set accessKey(String? accessKey) => _$this._accessKey = accessKey;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  ArchiveSettingsSecretsBuilder() {
    ArchiveSettingsSecrets._defaults(this);
  }

  ArchiveSettingsSecretsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKey = $v.accessKey;
      _secretKey = $v.secretKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveSettingsSecrets other) {
    _$v = other as _$ArchiveSettingsSecrets;
  }

  @override
  void update(void Function(ArchiveSettingsSecretsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveSettingsSecrets build() => _build();

  _$ArchiveSettingsSecrets _build() {
    final _$result = _$v ??
        _$ArchiveSettingsSecrets._(
          accessKey: accessKey,
          secretKey: secretKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
