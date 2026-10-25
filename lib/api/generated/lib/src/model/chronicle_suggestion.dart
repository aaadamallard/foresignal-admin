//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_suggestion_estimate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_suggestion.g.dart';

/// A draft chronicle (not created) with its storage estimate
///
/// Properties:
/// * [draft]
/// * [estimate]
/// * [rationale]
/// * [textOrigin]
@BuiltValue()
abstract class ChronicleSuggestion
    implements Built<ChronicleSuggestion, ChronicleSuggestionBuilder> {
  @BuiltValueField(wireName: r'draft')
  ChronicleInput get draft;

  @BuiltValueField(wireName: r'estimate')
  ChronicleSuggestionEstimate? get estimate;

  @BuiltValueField(wireName: r'rationale')
  BuiltList<String>? get rationale;

  @BuiltValueField(wireName: r'textOrigin')
  ChronicleSuggestionTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  deterministic,  llm,  };

  ChronicleSuggestion._();

  factory ChronicleSuggestion([void updates(ChronicleSuggestionBuilder b)]) =
      _$ChronicleSuggestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSuggestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSuggestion> get serializer =>
      _$ChronicleSuggestionSerializer();
}

class _$ChronicleSuggestionSerializer
    implements PrimitiveSerializer<ChronicleSuggestion> {
  @override
  final Iterable<Type> types = const [
    ChronicleSuggestion,
    _$ChronicleSuggestion,
  ];

  @override
  final String wireName = r'ChronicleSuggestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSuggestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'draft';
    yield serializers.serialize(
      object.draft,
      specifiedType: const FullType(ChronicleInput),
    );
    if (object.estimate != null) {
      yield r'estimate';
      yield serializers.serialize(
        object.estimate,
        specifiedType: const FullType(ChronicleSuggestionEstimate),
      );
    }
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType: const FullType(ChronicleSuggestionTextOriginEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSuggestion object, {
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
    required ChronicleSuggestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'draft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChronicleInput),
                  )
                  as ChronicleInput;
          result.draft.replace(valueDes);
          break;
        case r'estimate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleSuggestionEstimate,
                    ),
                  )
                  as ChronicleSuggestionEstimate?;
          if (valueDes == null) continue;
          result.estimate.replace(valueDes);
          break;
        case r'rationale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.rationale.replace(valueDes);
          break;
        case r'textOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleSuggestionTextOriginEnum,
                    ),
                  )
                  as ChronicleSuggestionTextOriginEnum?;
          if (valueDes == null) continue;
          result.textOrigin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSuggestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSuggestionBuilder();
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

class ChronicleSuggestionTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const ChronicleSuggestionTextOriginEnum deterministic =
      _$chronicleSuggestionTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const ChronicleSuggestionTextOriginEnum llm =
      _$chronicleSuggestionTextOriginEnum_llm;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleSuggestionTextOriginEnum unknownDefaultOpenApi =
      _$chronicleSuggestionTextOriginEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleSuggestionTextOriginEnum> get serializer =>
      _$chronicleSuggestionTextOriginEnumSerializer;

  const ChronicleSuggestionTextOriginEnum._(String name) : super(name);

  static BuiltSet<ChronicleSuggestionTextOriginEnum> get values =>
      _$chronicleSuggestionTextOriginEnumValues;
  static ChronicleSuggestionTextOriginEnum valueOf(String name) =>
      _$chronicleSuggestionTextOriginEnumValueOf(name);
}
