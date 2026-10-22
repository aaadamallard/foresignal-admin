//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_speculation.g.dart';

/// Optional LLM brief, labelled speculation-capable narrative; never changes members, status or severity
///
/// Properties:
/// * [label]
/// * [textOrigin]
/// * [brief] - Markdown brief, null when none was generated
/// * [briefGeneratedAt]
/// * [briefModel]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SituationSpeculation
    implements Built<SituationSpeculation, SituationSpeculationBuilder> {
  @BuiltValueField(wireName: r'label')
  SituationSpeculationLabelEnum get label;
  // enum labelEnum {  speculation,  };

  @BuiltValueField(wireName: r'textOrigin')
  SituationSpeculationTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  llm,  };

  /// Markdown brief, null when none was generated
  @BuiltValueField(wireName: r'brief')
  String? get brief;

  @BuiltValueField(wireName: r'briefGeneratedAt')
  DateTime? get briefGeneratedAt;

  @BuiltValueField(wireName: r'briefModel')
  String? get briefModel;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SituationSpeculation._();

  factory SituationSpeculation([void updates(SituationSpeculationBuilder b)]) =
      _$SituationSpeculation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationSpeculationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationSpeculation> get serializer =>
      _$SituationSpeculationSerializer();
}

class _$SituationSpeculationSerializer
    implements PrimitiveSerializer<SituationSpeculation> {
  @override
  final Iterable<Type> types = const [
    SituationSpeculation,
    _$SituationSpeculation,
  ];

  @override
  final String wireName = r'SituationSpeculation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationSpeculation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(SituationSpeculationLabelEnum),
    );
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType: const FullType(SituationSpeculationTextOriginEnum),
      );
    }
    yield r'brief';
    yield object.brief == null
        ? null
        : serializers.serialize(
            object.brief,
            specifiedType: const FullType.nullable(String),
          );
    if (object.briefGeneratedAt != null) {
      yield r'briefGeneratedAt';
      yield serializers.serialize(
        object.briefGeneratedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.briefModel != null) {
      yield r'briefModel';
      yield serializers.serialize(
        object.briefModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationSpeculation object, {
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
    required SituationSpeculationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SituationSpeculationLabelEnum,
                    ),
                  )
                  as SituationSpeculationLabelEnum;
          result.label = valueDes;
          break;
        case r'textOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SituationSpeculationTextOriginEnum,
                    ),
                  )
                  as SituationSpeculationTextOriginEnum?;
          if (valueDes == null) continue;
          result.textOrigin = valueDes;
          break;
        case r'brief':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.brief = valueDes;
          break;
        case r'briefGeneratedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.briefGeneratedAt = valueDes;
          break;
        case r'briefModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefModel = valueDes;
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationSpeculation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationSpeculationBuilder();
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

class SituationSpeculationLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'speculation')
  static const SituationSpeculationLabelEnum speculation =
      _$situationSpeculationLabelEnum_speculation;

  static Serializer<SituationSpeculationLabelEnum> get serializer =>
      _$situationSpeculationLabelEnumSerializer;

  const SituationSpeculationLabelEnum._(String name) : super(name);

  static BuiltSet<SituationSpeculationLabelEnum> get values =>
      _$situationSpeculationLabelEnumValues;
  static SituationSpeculationLabelEnum valueOf(String name) =>
      _$situationSpeculationLabelEnumValueOf(name);
}

class SituationSpeculationTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'llm')
  static const SituationSpeculationTextOriginEnum llm =
      _$situationSpeculationTextOriginEnum_llm;

  static Serializer<SituationSpeculationTextOriginEnum> get serializer =>
      _$situationSpeculationTextOriginEnumSerializer;

  const SituationSpeculationTextOriginEnum._(String name) : super(name);

  static BuiltSet<SituationSpeculationTextOriginEnum> get values =>
      _$situationSpeculationTextOriginEnumValues;
  static SituationSpeculationTextOriginEnum valueOf(String name) =>
      _$situationSpeculationTextOriginEnumValueOf(name);
}
