//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_spatial.g.dart';

/// Spatial rule linking antecedent and consequent occurrences (103 forms)
///
/// Properties:
/// * [rule]
/// * [withinKm]
/// * [regionLevel]
@BuiltValue()
abstract class PrecursorSpatial
    implements Built<PrecursorSpatial, PrecursorSpatialBuilder> {
  @BuiltValueField(wireName: r'rule')
  PrecursorSpatialRuleEnum get rule;
  // enum ruleEnum {  sameEntity,  withinKm,  sameRegion,  none,  };

  @BuiltValueField(wireName: r'withinKm')
  num? get withinKm;

  @BuiltValueField(wireName: r'regionLevel')
  PrecursorSpatialRegionLevelEnum? get regionLevel;
  // enum regionLevelEnum {  country,  admin1,  };

  PrecursorSpatial._();

  factory PrecursorSpatial([void updates(PrecursorSpatialBuilder b)]) =
      _$PrecursorSpatial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorSpatialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorSpatial> get serializer =>
      _$PrecursorSpatialSerializer();
}

class _$PrecursorSpatialSerializer
    implements PrimitiveSerializer<PrecursorSpatial> {
  @override
  final Iterable<Type> types = const [PrecursorSpatial, _$PrecursorSpatial];

  @override
  final String wireName = r'PrecursorSpatial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorSpatial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rule';
    yield serializers.serialize(
      object.rule,
      specifiedType: const FullType(PrecursorSpatialRuleEnum),
    );
    if (object.withinKm != null) {
      yield r'withinKm';
      yield serializers.serialize(
        object.withinKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.regionLevel != null) {
      yield r'regionLevel';
      yield serializers.serialize(
        object.regionLevel,
        specifiedType: const FullType.nullable(PrecursorSpatialRegionLevelEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorSpatial object, {
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
    required PrecursorSpatialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrecursorSpatialRuleEnum),
                  )
                  as PrecursorSpatialRuleEnum;
          result.rule = valueDes;
          break;
        case r'withinKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.withinKm = valueDes;
          break;
        case r'regionLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PrecursorSpatialRegionLevelEnum,
                    ),
                  )
                  as PrecursorSpatialRegionLevelEnum?;
          if (valueDes == null) continue;
          result.regionLevel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorSpatial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorSpatialBuilder();
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

class PrecursorSpatialRuleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sameEntity')
  static const PrecursorSpatialRuleEnum sameEntity =
      _$precursorSpatialRuleEnum_sameEntity;
  @BuiltValueEnumConst(wireName: r'withinKm')
  static const PrecursorSpatialRuleEnum withinKm =
      _$precursorSpatialRuleEnum_withinKm;
  @BuiltValueEnumConst(wireName: r'sameRegion')
  static const PrecursorSpatialRuleEnum sameRegion =
      _$precursorSpatialRuleEnum_sameRegion;
  @BuiltValueEnumConst(wireName: r'none')
  static const PrecursorSpatialRuleEnum none = _$precursorSpatialRuleEnum_none;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrecursorSpatialRuleEnum unknownDefaultOpenApi =
      _$precursorSpatialRuleEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorSpatialRuleEnum> get serializer =>
      _$precursorSpatialRuleEnumSerializer;

  const PrecursorSpatialRuleEnum._(String name) : super(name);

  static BuiltSet<PrecursorSpatialRuleEnum> get values =>
      _$precursorSpatialRuleEnumValues;
  static PrecursorSpatialRuleEnum valueOf(String name) =>
      _$precursorSpatialRuleEnumValueOf(name);
}

class PrecursorSpatialRegionLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'country')
  static const PrecursorSpatialRegionLevelEnum country =
      _$precursorSpatialRegionLevelEnum_country;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const PrecursorSpatialRegionLevelEnum admin1 =
      _$precursorSpatialRegionLevelEnum_admin1;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PrecursorSpatialRegionLevelEnum unknownDefaultOpenApi =
      _$precursorSpatialRegionLevelEnum_unknownDefaultOpenApi;

  static Serializer<PrecursorSpatialRegionLevelEnum> get serializer =>
      _$precursorSpatialRegionLevelEnumSerializer;

  const PrecursorSpatialRegionLevelEnum._(String name) : super(name);

  static BuiltSet<PrecursorSpatialRegionLevelEnum> get values =>
      _$precursorSpatialRegionLevelEnumValues;
  static PrecursorSpatialRegionLevelEnum valueOf(String name) =>
      _$precursorSpatialRegionLevelEnumValueOf(name);
}
