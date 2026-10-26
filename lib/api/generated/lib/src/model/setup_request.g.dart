// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetupRequest extends SetupRequest {
  @override
  final SetupRequestAdmin admin;
  @override
  final SmtpSettingsInput? smtp;
  @override
  final BuiltList<String>? sources;
  @override
  final ResourceThresholds? thresholds;
  @override
  final BuiltMap<String, JsonObject?>? retention;

  factory _$SetupRequest([void Function(SetupRequestBuilder)? updates]) =>
      (SetupRequestBuilder()..update(updates))._build();

  _$SetupRequest._({
    required this.admin,
    this.smtp,
    this.sources,
    this.thresholds,
    this.retention,
  }) : super._();
  @override
  SetupRequest rebuild(void Function(SetupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetupRequestBuilder toBuilder() => SetupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetupRequest &&
        admin == other.admin &&
        smtp == other.smtp &&
        sources == other.sources &&
        thresholds == other.thresholds &&
        retention == other.retention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, smtp.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, retention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetupRequest')
          ..add('admin', admin)
          ..add('smtp', smtp)
          ..add('sources', sources)
          ..add('thresholds', thresholds)
          ..add('retention', retention))
        .toString();
  }
}

class SetupRequestBuilder
    implements Builder<SetupRequest, SetupRequestBuilder> {
  _$SetupRequest? _$v;

  SetupRequestAdminBuilder? _admin;
  SetupRequestAdminBuilder get admin =>
      _$this._admin ??= SetupRequestAdminBuilder();
  set admin(SetupRequestAdminBuilder? admin) => _$this._admin = admin;

  SmtpSettingsInputBuilder? _smtp;
  SmtpSettingsInputBuilder get smtp =>
      _$this._smtp ??= SmtpSettingsInputBuilder();
  set smtp(SmtpSettingsInputBuilder? smtp) => _$this._smtp = smtp;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ResourceThresholdsBuilder? _thresholds;
  ResourceThresholdsBuilder get thresholds =>
      _$this._thresholds ??= ResourceThresholdsBuilder();
  set thresholds(ResourceThresholdsBuilder? thresholds) =>
      _$this._thresholds = thresholds;

  MapBuilder<String, JsonObject?>? _retention;
  MapBuilder<String, JsonObject?> get retention =>
      _$this._retention ??= MapBuilder<String, JsonObject?>();
  set retention(MapBuilder<String, JsonObject?>? retention) =>
      _$this._retention = retention;

  SetupRequestBuilder() {
    SetupRequest._defaults(this);
  }

  SetupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _admin = $v.admin.toBuilder();
      _smtp = $v.smtp?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _thresholds = $v.thresholds?.toBuilder();
      _retention = $v.retention?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetupRequest other) {
    _$v = other as _$SetupRequest;
  }

  @override
  void update(void Function(SetupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetupRequest build() => _build();

  _$SetupRequest _build() {
    _$SetupRequest _$result;
    try {
      _$result =
          _$v ??
          _$SetupRequest._(
            admin: admin.build(),
            smtp: _smtp?.build(),
            sources: _sources?.build(),
            thresholds: _thresholds?.build(),
            retention: _retention?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'admin';
        admin.build();
        _$failedField = 'smtp';
        _smtp?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'thresholds';
        _thresholds?.build();
        _$failedField = 'retention';
        _retention?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SetupRequest',
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
