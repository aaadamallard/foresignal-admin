//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_citation_corroboration.g.dart';

/// Briefing-run citations of a briefing with `includeCorroboration` only: how well-supported the item is (NP-007), from the 154 corroboration policy; absent elsewhere
///
/// Properties:
/// * [evidenceQuality]
/// * [independentSources]
/// * [credibility] - Admiralty information credibility; 6 means unknown
/// * [reliability] - Source reliability (109); F means unknown
@BuiltValue()
abstract class AskCitationCorroboration
    implements
        Built<AskCitationCorroboration, AskCitationCorroborationBuilder> {
  @BuiltValueField(wireName: r'evidenceQuality')
  AskCitationCorroborationEvidenceQualityEnum get evidenceQuality;
  // enum evidenceQualityEnum {  strong,  moderate,  weak,  insufficient,  };

  @BuiltValueField(wireName: r'independentSources')
  int get independentSources;

  /// Admiralty information credibility; 6 means unknown
  @BuiltValueField(wireName: r'credibility')
  int? get credibility;

  /// Source reliability (109); F means unknown
  @BuiltValueField(wireName: r'reliability')
  AskCitationCorroborationReliabilityEnum? get reliability;
  // enum reliabilityEnum {  A,  B,  C,  D,  E,  F,  };

  AskCitationCorroboration._();

  factory AskCitationCorroboration([
    void updates(AskCitationCorroborationBuilder b),
  ]) = _$AskCitationCorroboration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskCitationCorroborationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskCitationCorroboration> get serializer =>
      _$AskCitationCorroborationSerializer();
}

class _$AskCitationCorroborationSerializer
    implements PrimitiveSerializer<AskCitationCorroboration> {
  @override
  final Iterable<Type> types = const [
    AskCitationCorroboration,
    _$AskCitationCorroboration,
  ];

  @override
  final String wireName = r'AskCitationCorroboration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskCitationCorroboration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'evidenceQuality';
    yield serializers.serialize(
      object.evidenceQuality,
      specifiedType: const FullType(
        AskCitationCorroborationEvidenceQualityEnum,
      ),
    );
    yield r'independentSources';
    yield serializers.serialize(
      object.independentSources,
      specifiedType: const FullType(int),
    );
    if (object.credibility != null) {
      yield r'credibility';
      yield serializers.serialize(
        object.credibility,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reliability != null) {
      yield r'reliability';
      yield serializers.serialize(
        object.reliability,
        specifiedType: const FullType.nullable(
          AskCitationCorroborationReliabilityEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskCitationCorroboration object, {
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
    required AskCitationCorroborationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evidenceQuality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AskCitationCorroborationEvidenceQualityEnum,
                    ),
                  )
                  as AskCitationCorroborationEvidenceQualityEnum;
          result.evidenceQuality = valueDes;
          break;
        case r'independentSources':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.independentSources = valueDes;
          break;
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.credibility = valueDes;
          break;
        case r'reliability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AskCitationCorroborationReliabilityEnum,
                    ),
                  )
                  as AskCitationCorroborationReliabilityEnum?;
          if (valueDes == null) continue;
          result.reliability = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskCitationCorroboration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskCitationCorroborationBuilder();
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

class AskCitationCorroborationEvidenceQualityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'strong')
  static const AskCitationCorroborationEvidenceQualityEnum strong =
      _$askCitationCorroborationEvidenceQualityEnum_strong;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const AskCitationCorroborationEvidenceQualityEnum moderate =
      _$askCitationCorroborationEvidenceQualityEnum_moderate;
  @BuiltValueEnumConst(wireName: r'weak')
  static const AskCitationCorroborationEvidenceQualityEnum weak =
      _$askCitationCorroborationEvidenceQualityEnum_weak;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const AskCitationCorroborationEvidenceQualityEnum insufficient =
      _$askCitationCorroborationEvidenceQualityEnum_insufficient;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskCitationCorroborationEvidenceQualityEnum
  unknownDefaultOpenApi =
      _$askCitationCorroborationEvidenceQualityEnum_unknownDefaultOpenApi;

  static Serializer<AskCitationCorroborationEvidenceQualityEnum>
  get serializer => _$askCitationCorroborationEvidenceQualityEnumSerializer;

  const AskCitationCorroborationEvidenceQualityEnum._(String name)
    : super(name);

  static BuiltSet<AskCitationCorroborationEvidenceQualityEnum> get values =>
      _$askCitationCorroborationEvidenceQualityEnumValues;
  static AskCitationCorroborationEvidenceQualityEnum valueOf(String name) =>
      _$askCitationCorroborationEvidenceQualityEnumValueOf(name);
}

/// Source reliability (109); F means unknown
class AskCitationCorroborationReliabilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A')
  static const AskCitationCorroborationReliabilityEnum A =
      _$askCitationCorroborationReliabilityEnum_A;
  @BuiltValueEnumConst(wireName: r'B')
  static const AskCitationCorroborationReliabilityEnum B =
      _$askCitationCorroborationReliabilityEnum_B;
  @BuiltValueEnumConst(wireName: r'C')
  static const AskCitationCorroborationReliabilityEnum C =
      _$askCitationCorroborationReliabilityEnum_C;
  @BuiltValueEnumConst(wireName: r'D')
  static const AskCitationCorroborationReliabilityEnum D =
      _$askCitationCorroborationReliabilityEnum_D;
  @BuiltValueEnumConst(wireName: r'E')
  static const AskCitationCorroborationReliabilityEnum E =
      _$askCitationCorroborationReliabilityEnum_E;
  @BuiltValueEnumConst(wireName: r'F')
  static const AskCitationCorroborationReliabilityEnum F =
      _$askCitationCorroborationReliabilityEnum_F;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AskCitationCorroborationReliabilityEnum unknownDefaultOpenApi =
      _$askCitationCorroborationReliabilityEnum_unknownDefaultOpenApi;

  static Serializer<AskCitationCorroborationReliabilityEnum> get serializer =>
      _$askCitationCorroborationReliabilityEnumSerializer;

  const AskCitationCorroborationReliabilityEnum._(String name) : super(name);

  static BuiltSet<AskCitationCorroborationReliabilityEnum> get values =>
      _$askCitationCorroborationReliabilityEnumValues;
  static AskCitationCorroborationReliabilityEnum valueOf(String name) =>
      _$askCitationCorroborationReliabilityEnumValueOf(name);
}
