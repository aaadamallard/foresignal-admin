// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_chain_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnershipChainRequestDirectionEnum
    _$ownershipChainRequestDirectionEnum_in_ =
    const OwnershipChainRequestDirectionEnum._('in_');
const OwnershipChainRequestDirectionEnum
    _$ownershipChainRequestDirectionEnum_out_ =
    const OwnershipChainRequestDirectionEnum._('out_');
const OwnershipChainRequestDirectionEnum
    _$ownershipChainRequestDirectionEnum_both =
    const OwnershipChainRequestDirectionEnum._('both');

OwnershipChainRequestDirectionEnum _$ownershipChainRequestDirectionEnumValueOf(
    String name) {
  switch (name) {
    case 'in_':
      return _$ownershipChainRequestDirectionEnum_in_;
    case 'out_':
      return _$ownershipChainRequestDirectionEnum_out_;
    case 'both':
      return _$ownershipChainRequestDirectionEnum_both;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnershipChainRequestDirectionEnum>
    _$ownershipChainRequestDirectionEnumValues = BuiltSet<
        OwnershipChainRequestDirectionEnum>(const <OwnershipChainRequestDirectionEnum>[
  _$ownershipChainRequestDirectionEnum_in_,
  _$ownershipChainRequestDirectionEnum_out_,
  _$ownershipChainRequestDirectionEnum_both,
]);

const OwnershipChainRequestTypesEnum _$ownershipChainRequestTypesEnum_owns =
    const OwnershipChainRequestTypesEnum._('owns');
const OwnershipChainRequestTypesEnum _$ownershipChainRequestTypesEnum_controls =
    const OwnershipChainRequestTypesEnum._('controls');
const OwnershipChainRequestTypesEnum
    _$ownershipChainRequestTypesEnum_officerOf =
    const OwnershipChainRequestTypesEnum._('officerOf');
const OwnershipChainRequestTypesEnum
    _$ownershipChainRequestTypesEnum_beneficialOwner =
    const OwnershipChainRequestTypesEnum._('beneficialOwner');
const OwnershipChainRequestTypesEnum
    _$ownershipChainRequestTypesEnum_affiliatedWith =
    const OwnershipChainRequestTypesEnum._('affiliatedWith');

OwnershipChainRequestTypesEnum _$ownershipChainRequestTypesEnumValueOf(
    String name) {
  switch (name) {
    case 'owns':
      return _$ownershipChainRequestTypesEnum_owns;
    case 'controls':
      return _$ownershipChainRequestTypesEnum_controls;
    case 'officerOf':
      return _$ownershipChainRequestTypesEnum_officerOf;
    case 'beneficialOwner':
      return _$ownershipChainRequestTypesEnum_beneficialOwner;
    case 'affiliatedWith':
      return _$ownershipChainRequestTypesEnum_affiliatedWith;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnershipChainRequestTypesEnum>
    _$ownershipChainRequestTypesEnumValues = BuiltSet<
        OwnershipChainRequestTypesEnum>(const <OwnershipChainRequestTypesEnum>[
  _$ownershipChainRequestTypesEnum_owns,
  _$ownershipChainRequestTypesEnum_controls,
  _$ownershipChainRequestTypesEnum_officerOf,
  _$ownershipChainRequestTypesEnum_beneficialOwner,
  _$ownershipChainRequestTypesEnum_affiliatedWith,
]);

Serializer<OwnershipChainRequestDirectionEnum>
    _$ownershipChainRequestDirectionEnumSerializer =
    _$OwnershipChainRequestDirectionEnumSerializer();
Serializer<OwnershipChainRequestTypesEnum>
    _$ownershipChainRequestTypesEnumSerializer =
    _$OwnershipChainRequestTypesEnumSerializer();

class _$OwnershipChainRequestDirectionEnumSerializer
    implements PrimitiveSerializer<OwnershipChainRequestDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'in_': 'in',
    'out_': 'out',
    'both': 'both',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'in': 'in_',
    'out': 'out_',
    'both': 'both',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnershipChainRequestDirectionEnum];
  @override
  final String wireName = 'OwnershipChainRequestDirectionEnum';

  @override
  Object serialize(
          Serializers serializers, OwnershipChainRequestDirectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnershipChainRequestDirectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnershipChainRequestDirectionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OwnershipChainRequestTypesEnumSerializer
    implements PrimitiveSerializer<OwnershipChainRequestTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'owns': 'owns',
    'controls': 'controls',
    'officerOf': 'officer-of',
    'beneficialOwner': 'beneficial-owner',
    'affiliatedWith': 'affiliated-with',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'owns': 'owns',
    'controls': 'controls',
    'officer-of': 'officerOf',
    'beneficial-owner': 'beneficialOwner',
    'affiliated-with': 'affiliatedWith',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnershipChainRequestTypesEnum];
  @override
  final String wireName = 'OwnershipChainRequestTypesEnum';

  @override
  Object serialize(
          Serializers serializers, OwnershipChainRequestTypesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnershipChainRequestTypesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnershipChainRequestTypesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OwnershipChainRequest extends OwnershipChainRequest {
  @override
  final BuiltList<String> refs;
  @override
  final int? depth;
  @override
  final OwnershipChainRequestDirectionEnum? direction;
  @override
  final BuiltList<OwnershipChainRequestTypesEnum>? types;
  @override
  final num? minConfidence;
  @override
  final DateTime? asOf;

  factory _$OwnershipChainRequest(
          [void Function(OwnershipChainRequestBuilder)? updates]) =>
      (OwnershipChainRequestBuilder()..update(updates))._build();

  _$OwnershipChainRequest._(
      {required this.refs,
      this.depth,
      this.direction,
      this.types,
      this.minConfidence,
      this.asOf})
      : super._();
  @override
  OwnershipChainRequest rebuild(
          void Function(OwnershipChainRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnershipChainRequestBuilder toBuilder() =>
      OwnershipChainRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnershipChainRequest &&
        refs == other.refs &&
        depth == other.depth &&
        direction == other.direction &&
        types == other.types &&
        minConfidence == other.minConfidence &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, depth.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, minConfidence.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnershipChainRequest')
          ..add('refs', refs)
          ..add('depth', depth)
          ..add('direction', direction)
          ..add('types', types)
          ..add('minConfidence', minConfidence)
          ..add('asOf', asOf))
        .toString();
  }
}

class OwnershipChainRequestBuilder
    implements Builder<OwnershipChainRequest, OwnershipChainRequestBuilder> {
  _$OwnershipChainRequest? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  int? _depth;
  int? get depth => _$this._depth;
  set depth(int? depth) => _$this._depth = depth;

  OwnershipChainRequestDirectionEnum? _direction;
  OwnershipChainRequestDirectionEnum? get direction => _$this._direction;
  set direction(OwnershipChainRequestDirectionEnum? direction) =>
      _$this._direction = direction;

  ListBuilder<OwnershipChainRequestTypesEnum>? _types;
  ListBuilder<OwnershipChainRequestTypesEnum> get types =>
      _$this._types ??= ListBuilder<OwnershipChainRequestTypesEnum>();
  set types(ListBuilder<OwnershipChainRequestTypesEnum>? types) =>
      _$this._types = types;

  num? _minConfidence;
  num? get minConfidence => _$this._minConfidence;
  set minConfidence(num? minConfidence) =>
      _$this._minConfidence = minConfidence;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  OwnershipChainRequestBuilder() {
    OwnershipChainRequest._defaults(this);
  }

  OwnershipChainRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _depth = $v.depth;
      _direction = $v.direction;
      _types = $v.types?.toBuilder();
      _minConfidence = $v.minConfidence;
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnershipChainRequest other) {
    _$v = other as _$OwnershipChainRequest;
  }

  @override
  void update(void Function(OwnershipChainRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnershipChainRequest build() => _build();

  _$OwnershipChainRequest _build() {
    _$OwnershipChainRequest _$result;
    try {
      _$result = _$v ??
          _$OwnershipChainRequest._(
            refs: refs.build(),
            depth: depth,
            direction: direction,
            types: _types?.build(),
            minConfidence: minConfidence,
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();

        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OwnershipChainRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
