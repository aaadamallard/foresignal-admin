//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_dedup.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_seed.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_activate_at.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_contradictions_inner.dart';
import 'package:foresignal_api/src/model/correlation_recipe_definition_joins_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'correlation_recipe_definition.g.dart';

/// Recipe definition: seed, joins, thresholds, contradictions, dedup and lifecycle. Conditions use the 017 condition grammar.
///
/// Properties:
/// * [type]
/// * [seed]
/// * [joins]
/// * [minMembers]
/// * [minSignalFamilies]
/// * [activateAt]
/// * [contradictions]
/// * [severityMap] - Rule → severity mapping
/// * [dedup]
/// * [quietPeriod] - Resolve after this long without new supporting evidence. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [reopenWindow] - Reopen when evidence arrives within this window after resolution. ISO-8601 duration or shorthand (30m, 6h, 7d).
@BuiltValue()
abstract class CorrelationRecipeDefinition
    implements
        Built<CorrelationRecipeDefinition, CorrelationRecipeDefinitionBuilder> {
  @BuiltValueField(wireName: r'type')
  CorrelationRecipeDefinitionTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'seed')
  CorrelationRecipeDefinitionSeed get seed;

  @BuiltValueField(wireName: r'joins')
  BuiltList<CorrelationRecipeDefinitionJoinsInner>? get joins;

  @BuiltValueField(wireName: r'minMembers')
  int? get minMembers;

  @BuiltValueField(wireName: r'minSignalFamilies')
  int? get minSignalFamilies;

  @BuiltValueField(wireName: r'activateAt')
  CorrelationRecipeDefinitionActivateAt? get activateAt;

  @BuiltValueField(wireName: r'contradictions')
  BuiltList<CorrelationRecipeDefinitionContradictionsInner>? get contradictions;

  /// Rule → severity mapping
  @BuiltValueField(wireName: r'severityMap')
  BuiltMap<String, Severity>? get severityMap;

  @BuiltValueField(wireName: r'dedup')
  CorrelationRecipeDefinitionDedup? get dedup;

  /// Resolve after this long without new supporting evidence. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'quietPeriod')
  String? get quietPeriod;

  /// Reopen when evidence arrives within this window after resolution. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'reopenWindow')
  String? get reopenWindow;

  CorrelationRecipeDefinition._();

  factory CorrelationRecipeDefinition([
    void updates(CorrelationRecipeDefinitionBuilder b),
  ]) = _$CorrelationRecipeDefinition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorrelationRecipeDefinitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorrelationRecipeDefinition> get serializer =>
      _$CorrelationRecipeDefinitionSerializer();
}

class _$CorrelationRecipeDefinitionSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinition> {
  @override
  final Iterable<Type> types = const [
    CorrelationRecipeDefinition,
    _$CorrelationRecipeDefinition,
  ];

  @override
  final String wireName = r'CorrelationRecipeDefinition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorrelationRecipeDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CorrelationRecipeDefinitionTypeEnum),
    );
    yield r'seed';
    yield serializers.serialize(
      object.seed,
      specifiedType: const FullType(CorrelationRecipeDefinitionSeed),
    );
    if (object.joins != null) {
      yield r'joins';
      yield serializers.serialize(
        object.joins,
        specifiedType: const FullType(BuiltList, [
          FullType(CorrelationRecipeDefinitionJoinsInner),
        ]),
      );
    }
    if (object.minMembers != null) {
      yield r'minMembers';
      yield serializers.serialize(
        object.minMembers,
        specifiedType: const FullType(int),
      );
    }
    if (object.minSignalFamilies != null) {
      yield r'minSignalFamilies';
      yield serializers.serialize(
        object.minSignalFamilies,
        specifiedType: const FullType(int),
      );
    }
    if (object.activateAt != null) {
      yield r'activateAt';
      yield serializers.serialize(
        object.activateAt,
        specifiedType: const FullType(CorrelationRecipeDefinitionActivateAt),
      );
    }
    if (object.contradictions != null) {
      yield r'contradictions';
      yield serializers.serialize(
        object.contradictions,
        specifiedType: const FullType(BuiltList, [
          FullType(CorrelationRecipeDefinitionContradictionsInner),
        ]),
      );
    }
    if (object.severityMap != null) {
      yield r'severityMap';
      yield serializers.serialize(
        object.severityMap,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(Severity),
        ]),
      );
    }
    if (object.dedup != null) {
      yield r'dedup';
      yield serializers.serialize(
        object.dedup,
        specifiedType: const FullType(CorrelationRecipeDefinitionDedup),
      );
    }
    if (object.quietPeriod != null) {
      yield r'quietPeriod';
      yield serializers.serialize(
        object.quietPeriod,
        specifiedType: const FullType(String),
      );
    }
    if (object.reopenWindow != null) {
      yield r'reopenWindow';
      yield serializers.serialize(
        object.reopenWindow,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinition object, {
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
    required CorrelationRecipeDefinitionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      CorrelationRecipeDefinitionTypeEnum,
                    ),
                  )
                  as CorrelationRecipeDefinitionTypeEnum;
          result.type = valueDes;
          break;
        case r'seed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      CorrelationRecipeDefinitionSeed,
                    ),
                  )
                  as CorrelationRecipeDefinitionSeed;
          result.seed.replace(valueDes);
          break;
        case r'joins':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CorrelationRecipeDefinitionJoinsInner),
                    ]),
                  )
                  as BuiltList<CorrelationRecipeDefinitionJoinsInner>?;
          if (valueDes == null) continue;
          result.joins.replace(valueDes);
          break;
        case r'minMembers':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minMembers = valueDes;
          break;
        case r'minSignalFamilies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.minSignalFamilies = valueDes;
          break;
        case r'activateAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CorrelationRecipeDefinitionActivateAt,
                    ),
                  )
                  as CorrelationRecipeDefinitionActivateAt?;
          if (valueDes == null) continue;
          result.activateAt.replace(valueDes);
          break;
        case r'contradictions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CorrelationRecipeDefinitionContradictionsInner),
                    ]),
                  )
                  as BuiltList<CorrelationRecipeDefinitionContradictionsInner>?;
          if (valueDes == null) continue;
          result.contradictions.replace(valueDes);
          break;
        case r'severityMap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(Severity),
                    ]),
                  )
                  as BuiltMap<String, Severity>?;
          if (valueDes == null) continue;
          result.severityMap.replace(valueDes);
          break;
        case r'dedup':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CorrelationRecipeDefinitionDedup,
                    ),
                  )
                  as CorrelationRecipeDefinitionDedup?;
          if (valueDes == null) continue;
          result.dedup.replace(valueDes);
          break;
        case r'quietPeriod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.quietPeriod = valueDes;
          break;
        case r'reopenWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reopenWindow = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorrelationRecipeDefinition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorrelationRecipeDefinitionBuilder();
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

class CorrelationRecipeDefinitionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const CorrelationRecipeDefinitionTypeEnum maritimeDisruption =
      _$correlationRecipeDefinitionTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const CorrelationRecipeDefinitionTypeEnum aviationAnomaly =
      _$correlationRecipeDefinitionTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const CorrelationRecipeDefinitionTypeEnum infrastructureDisruption =
      _$correlationRecipeDefinitionTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const CorrelationRecipeDefinitionTypeEnum weatherImpact =
      _$correlationRecipeDefinitionTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const CorrelationRecipeDefinitionTypeEnum seismic =
      _$correlationRecipeDefinitionTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const CorrelationRecipeDefinitionTypeEnum custom =
      _$correlationRecipeDefinitionTypeEnum_custom;

  static Serializer<CorrelationRecipeDefinitionTypeEnum> get serializer =>
      _$correlationRecipeDefinitionTypeEnumSerializer;

  const CorrelationRecipeDefinitionTypeEnum._(String name) : super(name);

  static BuiltSet<CorrelationRecipeDefinitionTypeEnum> get values =>
      _$correlationRecipeDefinitionTypeEnumValues;
  static CorrelationRecipeDefinitionTypeEnum valueOf(String name) =>
      _$correlationRecipeDefinitionTypeEnumValueOf(name);
}
