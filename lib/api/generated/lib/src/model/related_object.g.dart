// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelatedObjectDirectionEnum _$relatedObjectDirectionEnum_out_ =
    const RelatedObjectDirectionEnum._('out_');
const RelatedObjectDirectionEnum _$relatedObjectDirectionEnum_in_ =
    const RelatedObjectDirectionEnum._('in_');

RelatedObjectDirectionEnum _$relatedObjectDirectionEnumValueOf(String name) {
  switch (name) {
    case 'out_':
      return _$relatedObjectDirectionEnum_out_;
    case 'in_':
      return _$relatedObjectDirectionEnum_in_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RelatedObjectDirectionEnum> _$relatedObjectDirectionEnumValues =
    BuiltSet<RelatedObjectDirectionEnum>(const <RelatedObjectDirectionEnum>[
  _$relatedObjectDirectionEnum_out_,
  _$relatedObjectDirectionEnum_in_,
]);

Serializer<RelatedObjectDirectionEnum> _$relatedObjectDirectionEnumSerializer =
    _$RelatedObjectDirectionEnumSerializer();

class _$RelatedObjectDirectionEnumSerializer
    implements PrimitiveSerializer<RelatedObjectDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'out_': 'out',
    'in_': 'in',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'out': 'out_',
    'in': 'in_',
  };

  @override
  final Iterable<Type> types = const <Type>[RelatedObjectDirectionEnum];
  @override
  final String wireName = 'RelatedObjectDirectionEnum';

  @override
  Object serialize(Serializers serializers, RelatedObjectDirectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RelatedObjectDirectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RelatedObjectDirectionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RelatedObject extends RelatedObject {
  @override
  final Relation relation;
  @override
  final RelatedObjectDirectionEnum direction;
  @override
  final ObjectEnvelope object;
  @override
  final num? distanceKm;

  factory _$RelatedObject([void Function(RelatedObjectBuilder)? updates]) =>
      (RelatedObjectBuilder()..update(updates))._build();

  _$RelatedObject._(
      {required this.relation,
      required this.direction,
      required this.object,
      this.distanceKm})
      : super._();
  @override
  RelatedObject rebuild(void Function(RelatedObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedObjectBuilder toBuilder() => RelatedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedObject &&
        relation == other.relation &&
        direction == other.direction &&
        object == other.object &&
        distanceKm == other.distanceKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relation.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, object.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelatedObject')
          ..add('relation', relation)
          ..add('direction', direction)
          ..add('object', object)
          ..add('distanceKm', distanceKm))
        .toString();
  }
}

class RelatedObjectBuilder
    implements Builder<RelatedObject, RelatedObjectBuilder> {
  _$RelatedObject? _$v;

  RelationBuilder? _relation;
  RelationBuilder get relation => _$this._relation ??= RelationBuilder();
  set relation(RelationBuilder? relation) => _$this._relation = relation;

  RelatedObjectDirectionEnum? _direction;
  RelatedObjectDirectionEnum? get direction => _$this._direction;
  set direction(RelatedObjectDirectionEnum? direction) =>
      _$this._direction = direction;

  ObjectEnvelopeBuilder? _object;
  ObjectEnvelopeBuilder get object =>
      _$this._object ??= ObjectEnvelopeBuilder();
  set object(ObjectEnvelopeBuilder? object) => _$this._object = object;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  RelatedObjectBuilder() {
    RelatedObject._defaults(this);
  }

  RelatedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relation = $v.relation.toBuilder();
      _direction = $v.direction;
      _object = $v.object.toBuilder();
      _distanceKm = $v.distanceKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedObject other) {
    _$v = other as _$RelatedObject;
  }

  @override
  void update(void Function(RelatedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelatedObject build() => _build();

  _$RelatedObject _build() {
    _$RelatedObject _$result;
    try {
      _$result = _$v ??
          _$RelatedObject._(
            relation: relation.build(),
            direction: BuiltValueNullFieldError.checkNotNull(
                direction, r'RelatedObject', 'direction'),
            object: object.build(),
            distanceKm: distanceKm,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'relation';
        relation.build();

        _$failedField = 'object';
        object.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RelatedObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
