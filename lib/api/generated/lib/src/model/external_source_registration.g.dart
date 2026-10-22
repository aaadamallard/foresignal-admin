// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_source_registration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalSourceRegistration extends ExternalSourceRegistration {
  @override
  final EdpManifest? manifest;
  @override
  final String? manifestUrl;
  @override
  final bool? approve;
  @override
  final bool? allowPrivateNetwork;

  factory _$ExternalSourceRegistration([
    void Function(ExternalSourceRegistrationBuilder)? updates,
  ]) => (ExternalSourceRegistrationBuilder()..update(updates))._build();

  _$ExternalSourceRegistration._({
    this.manifest,
    this.manifestUrl,
    this.approve,
    this.allowPrivateNetwork,
  }) : super._();
  @override
  ExternalSourceRegistration rebuild(
    void Function(ExternalSourceRegistrationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalSourceRegistrationBuilder toBuilder() =>
      ExternalSourceRegistrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalSourceRegistration &&
        manifest == other.manifest &&
        manifestUrl == other.manifestUrl &&
        approve == other.approve &&
        allowPrivateNetwork == other.allowPrivateNetwork;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, manifest.hashCode);
    _$hash = $jc(_$hash, manifestUrl.hashCode);
    _$hash = $jc(_$hash, approve.hashCode);
    _$hash = $jc(_$hash, allowPrivateNetwork.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalSourceRegistration')
          ..add('manifest', manifest)
          ..add('manifestUrl', manifestUrl)
          ..add('approve', approve)
          ..add('allowPrivateNetwork', allowPrivateNetwork))
        .toString();
  }
}

class ExternalSourceRegistrationBuilder
    implements
        Builder<ExternalSourceRegistration, ExternalSourceRegistrationBuilder> {
  _$ExternalSourceRegistration? _$v;

  EdpManifestBuilder? _manifest;
  EdpManifestBuilder get manifest => _$this._manifest ??= EdpManifestBuilder();
  set manifest(EdpManifestBuilder? manifest) => _$this._manifest = manifest;

  String? _manifestUrl;
  String? get manifestUrl => _$this._manifestUrl;
  set manifestUrl(String? manifestUrl) => _$this._manifestUrl = manifestUrl;

  bool? _approve;
  bool? get approve => _$this._approve;
  set approve(bool? approve) => _$this._approve = approve;

  bool? _allowPrivateNetwork;
  bool? get allowPrivateNetwork => _$this._allowPrivateNetwork;
  set allowPrivateNetwork(bool? allowPrivateNetwork) =>
      _$this._allowPrivateNetwork = allowPrivateNetwork;

  ExternalSourceRegistrationBuilder() {
    ExternalSourceRegistration._defaults(this);
  }

  ExternalSourceRegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manifest = $v.manifest?.toBuilder();
      _manifestUrl = $v.manifestUrl;
      _approve = $v.approve;
      _allowPrivateNetwork = $v.allowPrivateNetwork;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalSourceRegistration other) {
    _$v = other as _$ExternalSourceRegistration;
  }

  @override
  void update(void Function(ExternalSourceRegistrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalSourceRegistration build() => _build();

  _$ExternalSourceRegistration _build() {
    _$ExternalSourceRegistration _$result;
    try {
      _$result =
          _$v ??
          _$ExternalSourceRegistration._(
            manifest: _manifest?.build(),
            manifestUrl: manifestUrl,
            approve: approve,
            allowPrivateNetwork: allowPrivateNetwork,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifest';
        _manifest?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExternalSourceRegistration',
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
