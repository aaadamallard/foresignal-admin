//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/key_judgment_change.dart';
import 'package:foresignal_api/src/model/confidence_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_judgment.g.dart';

/// A typed, cited key judgment; terms are derived from the number
///
/// Properties:
/// * [id]
/// * [text]
/// * [probability]
/// * [estimativeTerm]
/// * [confidence]
/// * [confidenceStatement] - Separate sentence; never in the same sentence as the likelihood term
/// * [citations]
/// * [hypothesisSetId] - ULID identifier
/// * [questionId] - ULID identifier
/// * [textOrigin]
/// * [change]
/// * [downgraded] - Failed lint after one regeneration and was downgraded
/// * [warnings]
@BuiltValue()
abstract class KeyJudgment implements Built<KeyJudgment, KeyJudgmentBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  @BuiltValueField(wireName: r'confidence')
  ConfidenceLevel? get confidence;
  // enum confidenceEnum {  low,  moderate,  high,  };

  /// Separate sentence; never in the same sentence as the likelihood term
  @BuiltValueField(wireName: r'confidenceStatement')
  String? get confidenceStatement;

  @BuiltValueField(wireName: r'citations')
  BuiltList<String> get citations;

  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisSetId')
  String? get hypothesisSetId;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String? get questionId;

  @BuiltValueField(wireName: r'textOrigin')
  KeyJudgmentTextOriginEnum get textOrigin;
  // enum textOriginEnum {  deterministic,  llm,  };

  @BuiltValueField(wireName: r'change')
  KeyJudgmentChange? get change;

  /// Failed lint after one regeneration and was downgraded
  @BuiltValueField(wireName: r'downgraded')
  bool? get downgraded;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  KeyJudgment._();

  factory KeyJudgment([void updates(KeyJudgmentBuilder b)]) = _$KeyJudgment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyJudgmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyJudgment> get serializer => _$KeyJudgmentSerializer();
}

class _$KeyJudgmentSerializer implements PrimitiveSerializer<KeyJudgment> {
  @override
  final Iterable<Type> types = const [KeyJudgment, _$KeyJudgment];

  @override
  final String wireName = r'KeyJudgment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyJudgment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType.nullable(ConfidenceLevel),
      );
    }
    if (object.confidenceStatement != null) {
      yield r'confidenceStatement';
      yield serializers.serialize(
        object.confidenceStatement,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'citations';
    yield serializers.serialize(
      object.citations,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.hypothesisSetId != null) {
      yield r'hypothesisSetId';
      yield serializers.serialize(
        object.hypothesisSetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.questionId != null) {
      yield r'questionId';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'textOrigin';
    yield serializers.serialize(
      object.textOrigin,
      specifiedType: const FullType(KeyJudgmentTextOriginEnum),
    );
    if (object.change != null) {
      yield r'change';
      yield serializers.serialize(
        object.change,
        specifiedType: const FullType.nullable(KeyJudgmentChange),
      );
    }
    if (object.downgraded != null) {
      yield r'downgraded';
      yield serializers.serialize(
        object.downgraded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyJudgment object, {
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
    required KeyJudgmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'probability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IcdTerm),
          ) as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConfidenceLevel),
          ) as ConfidenceLevel?;
          if (valueDes == null) continue;
          result.confidence = valueDes;
          break;
        case r'confidenceStatement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confidenceStatement = valueDes;
          break;
        case r'citations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.citations.replace(valueDes);
          break;
        case r'hypothesisSetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hypothesisSetId = valueDes;
          break;
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.questionId = valueDes;
          break;
        case r'textOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeyJudgmentTextOriginEnum),
          ) as KeyJudgmentTextOriginEnum;
          result.textOrigin = valueDes;
          break;
        case r'change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(KeyJudgmentChange),
          ) as KeyJudgmentChange?;
          if (valueDes == null) continue;
          result.change.replace(valueDes);
          break;
        case r'downgraded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.downgraded = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyJudgment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyJudgmentBuilder();
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

class KeyJudgmentTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const KeyJudgmentTextOriginEnum deterministic =
      _$keyJudgmentTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const KeyJudgmentTextOriginEnum llm = _$keyJudgmentTextOriginEnum_llm;

  static Serializer<KeyJudgmentTextOriginEnum> get serializer =>
      _$keyJudgmentTextOriginEnumSerializer;

  const KeyJudgmentTextOriginEnum._(String name) : super(name);

  static BuiltSet<KeyJudgmentTextOriginEnum> get values =>
      _$keyJudgmentTextOriginEnumValues;
  static KeyJudgmentTextOriginEnum valueOf(String name) =>
      _$keyJudgmentTextOriginEnumValueOf(name);
}
