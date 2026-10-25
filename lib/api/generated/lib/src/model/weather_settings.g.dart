// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherSettingsAlertContextEnum _$weatherSettingsAlertContextEnum_auto =
    const WeatherSettingsAlertContextEnum._('auto');
const WeatherSettingsAlertContextEnum _$weatherSettingsAlertContextEnum_off =
    const WeatherSettingsAlertContextEnum._('off');
const WeatherSettingsAlertContextEnum
_$weatherSettingsAlertContextEnum_unknownDefaultOpenApi =
    const WeatherSettingsAlertContextEnum._('unknownDefaultOpenApi');

WeatherSettingsAlertContextEnum _$weatherSettingsAlertContextEnumValueOf(
  String name,
) {
  switch (name) {
    case 'auto':
      return _$weatherSettingsAlertContextEnum_auto;
    case 'off':
      return _$weatherSettingsAlertContextEnum_off;
    case 'unknownDefaultOpenApi':
      return _$weatherSettingsAlertContextEnum_unknownDefaultOpenApi;
    default:
      return _$weatherSettingsAlertContextEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<WeatherSettingsAlertContextEnum>
_$weatherSettingsAlertContextEnumValues =
    BuiltSet<WeatherSettingsAlertContextEnum>(
      const <WeatherSettingsAlertContextEnum>[
        _$weatherSettingsAlertContextEnum_auto,
        _$weatherSettingsAlertContextEnum_off,
        _$weatherSettingsAlertContextEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<WeatherSettingsAlertContextEnum>
_$weatherSettingsAlertContextEnumSerializer =
    _$WeatherSettingsAlertContextEnumSerializer();

class _$WeatherSettingsAlertContextEnumSerializer
    implements PrimitiveSerializer<WeatherSettingsAlertContextEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'off': 'off',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'off': 'off',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[WeatherSettingsAlertContextEnum];
  @override
  final String wireName = 'WeatherSettingsAlertContextEnum';

  @override
  Object serialize(
    Serializers serializers,
    WeatherSettingsAlertContextEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  WeatherSettingsAlertContextEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => WeatherSettingsAlertContextEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$WeatherSettings extends WeatherSettings {
  @override
  final WeatherSettingsAlertContextEnum? alertContext;
  @override
  final String? defaultAoi;
  @override
  final num? aoiBufferKm;

  factory _$WeatherSettings([void Function(WeatherSettingsBuilder)? updates]) =>
      (WeatherSettingsBuilder()..update(updates))._build();

  _$WeatherSettings._({this.alertContext, this.defaultAoi, this.aoiBufferKm})
    : super._();
  @override
  WeatherSettings rebuild(void Function(WeatherSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherSettingsBuilder toBuilder() => WeatherSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherSettings &&
        alertContext == other.alertContext &&
        defaultAoi == other.defaultAoi &&
        aoiBufferKm == other.aoiBufferKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alertContext.hashCode);
    _$hash = $jc(_$hash, defaultAoi.hashCode);
    _$hash = $jc(_$hash, aoiBufferKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherSettings')
          ..add('alertContext', alertContext)
          ..add('defaultAoi', defaultAoi)
          ..add('aoiBufferKm', aoiBufferKm))
        .toString();
  }
}

class WeatherSettingsBuilder
    implements Builder<WeatherSettings, WeatherSettingsBuilder> {
  _$WeatherSettings? _$v;

  WeatherSettingsAlertContextEnum? _alertContext;
  WeatherSettingsAlertContextEnum? get alertContext => _$this._alertContext;
  set alertContext(WeatherSettingsAlertContextEnum? alertContext) =>
      _$this._alertContext = alertContext;

  String? _defaultAoi;
  String? get defaultAoi => _$this._defaultAoi;
  set defaultAoi(String? defaultAoi) => _$this._defaultAoi = defaultAoi;

  num? _aoiBufferKm;
  num? get aoiBufferKm => _$this._aoiBufferKm;
  set aoiBufferKm(num? aoiBufferKm) => _$this._aoiBufferKm = aoiBufferKm;

  WeatherSettingsBuilder() {
    WeatherSettings._defaults(this);
  }

  WeatherSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alertContext = $v.alertContext;
      _defaultAoi = $v.defaultAoi;
      _aoiBufferKm = $v.aoiBufferKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherSettings other) {
    _$v = other as _$WeatherSettings;
  }

  @override
  void update(void Function(WeatherSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherSettings build() => _build();

  _$WeatherSettings _build() {
    final _$result =
        _$v ??
        _$WeatherSettings._(
          alertContext: alertContext,
          defaultAoi: defaultAoi,
          aoiBufferKm: aoiBufferKm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
