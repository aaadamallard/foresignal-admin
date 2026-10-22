//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/relation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'related_object.g.dart';

/// A neighbour with the relation that links it
///
/// Properties:
/// * [relation]
/// * [direction]
/// * [object]
/// * [distanceKm]
@BuiltValue()
abstract class RelatedObject
    implements Built<RelatedObject, RelatedObjectBuilder> {
  @BuiltValueField(wireName: r'relation')
  Relation get relation;

  @BuiltValueField(wireName: r'direction')
  RelatedObjectDirectionEnum get direction;
  // enum directionEnum {  out,  in,  };

  @BuiltValueField(wireName: r'object')
  ObjectEnvelope get object;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  RelatedObject._();

  factory RelatedObject([void updates(RelatedObjectBuilder b)]) =
      _$RelatedObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelatedObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelatedObject> get serializer =>
      _$RelatedObjectSerializer();
}

class _$RelatedObjectSerializer implements PrimitiveSerializer<RelatedObject> {
  @override
  final Iterable<Type> types = const [RelatedObject, _$RelatedObject];

  @override
  final String wireName = r'RelatedObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelatedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'relation';
    yield serializers.serialize(
      object.relation,
      specifiedType: const FullType(Relation),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(RelatedObjectDirectionEnum),
    );
    yield r'object';
    yield serializers.serialize(
      object.object,
      specifiedType: const FullType(ObjectEnvelope),
    );
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelatedObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RelatedObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'relation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Relation),
          ) as Relation;
          result.relation.replace(valueDes);
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RelatedObjectDirectionEnum),
          ) as RelatedObjectDirectionEnum;
          result.direction = valueDes;
          break;
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectEnvelope),
          ) as ObjectEnvelope;
          result.object.replace(valueDes);
          break;
        case r'distanceKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelatedObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelatedObjectBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class RelatedObjectDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'out')
  static const RelatedObjectDirectionEnum out_ =
      _$relatedObjectDirectionEnum_out_;
  @BuiltValueEnumConst(wireName: r'in')
  static const RelatedObjectDirectionEnum in_ =
      _$relatedObjectDirectionEnum_in_;

  static Serializer<RelatedObjectDirectionEnum> get serializer =>
      _$relatedObjectDirectionEnumSerializer;

  const RelatedObjectDirectionEnum._(String name) : super(name);

  static BuiltSet<RelatedObjectDirectionEnum> get values =>
      _$relatedObjectDirectionEnumValues;
  static RelatedObjectDirectionEnum valueOf(String name) =>
      _$relatedObjectDirectionEnumValueOf(name);
}
