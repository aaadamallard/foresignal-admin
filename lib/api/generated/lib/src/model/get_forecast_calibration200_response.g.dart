// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_forecast_calibration200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetForecastCalibration200ResponseLabelEnum
    _$getForecastCalibration200ResponseLabelEnum_ok =
    const GetForecastCalibration200ResponseLabelEnum._('ok');
const GetForecastCalibration200ResponseLabelEnum
    _$getForecastCalibration200ResponseLabelEnum_insufficient =
    const GetForecastCalibration200ResponseLabelEnum._('insufficient');

GetForecastCalibration200ResponseLabelEnum
    _$getForecastCalibration200ResponseLabelEnumValueOf(String name) {
  switch (name) {
    case 'ok':
      return _$getForecastCalibration200ResponseLabelEnum_ok;
    case 'insufficient':
      return _$getForecastCalibration200ResponseLabelEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetForecastCalibration200ResponseLabelEnum>
    _$getForecastCalibration200ResponseLabelEnumValues = BuiltSet<
        GetForecastCalibration200ResponseLabelEnum>(const <GetForecastCalibration200ResponseLabelEnum>[
  _$getForecastCalibration200ResponseLabelEnum_ok,
  _$getForecastCalibration200ResponseLabelEnum_insufficient,
]);

const GetForecastCalibration200ResponseMethodEnum
    _$getForecastCalibration200ResponseMethodEnum_corp =
    const GetForecastCalibration200ResponseMethodEnum._('corp');
const GetForecastCalibration200ResponseMethodEnum
    _$getForecastCalibration200ResponseMethodEnum_bins =
    const GetForecastCalibration200ResponseMethodEnum._('bins');

GetForecastCalibration200ResponseMethodEnum
    _$getForecastCalibration200ResponseMethodEnumValueOf(String name) {
  switch (name) {
    case 'corp':
      return _$getForecastCalibration200ResponseMethodEnum_corp;
    case 'bins':
      return _$getForecastCalibration200ResponseMethodEnum_bins;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetForecastCalibration200ResponseMethodEnum>
    _$getForecastCalibration200ResponseMethodEnumValues = BuiltSet<
        GetForecastCalibration200ResponseMethodEnum>(const <GetForecastCalibration200ResponseMethodEnum>[
  _$getForecastCalibration200ResponseMethodEnum_corp,
  _$getForecastCalibration200ResponseMethodEnum_bins,
]);

const GetForecastCalibration200ResponseTypeEnum
    _$getForecastCalibration200ResponseTypeEnum_numeric =
    const GetForecastCalibration200ResponseTypeEnum._('numeric');

GetForecastCalibration200ResponseTypeEnum
    _$getForecastCalibration200ResponseTypeEnumValueOf(String name) {
  switch (name) {
    case 'numeric':
      return _$getForecastCalibration200ResponseTypeEnum_numeric;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetForecastCalibration200ResponseTypeEnum>
    _$getForecastCalibration200ResponseTypeEnumValues = BuiltSet<
        GetForecastCalibration200ResponseTypeEnum>(const <GetForecastCalibration200ResponseTypeEnum>[
  _$getForecastCalibration200ResponseTypeEnum_numeric,
]);

Serializer<GetForecastCalibration200ResponseLabelEnum>
    _$getForecastCalibration200ResponseLabelEnumSerializer =
    _$GetForecastCalibration200ResponseLabelEnumSerializer();
Serializer<GetForecastCalibration200ResponseMethodEnum>
    _$getForecastCalibration200ResponseMethodEnumSerializer =
    _$GetForecastCalibration200ResponseMethodEnumSerializer();
Serializer<GetForecastCalibration200ResponseTypeEnum>
    _$getForecastCalibration200ResponseTypeEnumSerializer =
    _$GetForecastCalibration200ResponseTypeEnumSerializer();

class _$GetForecastCalibration200ResponseLabelEnumSerializer
    implements PrimitiveSerializer<GetForecastCalibration200ResponseLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetForecastCalibration200ResponseLabelEnum
  ];
  @override
  final String wireName = 'GetForecastCalibration200ResponseLabelEnum';

  @override
  Object serialize(Serializers serializers,
          GetForecastCalibration200ResponseLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetForecastCalibration200ResponseLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetForecastCalibration200ResponseLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetForecastCalibration200ResponseMethodEnumSerializer
    implements
        PrimitiveSerializer<GetForecastCalibration200ResponseMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'corp': 'corp',
    'bins': 'bins',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'corp': 'corp',
    'bins': 'bins',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetForecastCalibration200ResponseMethodEnum
  ];
  @override
  final String wireName = 'GetForecastCalibration200ResponseMethodEnum';

  @override
  Object serialize(Serializers serializers,
          GetForecastCalibration200ResponseMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetForecastCalibration200ResponseMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetForecastCalibration200ResponseMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetForecastCalibration200ResponseTypeEnumSerializer
    implements PrimitiveSerializer<GetForecastCalibration200ResponseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'numeric': 'numeric',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'numeric': 'numeric',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetForecastCalibration200ResponseTypeEnum
  ];
  @override
  final String wireName = 'GetForecastCalibration200ResponseTypeEnum';

  @override
  Object serialize(Serializers serializers,
          GetForecastCalibration200ResponseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetForecastCalibration200ResponseTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetForecastCalibration200ResponseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetForecastCalibration200Response
    extends GetForecastCalibration200Response {
  @override
  final OneOf oneOf;

  factory _$GetForecastCalibration200Response(
          [void Function(GetForecastCalibration200ResponseBuilder)? updates]) =>
      (GetForecastCalibration200ResponseBuilder()..update(updates))._build();

  _$GetForecastCalibration200Response._({required this.oneOf}) : super._();
  @override
  GetForecastCalibration200Response rebuild(
          void Function(GetForecastCalibration200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetForecastCalibration200ResponseBuilder toBuilder() =>
      GetForecastCalibration200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetForecastCalibration200Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetForecastCalibration200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GetForecastCalibration200ResponseBuilder
    implements
        Builder<GetForecastCalibration200Response,
            GetForecastCalibration200ResponseBuilder> {
  _$GetForecastCalibration200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GetForecastCalibration200ResponseBuilder() {
    GetForecastCalibration200Response._defaults(this);
  }

  GetForecastCalibration200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetForecastCalibration200Response other) {
    _$v = other as _$GetForecastCalibration200Response;
  }

  @override
  void update(
      void Function(GetForecastCalibration200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetForecastCalibration200Response build() => _build();

  _$GetForecastCalibration200Response _build() {
    final _$result = _$v ??
        _$GetForecastCalibration200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'GetForecastCalibration200Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
