//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'assessment_sections_inner.g.dart';

/// Rendered section
///
/// Properties:
/// * [key]
/// * [title]
/// * [markdown]
/// * [textOrigin]
/// * [data]
@BuiltValue()
abstract class AssessmentSectionsInner
    implements Built<AssessmentSectionsInner, AssessmentSectionsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  AssessmentSectionsInnerKeyEnum get key;
  // enum keyEnum {  bluf,  what-changed,  situations,  hypotheses,  indicators,  forecasts,  speculation,  sources,  collection-gaps,  key-insights,  outlook,  risks,  social,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'markdown')
  String get markdown;

  @BuiltValueField(wireName: r'textOrigin')
  AssessmentSectionsInnerTextOriginEnum get textOrigin;
  // enum textOriginEnum {  deterministic,  llm,  mixed,  };

  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  AssessmentSectionsInner._();

  factory AssessmentSectionsInner([
    void updates(AssessmentSectionsInnerBuilder b),
  ]) = _$AssessmentSectionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssessmentSectionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssessmentSectionsInner> get serializer =>
      _$AssessmentSectionsInnerSerializer();
}

class _$AssessmentSectionsInnerSerializer
    implements PrimitiveSerializer<AssessmentSectionsInner> {
  @override
  final Iterable<Type> types = const [
    AssessmentSectionsInner,
    _$AssessmentSectionsInner,
  ];

  @override
  final String wireName = r'AssessmentSectionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssessmentSectionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(AssessmentSectionsInnerKeyEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'markdown';
    yield serializers.serialize(
      object.markdown,
      specifiedType: const FullType(String),
    );
    yield r'textOrigin';
    yield serializers.serialize(
      object.textOrigin,
      specifiedType: const FullType(AssessmentSectionsInnerTextOriginEnum),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AssessmentSectionsInner object, {
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
    required AssessmentSectionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AssessmentSectionsInnerKeyEnum,
                    ),
                  )
                  as AssessmentSectionsInnerKeyEnum;
          result.key = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'markdown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.markdown = valueDes;
          break;
        case r'textOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      AssessmentSectionsInnerTextOriginEnum,
                    ),
                  )
                  as AssessmentSectionsInnerTextOriginEnum;
          result.textOrigin = valueDes;
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AssessmentSectionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssessmentSectionsInnerBuilder();
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

class AssessmentSectionsInnerKeyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bluf')
  static const AssessmentSectionsInnerKeyEnum bluf =
      _$assessmentSectionsInnerKeyEnum_bluf;
  @BuiltValueEnumConst(wireName: r'what-changed')
  static const AssessmentSectionsInnerKeyEnum whatChanged =
      _$assessmentSectionsInnerKeyEnum_whatChanged;
  @BuiltValueEnumConst(wireName: r'situations')
  static const AssessmentSectionsInnerKeyEnum situations =
      _$assessmentSectionsInnerKeyEnum_situations;
  @BuiltValueEnumConst(wireName: r'hypotheses')
  static const AssessmentSectionsInnerKeyEnum hypotheses =
      _$assessmentSectionsInnerKeyEnum_hypotheses;
  @BuiltValueEnumConst(wireName: r'indicators')
  static const AssessmentSectionsInnerKeyEnum indicators =
      _$assessmentSectionsInnerKeyEnum_indicators;
  @BuiltValueEnumConst(wireName: r'forecasts')
  static const AssessmentSectionsInnerKeyEnum forecasts =
      _$assessmentSectionsInnerKeyEnum_forecasts;
  @BuiltValueEnumConst(wireName: r'speculation')
  static const AssessmentSectionsInnerKeyEnum speculation =
      _$assessmentSectionsInnerKeyEnum_speculation;
  @BuiltValueEnumConst(wireName: r'sources')
  static const AssessmentSectionsInnerKeyEnum sources =
      _$assessmentSectionsInnerKeyEnum_sources;
  @BuiltValueEnumConst(wireName: r'collection-gaps')
  static const AssessmentSectionsInnerKeyEnum collectionGaps =
      _$assessmentSectionsInnerKeyEnum_collectionGaps;
  @BuiltValueEnumConst(wireName: r'key-insights')
  static const AssessmentSectionsInnerKeyEnum keyInsights =
      _$assessmentSectionsInnerKeyEnum_keyInsights;
  @BuiltValueEnumConst(wireName: r'outlook')
  static const AssessmentSectionsInnerKeyEnum outlook =
      _$assessmentSectionsInnerKeyEnum_outlook;
  @BuiltValueEnumConst(wireName: r'risks')
  static const AssessmentSectionsInnerKeyEnum risks =
      _$assessmentSectionsInnerKeyEnum_risks;
  @BuiltValueEnumConst(wireName: r'social')
  static const AssessmentSectionsInnerKeyEnum social =
      _$assessmentSectionsInnerKeyEnum_social;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AssessmentSectionsInnerKeyEnum unknownDefaultOpenApi =
      _$assessmentSectionsInnerKeyEnum_unknownDefaultOpenApi;

  static Serializer<AssessmentSectionsInnerKeyEnum> get serializer =>
      _$assessmentSectionsInnerKeyEnumSerializer;

  const AssessmentSectionsInnerKeyEnum._(String name) : super(name);

  static BuiltSet<AssessmentSectionsInnerKeyEnum> get values =>
      _$assessmentSectionsInnerKeyEnumValues;
  static AssessmentSectionsInnerKeyEnum valueOf(String name) =>
      _$assessmentSectionsInnerKeyEnumValueOf(name);
}

class AssessmentSectionsInnerTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const AssessmentSectionsInnerTextOriginEnum deterministic =
      _$assessmentSectionsInnerTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const AssessmentSectionsInnerTextOriginEnum llm =
      _$assessmentSectionsInnerTextOriginEnum_llm;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const AssessmentSectionsInnerTextOriginEnum mixed =
      _$assessmentSectionsInnerTextOriginEnum_mixed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AssessmentSectionsInnerTextOriginEnum unknownDefaultOpenApi =
      _$assessmentSectionsInnerTextOriginEnum_unknownDefaultOpenApi;

  static Serializer<AssessmentSectionsInnerTextOriginEnum> get serializer =>
      _$assessmentSectionsInnerTextOriginEnumSerializer;

  const AssessmentSectionsInnerTextOriginEnum._(String name) : super(name);

  static BuiltSet<AssessmentSectionsInnerTextOriginEnum> get values =>
      _$assessmentSectionsInnerTextOriginEnumValues;
  static AssessmentSectionsInnerTextOriginEnum valueOf(String name) =>
      _$assessmentSectionsInnerTextOriginEnumValueOf(name);
}
