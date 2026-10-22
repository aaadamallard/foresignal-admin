//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_place.g.dart';

/// Where a claim says something happened (reported, never observed)
///
/// Properties:
/// * [ref] - 036 place or 040 region; null for unresolved names
/// * [name]
/// * [geom] - Null when unresolved (LLM places not in the gazetteer)
/// * [precision]
/// * [confidence] - By ambiguity and population
/// * [regionCode] - 040 region code of the resolved place (country or admin-1), or null (136)
@BuiltValue()
abstract class ClaimPlace implements Built<ClaimPlace, ClaimPlaceBuilder> {
  /// 036 place or 040 region; null for unresolved names
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// Null when unresolved (LLM places not in the gazetteer)
  @BuiltValueField(wireName: r'geom')
  Geometry? get geom;

  @BuiltValueField(wireName: r'precision')
  ClaimPlacePrecisionEnum get precision;
  // enum precisionEnum {  point,  locality,  admin1,  country,  };

  /// By ambiguity and population
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// 040 region code of the resolved place (country or admin-1), or null (136)
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  ClaimPlace._();

  factory ClaimPlace([void updates(ClaimPlaceBuilder b)]) = _$ClaimPlace;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimPlaceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimPlace> get serializer => _$ClaimPlaceSerializer();
}

class _$ClaimPlaceSerializer implements PrimitiveSerializer<ClaimPlace> {
  @override
  final Iterable<Type> types = const [ClaimPlace, _$ClaimPlace];

  @override
  final String wireName = r'ClaimPlace';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimPlace object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.geom != null) {
      yield r'geom';
      yield serializers.serialize(
        object.geom,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'precision';
    yield serializers.serialize(
      object.precision,
      specifiedType: const FullType(ClaimPlacePrecisionEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimPlace object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimPlaceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'geom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geom.replace(valueDes);
          break;
        case r'precision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClaimPlacePrecisionEnum),
                  )
                  as ClaimPlacePrecisionEnum;
          result.precision = valueDes;
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.confidence = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimPlace deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimPlaceBuilder();
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

class ClaimPlacePrecisionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'point')
  static const ClaimPlacePrecisionEnum point = _$claimPlacePrecisionEnum_point;
  @BuiltValueEnumConst(wireName: r'locality')
  static const ClaimPlacePrecisionEnum locality =
      _$claimPlacePrecisionEnum_locality;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const ClaimPlacePrecisionEnum admin1 =
      _$claimPlacePrecisionEnum_admin1;
  @BuiltValueEnumConst(wireName: r'country')
  static const ClaimPlacePrecisionEnum country =
      _$claimPlacePrecisionEnum_country;

  static Serializer<ClaimPlacePrecisionEnum> get serializer =>
      _$claimPlacePrecisionEnumSerializer;

  const ClaimPlacePrecisionEnum._(String name) : super(name);

  static BuiltSet<ClaimPlacePrecisionEnum> get values =>
      _$claimPlacePrecisionEnumValues;
  static ClaimPlacePrecisionEnum valueOf(String name) =>
      _$claimPlacePrecisionEnumValueOf(name);
}
