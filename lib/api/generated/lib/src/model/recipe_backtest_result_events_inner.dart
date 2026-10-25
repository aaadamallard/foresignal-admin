//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/intel_event_member.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_backtest_result_events_inner.g.dart';

/// A would-be event
///
/// Properties:
/// * [type]
/// * [startTime]
/// * [endTime]
/// * [members]
/// * [confidence]
/// * [evidenceQuality]
@BuiltValue()
abstract class RecipeBacktestResultEventsInner
    implements
        Built<
          RecipeBacktestResultEventsInner,
          RecipeBacktestResultEventsInnerBuilder
        > {
  @BuiltValueField(wireName: r'type')
  RecipeBacktestResultEventsInnerTypeEnum get type;
  // enum typeEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'startTime')
  DateTime get startTime;

  @BuiltValueField(wireName: r'endTime')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'members')
  BuiltList<IntelEventMember> get members;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  @BuiltValueField(wireName: r'evidenceQuality')
  RecipeBacktestResultEventsInnerEvidenceQualityEnum? get evidenceQuality;
  // enum evidenceQualityEnum {  strong,  moderate,  weak,  insufficient,  };

  RecipeBacktestResultEventsInner._();

  factory RecipeBacktestResultEventsInner([
    void updates(RecipeBacktestResultEventsInnerBuilder b),
  ]) = _$RecipeBacktestResultEventsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeBacktestResultEventsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeBacktestResultEventsInner> get serializer =>
      _$RecipeBacktestResultEventsInnerSerializer();
}

class _$RecipeBacktestResultEventsInnerSerializer
    implements PrimitiveSerializer<RecipeBacktestResultEventsInner> {
  @override
  final Iterable<Type> types = const [
    RecipeBacktestResultEventsInner,
    _$RecipeBacktestResultEventsInner,
  ];

  @override
  final String wireName = r'RecipeBacktestResultEventsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeBacktestResultEventsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(RecipeBacktestResultEventsInnerTypeEnum),
    );
    yield r'startTime';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.endTime != null) {
      yield r'endTime';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'members';
    yield serializers.serialize(
      object.members,
      specifiedType: const FullType(BuiltList, [FullType(IntelEventMember)]),
    );
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.evidenceQuality != null) {
      yield r'evidenceQuality';
      yield serializers.serialize(
        object.evidenceQuality,
        specifiedType: const FullType(
          RecipeBacktestResultEventsInnerEvidenceQualityEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeBacktestResultEventsInner object, {
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
    required RecipeBacktestResultEventsInnerBuilder result,
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
                      RecipeBacktestResultEventsInnerTypeEnum,
                    ),
                  )
                  as RecipeBacktestResultEventsInnerTypeEnum;
          result.type = valueDes;
          break;
        case r'startTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startTime = valueDes;
          break;
        case r'endTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        case r'members':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(IntelEventMember),
                    ]),
                  )
                  as BuiltList<IntelEventMember>;
          result.members.replace(valueDes);
          break;
        case r'confidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'evidenceQuality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RecipeBacktestResultEventsInnerEvidenceQualityEnum,
                    ),
                  )
                  as RecipeBacktestResultEventsInnerEvidenceQualityEnum?;
          if (valueDes == null) continue;
          result.evidenceQuality = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecipeBacktestResultEventsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeBacktestResultEventsInnerBuilder();
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

class RecipeBacktestResultEventsInnerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const RecipeBacktestResultEventsInnerTypeEnum maritimeDisruption =
      _$recipeBacktestResultEventsInnerTypeEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const RecipeBacktestResultEventsInnerTypeEnum aviationAnomaly =
      _$recipeBacktestResultEventsInnerTypeEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const RecipeBacktestResultEventsInnerTypeEnum
  infrastructureDisruption =
      _$recipeBacktestResultEventsInnerTypeEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const RecipeBacktestResultEventsInnerTypeEnum weatherImpact =
      _$recipeBacktestResultEventsInnerTypeEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const RecipeBacktestResultEventsInnerTypeEnum seismic =
      _$recipeBacktestResultEventsInnerTypeEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const RecipeBacktestResultEventsInnerTypeEnum custom =
      _$recipeBacktestResultEventsInnerTypeEnum_custom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RecipeBacktestResultEventsInnerTypeEnum unknownDefaultOpenApi =
      _$recipeBacktestResultEventsInnerTypeEnum_unknownDefaultOpenApi;

  static Serializer<RecipeBacktestResultEventsInnerTypeEnum> get serializer =>
      _$recipeBacktestResultEventsInnerTypeEnumSerializer;

  const RecipeBacktestResultEventsInnerTypeEnum._(String name) : super(name);

  static BuiltSet<RecipeBacktestResultEventsInnerTypeEnum> get values =>
      _$recipeBacktestResultEventsInnerTypeEnumValues;
  static RecipeBacktestResultEventsInnerTypeEnum valueOf(String name) =>
      _$recipeBacktestResultEventsInnerTypeEnumValueOf(name);
}

class RecipeBacktestResultEventsInnerEvidenceQualityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'strong')
  static const RecipeBacktestResultEventsInnerEvidenceQualityEnum strong =
      _$recipeBacktestResultEventsInnerEvidenceQualityEnum_strong;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const RecipeBacktestResultEventsInnerEvidenceQualityEnum moderate =
      _$recipeBacktestResultEventsInnerEvidenceQualityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'weak')
  static const RecipeBacktestResultEventsInnerEvidenceQualityEnum weak =
      _$recipeBacktestResultEventsInnerEvidenceQualityEnum_weak;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const RecipeBacktestResultEventsInnerEvidenceQualityEnum insufficient =
      _$recipeBacktestResultEventsInnerEvidenceQualityEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RecipeBacktestResultEventsInnerEvidenceQualityEnum
  unknownDefaultOpenApi =
      _$recipeBacktestResultEventsInnerEvidenceQualityEnum_unknownDefaultOpenApi;

  static Serializer<RecipeBacktestResultEventsInnerEvidenceQualityEnum>
  get serializer =>
      _$recipeBacktestResultEventsInnerEvidenceQualityEnumSerializer;

  const RecipeBacktestResultEventsInnerEvidenceQualityEnum._(String name)
    : super(name);

  static BuiltSet<RecipeBacktestResultEventsInnerEvidenceQualityEnum>
  get values => _$recipeBacktestResultEventsInnerEvidenceQualityEnumValues;
  static RecipeBacktestResultEventsInnerEvidenceQualityEnum valueOf(
    String name,
  ) => _$recipeBacktestResultEventsInnerEvidenceQualityEnumValueOf(name);
}
