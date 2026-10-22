// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FcmProviderConfig extends FcmProviderConfig {
  @override
  final String projectId;
  @override
  final String clientEmail;
  @override
  final String? tokenUri;

  factory _$FcmProviderConfig(
          [void Function(FcmProviderConfigBuilder)? updates]) =>
      (FcmProviderConfigBuilder()..update(updates))._build();

  _$FcmProviderConfig._(
      {required this.projectId, required this.clientEmail, this.tokenUri})
      : super._();
  @override
  FcmProviderConfig rebuild(void Function(FcmProviderConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FcmProviderConfigBuilder toBuilder() =>
      FcmProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FcmProviderConfig &&
        projectId == other.projectId &&
        clientEmail == other.clientEmail &&
        tokenUri == other.tokenUri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, clientEmail.hashCode);
    _$hash = $jc(_$hash, tokenUri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FcmProviderConfig')
          ..add('projectId', projectId)
          ..add('clientEmail', clientEmail)
          ..add('tokenUri', tokenUri))
        .toString();
  }
}

class FcmProviderConfigBuilder
    implements Builder<FcmProviderConfig, FcmProviderConfigBuilder> {
  _$FcmProviderConfig? _$v;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _clientEmail;
  String? get clientEmail => _$this._clientEmail;
  set clientEmail(String? clientEmail) => _$this._clientEmail = clientEmail;

  String? _tokenUri;
  String? get tokenUri => _$this._tokenUri;
  set tokenUri(String? tokenUri) => _$this._tokenUri = tokenUri;

  FcmProviderConfigBuilder() {
    FcmProviderConfig._defaults(this);
  }

  FcmProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _clientEmail = $v.clientEmail;
      _tokenUri = $v.tokenUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FcmProviderConfig other) {
    _$v = other as _$FcmProviderConfig;
  }

  @override
  void update(void Function(FcmProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FcmProviderConfig build() => _build();

  _$FcmProviderConfig _build() {
    final _$result = _$v ??
        _$FcmProviderConfig._(
          projectId: BuiltValueNullFieldError.checkNotNull(
              projectId, r'FcmProviderConfig', 'projectId'),
          clientEmail: BuiltValueNullFieldError.checkNotNull(
              clientEmail, r'FcmProviderConfig', 'clientEmail'),
          tokenUri: tokenUri,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
