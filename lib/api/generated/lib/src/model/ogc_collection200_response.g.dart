// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collection200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OgcCollection200ResponseItemTypeEnum
_$ogcCollection200ResponseItemTypeEnum_coverage =
    const OgcCollection200ResponseItemTypeEnum._('coverage');

OgcCollection200ResponseItemTypeEnum
_$ogcCollection200ResponseItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'coverage':
      return _$ogcCollection200ResponseItemTypeEnum_coverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OgcCollection200ResponseItemTypeEnum>
_$ogcCollection200ResponseItemTypeEnumValues =
    BuiltSet<OgcCollection200ResponseItemTypeEnum>(
      const <OgcCollection200ResponseItemTypeEnum>[
        _$ogcCollection200ResponseItemTypeEnum_coverage,
      ],
    );

Serializer<OgcCollection200ResponseItemTypeEnum>
_$ogcCollection200ResponseItemTypeEnumSerializer =
    _$OgcCollection200ResponseItemTypeEnumSerializer();

class _$OgcCollection200ResponseItemTypeEnumSerializer
    implements PrimitiveSerializer<OgcCollection200ResponseItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'coverage': 'coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'coverage': 'coverage',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OgcCollection200ResponseItemTypeEnum,
  ];
  @override
  final String wireName = 'OgcCollection200ResponseItemTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OgcCollection200ResponseItemTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OgcCollection200ResponseItemTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OgcCollection200ResponseItemTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OgcCollection200Response extends OgcCollection200Response {
  @override
  final OneOf oneOf;

  factory _$OgcCollection200Response([
    void Function(OgcCollection200ResponseBuilder)? updates,
  ]) => (OgcCollection200ResponseBuilder()..update(updates))._build();

  _$OgcCollection200Response._({required this.oneOf}) : super._();
  @override
  OgcCollection200Response rebuild(
    void Function(OgcCollection200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OgcCollection200ResponseBuilder toBuilder() =>
      OgcCollection200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollection200Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(
      r'OgcCollection200Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class OgcCollection200ResponseBuilder
    implements
        Builder<OgcCollection200Response, OgcCollection200ResponseBuilder> {
  _$OgcCollection200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OgcCollection200ResponseBuilder() {
    OgcCollection200Response._defaults(this);
  }

  OgcCollection200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollection200Response other) {
    _$v = other as _$OgcCollection200Response;
  }

  @override
  void update(void Function(OgcCollection200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollection200Response build() => _build();

  _$OgcCollection200Response _build() {
    final _$result =
        _$v ??
        _$OgcCollection200Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'OgcCollection200Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
