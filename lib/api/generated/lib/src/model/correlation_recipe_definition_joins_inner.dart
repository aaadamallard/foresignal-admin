//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_joins_inner_window.dart';
import 'package:foresignal_api/src/model/condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition_joins_inner.g.dart';

/// A join clause
///
/// Properties:
/// * [kinds]
/// * [conditions]
/// * [withinKm]
/// * [sameRegion]
/// * [sameEntity]
/// * [sharedAttribute] - A payload dot-path (prompt 157); a candidate joins when its value at that path equals a seed member's — the join a fraud/relationship recipe needs (address, phone, officer, shared id). Matches on the attribute alone; geometry is not required, the time window still applies.
/// * [window]
/// * [role]
/// * [signalFamily] - Signal family from the shared registry (`intel/signal-families.json`, 119), e.g. `ais-behaviour`, `nav-warning`, `internet-measurement`
/// * [weight]
@BuiltValue()
abstract class CorrelationRecipeDefinitionJoinsInner
    implements
        Built<CorrelationRecipeDefinitionJoinsInner,
            CorrelationRecipeDefinitionJoinsInnerBuilder> {
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'conditions')
  BuiltList<Condition>? get conditions;

  @BuiltValueField(wireName: r'withinKm')
  num? get withinKm;

  @BuiltValueField(wireName: r'sameRegion')
  CorrelationRecipeDefinitionJoinsInnerSameRegionEnum? get sameRegion;
  // enum sameRegionEnum {  country,  admin1,  };

  @BuiltValueField(wireName: r'sameEntity')
  bool? get sameEntity;

  /// A payload dot-path (prompt 157); a candidate joins when its value at that path equals a seed member's — the join a fraud/relationship recipe needs (address, phone, officer, shared id). Matches on the attribute alone; geometry is not required, the time window still applies.
  @BuiltValueField(wireName: r'sharedAttribute')
  String? get sharedAttribute;

  @BuiltValueField(wireName: r'window')
  CorrelationRecipeDefinitionJoinsInnerWindow? get window;

  @BuiltValueField(wireName: r'role')
  CorrelationRecipeDefinitionJoinsInnerRoleEnum? get role;
  // enum roleEnum {  supporting,  contradicting,  context,  };

  /// Signal family from the shared registry (`intel/signal-families.json`, 119), e.g. `ais-behaviour`, `nav-warning`, `internet-measurement`
  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'weight')
  num? get weight;

  CorrelationRecipeDefinitionJoinsInner._();

  factory CorrelationRecipeDefinitionJoinsInner(
          [void updates(CorrelationRecipeDefinitionJoinsInnerBuilder b)]) =
      _$CorrelationRecipeDefinitionJoinsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionJoinsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinitionJoinsInner> get serializer =>
      _$CorrelationRecipeDefinitionJoinsInnerSerializer();
}

class _$CorrelationRecipeDefinitionJoinsInnerSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinitionJoinsInner> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinitionJoinsInner,
    _$CorrelationRecipeDefinitionJoinsInner
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinitionJoinsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(Condition)]),
      );
    }
    if (object.withinKm != null) {
      yield r'withinKm';
      yield serializers.serialize(
        object.withinKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.sameRegion != null) {
      yield r'sameRegion';
      yield serializers.serialize(
        object.sameRegion,
        specifiedType:
            const FullType(CorrelationRecipeDefinitionJoinsInnerSameRegionEnum),
      );
    }
    if (object.sameEntity != null) {
      yield r'sameEntity';
      yield serializers.serialize(
        object.sameEntity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sharedAttribute != null) {
      yield r'sharedAttribute';
      yield serializers.serialize(
        object.sharedAttribute,
        specifiedType: const FullType(String),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType:
            const FullType(CorrelationRecipeDefinitionJoinsInnerWindow),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType:
            const FullType(CorrelationRecipeDefinitionJoinsInnerRoleEnum),
      );
    }
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType(String),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionJoinsInner object, {
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
    required CorrelationRecipeDefinitionJoinsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Condition)]),
          ) as BuiltList<Condition>?;
          if (valueDes == null) continue;
          result.conditions.replace(valueDes);
          break;
        case r'withinKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.withinKm = valueDes;
          break;
        case r'sameRegion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                CorrelationRecipeDefinitionJoinsInnerSameRegionEnum),
          ) as CorrelationRecipeDefinitionJoinsInnerSameRegionEnum?;
          if (valueDes == null) continue;
          result.sameRegion = valueDes;
          break;
        case r'sameEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sameEntity = valueDes;
          break;
        case r'sharedAttribute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sharedAttribute = valueDes;
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                CorrelationRecipeDefinitionJoinsInnerWindow),
          ) as CorrelationRecipeDefinitionJoinsInnerWindow?;
          if (valueDes == null) continue;
          result.window.replace(valueDes);
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                CorrelationRecipeDefinitionJoinsInnerRoleEnum),
          ) as CorrelationRecipeDefinitionJoinsInnerRoleEnum?;
          if (valueDes == null) continue;
          result.role = valueDes;
          break;
        case r'signalFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinitionJoinsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionJoinsInnerBuilder();
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

class CorrelationRecipeDefinitionJoinsInnerSameRegionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'country')
  static const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum country =
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_country;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum admin1 =
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnum_admin1;

  static Serializer<CorrelationRecipeDefinitionJoinsInnerSameRegionEnum>
      get serializer =>
          _$correlationRecipeDefinitionJoinsInnerSameRegionEnumSerializer;

  const CorrelationRecipeDefinitionJoinsInnerSameRegionEnum._(String name)
      : super(name);

  static BuiltSet<CorrelationRecipeDefinitionJoinsInnerSameRegionEnum>
      get values => _$correlationRecipeDefinitionJoinsInnerSameRegionEnumValues;
  static CorrelationRecipeDefinitionJoinsInnerSameRegionEnum valueOf(
          String name) =>
      _$correlationRecipeDefinitionJoinsInnerSameRegionEnumValueOf(name);
}

class CorrelationRecipeDefinitionJoinsInnerRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supporting')
  static const CorrelationRecipeDefinitionJoinsInnerRoleEnum supporting =
      _$correlationRecipeDefinitionJoinsInnerRoleEnum_supporting;
  @BuiltValueEnumConst(wireName: r'contradicting')
  static const CorrelationRecipeDefinitionJoinsInnerRoleEnum contradicting =
      _$correlationRecipeDefinitionJoinsInnerRoleEnum_contradicting;
  @BuiltValueEnumConst(wireName: r'context')
  static const CorrelationRecipeDefinitionJoinsInnerRoleEnum context =
      _$correlationRecipeDefinitionJoinsInnerRoleEnum_context;

  static Serializer<CorrelationRecipeDefinitionJoinsInnerRoleEnum>
      get serializer =>
          _$correlationRecipeDefinitionJoinsInnerRoleEnumSerializer;

  const CorrelationRecipeDefinitionJoinsInnerRoleEnum._(String name)
      : super(name);

  static BuiltSet<CorrelationRecipeDefinitionJoinsInnerRoleEnum> get values =>
      _$correlationRecipeDefinitionJoinsInnerRoleEnumValues;
  static CorrelationRecipeDefinitionJoinsInnerRoleEnum valueOf(String name) =>
      _$correlationRecipeDefinitionJoinsInnerRoleEnumValueOf(name);
}
