// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_principal200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetPrincipal200ResponseKindEnum _$getPrincipal200ResponseKindEnum_person =
    const GetPrincipal200ResponseKindEnum._('person');
const GetPrincipal200ResponseKindEnum _$getPrincipal200ResponseKindEnum_agent =
    const GetPrincipal200ResponseKindEnum._('agent');
const GetPrincipal200ResponseKindEnum
_$getPrincipal200ResponseKindEnum_service =
    const GetPrincipal200ResponseKindEnum._('service');
const GetPrincipal200ResponseKindEnum
_$getPrincipal200ResponseKindEnum_unknownDefaultOpenApi =
    const GetPrincipal200ResponseKindEnum._('unknownDefaultOpenApi');

GetPrincipal200ResponseKindEnum _$getPrincipal200ResponseKindEnumValueOf(
  String name,
) {
  switch (name) {
    case 'person':
      return _$getPrincipal200ResponseKindEnum_person;
    case 'agent':
      return _$getPrincipal200ResponseKindEnum_agent;
    case 'service':
      return _$getPrincipal200ResponseKindEnum_service;
    case 'unknownDefaultOpenApi':
      return _$getPrincipal200ResponseKindEnum_unknownDefaultOpenApi;
    default:
      return _$getPrincipal200ResponseKindEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GetPrincipal200ResponseKindEnum>
_$getPrincipal200ResponseKindEnumValues =
    BuiltSet<GetPrincipal200ResponseKindEnum>(
      const <GetPrincipal200ResponseKindEnum>[
        _$getPrincipal200ResponseKindEnum_person,
        _$getPrincipal200ResponseKindEnum_agent,
        _$getPrincipal200ResponseKindEnum_service,
        _$getPrincipal200ResponseKindEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<GetPrincipal200ResponseKindEnum>
_$getPrincipal200ResponseKindEnumSerializer =
    _$GetPrincipal200ResponseKindEnumSerializer();

class _$GetPrincipal200ResponseKindEnumSerializer
    implements PrimitiveSerializer<GetPrincipal200ResponseKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'person': 'person',
    'agent': 'agent',
    'service': 'service',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[GetPrincipal200ResponseKindEnum];
  @override
  final String wireName = 'GetPrincipal200ResponseKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    GetPrincipal200ResponseKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GetPrincipal200ResponseKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GetPrincipal200ResponseKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GetPrincipal200Response extends GetPrincipal200Response {
  @override
  final AnyOf anyOf;

  factory _$GetPrincipal200Response([
    void Function(GetPrincipal200ResponseBuilder)? updates,
  ]) => (GetPrincipal200ResponseBuilder()..update(updates))._build();

  _$GetPrincipal200Response._({required this.anyOf}) : super._();
  @override
  GetPrincipal200Response rebuild(
    void Function(GetPrincipal200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetPrincipal200ResponseBuilder toBuilder() =>
      GetPrincipal200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPrincipal200Response && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetPrincipal200Response',
    )..add('anyOf', anyOf)).toString();
  }
}

class GetPrincipal200ResponseBuilder
    implements
        Builder<GetPrincipal200Response, GetPrincipal200ResponseBuilder> {
  _$GetPrincipal200Response? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  GetPrincipal200ResponseBuilder() {
    GetPrincipal200Response._defaults(this);
  }

  GetPrincipal200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPrincipal200Response other) {
    _$v = other as _$GetPrincipal200Response;
  }

  @override
  void update(void Function(GetPrincipal200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPrincipal200Response build() => _build();

  _$GetPrincipal200Response _build() {
    final _$result =
        _$v ??
        _$GetPrincipal200Response._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
            anyOf,
            r'GetPrincipal200Response',
            'anyOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
