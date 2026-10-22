// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_device_setup_gpslogger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestDeviceSetupGpslogger extends IngestDeviceSetupGpslogger {
  @override
  final String? urlTemplate;
  @override
  final String? method;

  factory _$IngestDeviceSetupGpslogger(
          [void Function(IngestDeviceSetupGpsloggerBuilder)? updates]) =>
      (IngestDeviceSetupGpsloggerBuilder()..update(updates))._build();

  _$IngestDeviceSetupGpslogger._({this.urlTemplate, this.method}) : super._();
  @override
  IngestDeviceSetupGpslogger rebuild(
          void Function(IngestDeviceSetupGpsloggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestDeviceSetupGpsloggerBuilder toBuilder() =>
      IngestDeviceSetupGpsloggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestDeviceSetupGpslogger &&
        urlTemplate == other.urlTemplate &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, urlTemplate.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngestDeviceSetupGpslogger')
          ..add('urlTemplate', urlTemplate)
          ..add('method', method))
        .toString();
  }
}

class IngestDeviceSetupGpsloggerBuilder
    implements
        Builder<IngestDeviceSetupGpslogger, IngestDeviceSetupGpsloggerBuilder> {
  _$IngestDeviceSetupGpslogger? _$v;

  String? _urlTemplate;
  String? get urlTemplate => _$this._urlTemplate;
  set urlTemplate(String? urlTemplate) => _$this._urlTemplate = urlTemplate;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  IngestDeviceSetupGpsloggerBuilder() {
    IngestDeviceSetupGpslogger._defaults(this);
  }

  IngestDeviceSetupGpsloggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _urlTemplate = $v.urlTemplate;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestDeviceSetupGpslogger other) {
    _$v = other as _$IngestDeviceSetupGpslogger;
  }

  @override
  void update(void Function(IngestDeviceSetupGpsloggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestDeviceSetupGpslogger build() => _build();

  _$IngestDeviceSetupGpslogger _build() {
    final _$result = _$v ??
        _$IngestDeviceSetupGpslogger._(
          urlTemplate: urlTemplate,
          method: method,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
