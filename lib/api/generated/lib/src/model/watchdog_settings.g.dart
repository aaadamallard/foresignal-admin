// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchdog_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WatchdogSettingsMethodEnum _$watchdogSettingsMethodEnum_GET =
    const WatchdogSettingsMethodEnum._('GET');
const WatchdogSettingsMethodEnum _$watchdogSettingsMethodEnum_POST =
    const WatchdogSettingsMethodEnum._('POST');
const WatchdogSettingsMethodEnum
_$watchdogSettingsMethodEnum_unknownDefaultOpenApi =
    const WatchdogSettingsMethodEnum._('unknownDefaultOpenApi');

WatchdogSettingsMethodEnum _$watchdogSettingsMethodEnumValueOf(String name) {
  switch (name) {
    case 'GET':
      return _$watchdogSettingsMethodEnum_GET;
    case 'POST':
      return _$watchdogSettingsMethodEnum_POST;
    case 'unknownDefaultOpenApi':
      return _$watchdogSettingsMethodEnum_unknownDefaultOpenApi;
    default:
      return _$watchdogSettingsMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<WatchdogSettingsMethodEnum> _$watchdogSettingsMethodEnumValues =
    BuiltSet<WatchdogSettingsMethodEnum>(const <WatchdogSettingsMethodEnum>[
      _$watchdogSettingsMethodEnum_GET,
      _$watchdogSettingsMethodEnum_POST,
      _$watchdogSettingsMethodEnum_unknownDefaultOpenApi,
    ]);

Serializer<WatchdogSettingsMethodEnum> _$watchdogSettingsMethodEnumSerializer =
    _$WatchdogSettingsMethodEnumSerializer();

class _$WatchdogSettingsMethodEnumSerializer
    implements PrimitiveSerializer<WatchdogSettingsMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WatchdogSettingsMethodEnum];
  @override
  final String wireName = 'WatchdogSettingsMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    WatchdogSettingsMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WatchdogSettingsMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WatchdogSettingsMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WatchdogSettings extends WatchdogSettings {
  @override
  final String? heartbeatUrl;
  @override
  final String? failUrl;
  @override
  final String? interval;
  @override
  final WatchdogSettingsMethodEnum? method;
  @override
  final WatchdogSettingsCanary? canary;

  factory _$WatchdogSettings([
    void Function(WatchdogSettingsBuilder)? updates,
  ]) => (WatchdogSettingsBuilder()..update(updates))._build();

  _$WatchdogSettings._({
    this.heartbeatUrl,
    this.failUrl,
    this.interval,
    this.method,
    this.canary,
  }) : super._();
  @override
  WatchdogSettings rebuild(void Function(WatchdogSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchdogSettingsBuilder toBuilder() =>
      WatchdogSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchdogSettings &&
        heartbeatUrl == other.heartbeatUrl &&
        failUrl == other.failUrl &&
        interval == other.interval &&
        method == other.method &&
        canary == other.canary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, heartbeatUrl.hashCode);
    _$hash = $jc(_$hash, failUrl.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, canary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchdogSettings')
          ..add('heartbeatUrl', heartbeatUrl)
          ..add('failUrl', failUrl)
          ..add('interval', interval)
          ..add('method', method)
          ..add('canary', canary))
        .toString();
  }
}

class WatchdogSettingsBuilder
    implements Builder<WatchdogSettings, WatchdogSettingsBuilder> {
  _$WatchdogSettings? _$v;

  String? _heartbeatUrl;
  String? get heartbeatUrl => _$this._heartbeatUrl;
  set heartbeatUrl(String? heartbeatUrl) => _$this._heartbeatUrl = heartbeatUrl;

  String? _failUrl;
  String? get failUrl => _$this._failUrl;
  set failUrl(String? failUrl) => _$this._failUrl = failUrl;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  WatchdogSettingsMethodEnum? _method;
  WatchdogSettingsMethodEnum? get method => _$this._method;
  set method(WatchdogSettingsMethodEnum? method) => _$this._method = method;

  WatchdogSettingsCanaryBuilder? _canary;
  WatchdogSettingsCanaryBuilder get canary =>
      _$this._canary ??= WatchdogSettingsCanaryBuilder();
  set canary(WatchdogSettingsCanaryBuilder? canary) => _$this._canary = canary;

  WatchdogSettingsBuilder() {
    WatchdogSettings._defaults(this);
  }

  WatchdogSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heartbeatUrl = $v.heartbeatUrl;
      _failUrl = $v.failUrl;
      _interval = $v.interval;
      _method = $v.method;
      _canary = $v.canary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchdogSettings other) {
    _$v = other as _$WatchdogSettings;
  }

  @override
  void update(void Function(WatchdogSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchdogSettings build() => _build();

  _$WatchdogSettings _build() {
    _$WatchdogSettings _$result;
    try {
      _$result =
          _$v ??
          _$WatchdogSettings._(
            heartbeatUrl: heartbeatUrl,
            failUrl: failUrl,
            interval: interval,
            method: method,
            canary: _canary?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'canary';
        _canary?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'WatchdogSettings',
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
