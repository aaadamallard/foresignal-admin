// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_provider_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaProviderInput extends MediaProviderInput {
  @override
  final bool? enabled;
  @override
  final bool? licenceAcknowledged;
  @override
  final bool? permissionRecorded;
  @override
  final String? apiKey;

  factory _$MediaProviderInput([
    void Function(MediaProviderInputBuilder)? updates,
  ]) => (MediaProviderInputBuilder()..update(updates))._build();

  _$MediaProviderInput._({
    this.enabled,
    this.licenceAcknowledged,
    this.permissionRecorded,
    this.apiKey,
  }) : super._();
  @override
  MediaProviderInput rebuild(
    void Function(MediaProviderInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MediaProviderInputBuilder toBuilder() =>
      MediaProviderInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaProviderInput &&
        enabled == other.enabled &&
        licenceAcknowledged == other.licenceAcknowledged &&
        permissionRecorded == other.permissionRecorded &&
        apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, licenceAcknowledged.hashCode);
    _$hash = $jc(_$hash, permissionRecorded.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaProviderInput')
          ..add('enabled', enabled)
          ..add('licenceAcknowledged', licenceAcknowledged)
          ..add('permissionRecorded', permissionRecorded)
          ..add('apiKey', apiKey))
        .toString();
  }
}

class MediaProviderInputBuilder
    implements Builder<MediaProviderInput, MediaProviderInputBuilder> {
  _$MediaProviderInput? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _licenceAcknowledged;
  bool? get licenceAcknowledged => _$this._licenceAcknowledged;
  set licenceAcknowledged(bool? licenceAcknowledged) =>
      _$this._licenceAcknowledged = licenceAcknowledged;

  bool? _permissionRecorded;
  bool? get permissionRecorded => _$this._permissionRecorded;
  set permissionRecorded(bool? permissionRecorded) =>
      _$this._permissionRecorded = permissionRecorded;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  MediaProviderInputBuilder() {
    MediaProviderInput._defaults(this);
  }

  MediaProviderInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _licenceAcknowledged = $v.licenceAcknowledged;
      _permissionRecorded = $v.permissionRecorded;
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaProviderInput other) {
    _$v = other as _$MediaProviderInput;
  }

  @override
  void update(void Function(MediaProviderInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaProviderInput build() => _build();

  _$MediaProviderInput _build() {
    final _$result =
        _$v ??
        _$MediaProviderInput._(
          enabled: enabled,
          licenceAcknowledged: licenceAcknowledged,
          permissionRecorded: permissionRecorded,
          apiKey: apiKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
