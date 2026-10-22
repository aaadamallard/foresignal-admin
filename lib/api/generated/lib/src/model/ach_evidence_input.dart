//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ach_evidence_input.g.dart';

/// Manual or referenced evidence to add to a set's ACH matrix
///
/// Properties:
/// * [source_]
/// * [ref] - Object reference (required unless `manual`)
/// * [description]
/// * [credibility]
/// * [relevance]
/// * [ratings] - Per hypothesis id; required for manual evidence
/// * [citations]
@BuiltValue()
abstract class AchEvidenceInput
    implements Built<AchEvidenceInput, AchEvidenceInputBuilder> {
  @BuiltValueField(wireName: r'source')
  AchEvidenceInputSource_Enum get source_;
  // enum source_Enum {  record,  finding,  intel_event,  alert,  manual,  evidence-item,  social-claim,  };

  /// Object reference (required unless `manual`)
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'credibility')
  AchEvidenceInputCredibilityEnum get credibility;
  // enum credibilityEnum {  H,  M,  L,  };

  @BuiltValueField(wireName: r'relevance')
  AchEvidenceInputRelevanceEnum get relevance;
  // enum relevanceEnum {  H,  M,  L,  };

  /// Per hypothesis id; required for manual evidence
  @BuiltValueField(wireName: r'ratings')
  BuiltMap<String, AchEvidenceInputRatingsEnum>? get ratings;
  // enum ratingsEnum {  CC,  C,  N,  NA,  I,  II,  };

  @BuiltValueField(wireName: r'citations')
  BuiltList<String>? get citations;

  AchEvidenceInput._();

  factory AchEvidenceInput([void updates(AchEvidenceInputBuilder b)]) =
      _$AchEvidenceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchEvidenceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchEvidenceInput> get serializer =>
      _$AchEvidenceInputSerializer();
}

class _$AchEvidenceInputSerializer
    implements PrimitiveSerializer<AchEvidenceInput> {
  @override
  final Iterable<Type> types = const [AchEvidenceInput, _$AchEvidenceInput];

  @override
  final String wireName = r'AchEvidenceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchEvidenceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(AchEvidenceInputSource_Enum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'credibility';
    yield serializers.serialize(
      object.credibility,
      specifiedType: const FullType(AchEvidenceInputCredibilityEnum),
    );
    yield r'relevance';
    yield serializers.serialize(
      object.relevance,
      specifiedType: const FullType(AchEvidenceInputRelevanceEnum),
    );
    if (object.ratings != null) {
      yield r'ratings';
      yield serializers.serialize(
        object.ratings,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(AchEvidenceInputRatingsEnum),
        ]),
      );
    }
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AchEvidenceInput object, {
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
    required AchEvidenceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AchEvidenceInputSource_Enum),
                  )
                  as AchEvidenceInputSource_Enum;
          result.source_ = valueDes;
          break;
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
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'credibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AchEvidenceInputCredibilityEnum,
                    ),
                  )
                  as AchEvidenceInputCredibilityEnum;
          result.credibility = valueDes;
          break;
        case r'relevance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AchEvidenceInputRelevanceEnum,
                    ),
                  )
                  as AchEvidenceInputRelevanceEnum;
          result.relevance = valueDes;
          break;
        case r'ratings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(AchEvidenceInputRatingsEnum),
                    ]),
                  )
                  as BuiltMap<String, AchEvidenceInputRatingsEnum>?;
          if (valueDes == null) continue;
          result.ratings.replace(valueDes);
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchEvidenceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchEvidenceInputBuilder();
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

class AchEvidenceInputSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'record')
  static const AchEvidenceInputSource_Enum record =
      _$achEvidenceInputSourceEnum_record;
  @BuiltValueEnumConst(wireName: r'finding')
  static const AchEvidenceInputSource_Enum finding =
      _$achEvidenceInputSourceEnum_finding;
  @BuiltValueEnumConst(wireName: r'intel_event')
  static const AchEvidenceInputSource_Enum intelEvent =
      _$achEvidenceInputSourceEnum_intelEvent;
  @BuiltValueEnumConst(wireName: r'alert')
  static const AchEvidenceInputSource_Enum alert =
      _$achEvidenceInputSourceEnum_alert;
  @BuiltValueEnumConst(wireName: r'manual')
  static const AchEvidenceInputSource_Enum manual =
      _$achEvidenceInputSourceEnum_manual;
  @BuiltValueEnumConst(wireName: r'evidence-item')
  static const AchEvidenceInputSource_Enum evidenceItem =
      _$achEvidenceInputSourceEnum_evidenceItem;
  @BuiltValueEnumConst(wireName: r'social-claim')
  static const AchEvidenceInputSource_Enum socialClaim =
      _$achEvidenceInputSourceEnum_socialClaim;

  static Serializer<AchEvidenceInputSource_Enum> get serializer =>
      _$achEvidenceInputSourceEnumSerializer;

  const AchEvidenceInputSource_Enum._(String name) : super(name);

  static BuiltSet<AchEvidenceInputSource_Enum> get values =>
      _$achEvidenceInputSourceEnumValues;
  static AchEvidenceInputSource_Enum valueOf(String name) =>
      _$achEvidenceInputSourceEnumValueOf(name);
}

class AchEvidenceInputCredibilityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const AchEvidenceInputCredibilityEnum H =
      _$achEvidenceInputCredibilityEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const AchEvidenceInputCredibilityEnum M =
      _$achEvidenceInputCredibilityEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const AchEvidenceInputCredibilityEnum L =
      _$achEvidenceInputCredibilityEnum_L;

  static Serializer<AchEvidenceInputCredibilityEnum> get serializer =>
      _$achEvidenceInputCredibilityEnumSerializer;

  const AchEvidenceInputCredibilityEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceInputCredibilityEnum> get values =>
      _$achEvidenceInputCredibilityEnumValues;
  static AchEvidenceInputCredibilityEnum valueOf(String name) =>
      _$achEvidenceInputCredibilityEnumValueOf(name);
}

class AchEvidenceInputRelevanceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'H')
  static const AchEvidenceInputRelevanceEnum H =
      _$achEvidenceInputRelevanceEnum_H;
  @BuiltValueEnumConst(wireName: r'M')
  static const AchEvidenceInputRelevanceEnum M =
      _$achEvidenceInputRelevanceEnum_M;
  @BuiltValueEnumConst(wireName: r'L')
  static const AchEvidenceInputRelevanceEnum L =
      _$achEvidenceInputRelevanceEnum_L;

  static Serializer<AchEvidenceInputRelevanceEnum> get serializer =>
      _$achEvidenceInputRelevanceEnumSerializer;

  const AchEvidenceInputRelevanceEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceInputRelevanceEnum> get values =>
      _$achEvidenceInputRelevanceEnumValues;
  static AchEvidenceInputRelevanceEnum valueOf(String name) =>
      _$achEvidenceInputRelevanceEnumValueOf(name);
}

/// ACH consistency rating
class AchEvidenceInputRatingsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CC')
  static const AchEvidenceInputRatingsEnum CC =
      _$achEvidenceInputRatingsEnum_CC;
  @BuiltValueEnumConst(wireName: r'C')
  static const AchEvidenceInputRatingsEnum C = _$achEvidenceInputRatingsEnum_C;
  @BuiltValueEnumConst(wireName: r'N')
  static const AchEvidenceInputRatingsEnum N = _$achEvidenceInputRatingsEnum_N;
  @BuiltValueEnumConst(wireName: r'NA')
  static const AchEvidenceInputRatingsEnum NA =
      _$achEvidenceInputRatingsEnum_NA;
  @BuiltValueEnumConst(wireName: r'I')
  static const AchEvidenceInputRatingsEnum I = _$achEvidenceInputRatingsEnum_I;
  @BuiltValueEnumConst(wireName: r'II')
  static const AchEvidenceInputRatingsEnum II =
      _$achEvidenceInputRatingsEnum_II;

  static Serializer<AchEvidenceInputRatingsEnum> get serializer =>
      _$achEvidenceInputRatingsEnumSerializer;

  const AchEvidenceInputRatingsEnum._(String name) : super(name);

  static BuiltSet<AchEvidenceInputRatingsEnum> get values =>
      _$achEvidenceInputRatingsEnumValues;
  static AchEvidenceInputRatingsEnum valueOf(String name) =>
      _$achEvidenceInputRatingsEnumValueOf(name);
}
