//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/hypothesis_set_input.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/hypothesis_set_draft_warnings_inner.dart';
import 'package:foresignal_api/src/model/hypothesis_set_draft_usage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_set_draft.g.dart';

/// LLM-drafted set returned for confirmation; nothing is created
///
/// Properties:
/// * [set_]
/// * [valid] - Structure, lint and rule specs passed
/// * [warnings]
/// * [toolCalls] - Tools called, in order (must start with `get_base_rate`, `find_analogs`)
/// * [model]
/// * [effort] - LLM effort
/// * [usage]
/// * [manifestId] - ULID identifier
/// * [textOrigin]
@BuiltValue()
abstract class HypothesisSetDraft
    implements Built<HypothesisSetDraft, HypothesisSetDraftBuilder> {
  @BuiltValueField(wireName: r'set')
  HypothesisSetInput get set_;

  /// Structure, lint and rule specs passed
  @BuiltValueField(wireName: r'valid')
  bool get valid;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<HypothesisSetDraftWarningsInner> get warnings;

  /// Tools called, in order (must start with `get_base_rate`, `find_analogs`)
  @BuiltValueField(wireName: r'toolCalls')
  BuiltList<String>? get toolCalls;

  @BuiltValueField(wireName: r'model')
  String? get model;

  /// LLM effort
  @BuiltValueField(wireName: r'effort')
  HypothesisSetDraftEffortEnum? get effort;
  // enum effortEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'usage')
  HypothesisSetDraftUsage? get usage;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'textOrigin')
  HypothesisSetDraftTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  llm,  };

  HypothesisSetDraft._();

  factory HypothesisSetDraft([void updates(HypothesisSetDraftBuilder b)]) =
      _$HypothesisSetDraft;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisSetDraftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisSetDraft> get serializer =>
      _$HypothesisSetDraftSerializer();
}

class _$HypothesisSetDraftSerializer
    implements PrimitiveSerializer<HypothesisSetDraft> {
  @override
  final Iterable<Type> types = const [HypothesisSetDraft, _$HypothesisSetDraft];

  @override
  final String wireName = r'HypothesisSetDraft';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisSetDraft object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'set';
    yield serializers.serialize(
      object.set_,
      specifiedType: const FullType(HypothesisSetInput),
    );
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(
          BuiltList, [FullType(HypothesisSetDraftWarningsInner)]),
    );
    if (object.toolCalls != null) {
      yield r'toolCalls';
      yield serializers.serialize(
        object.toolCalls,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.effort != null) {
      yield r'effort';
      yield serializers.serialize(
        object.effort,
        specifiedType: const FullType(HypothesisSetDraftEffortEnum),
      );
    }
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(HypothesisSetDraftUsage),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType: const FullType(HypothesisSetDraftTextOriginEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisSetDraft object, {
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
    required HypothesisSetDraftBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'set':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HypothesisSetInput),
          ) as HypothesisSetInput;
          result.set_.replace(valueDes);
          break;
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(HypothesisSetDraftWarningsInner)]),
          ) as BuiltList<HypothesisSetDraftWarningsInner>;
          result.warnings.replace(valueDes);
          break;
        case r'toolCalls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.toolCalls.replace(valueDes);
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'effort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HypothesisSetDraftEffortEnum),
          ) as HypothesisSetDraftEffortEnum?;
          if (valueDes == null) continue;
          result.effort = valueDes;
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(HypothesisSetDraftUsage),
          ) as HypothesisSetDraftUsage?;
          if (valueDes == null) continue;
          result.usage.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'textOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(HypothesisSetDraftTextOriginEnum),
          ) as HypothesisSetDraftTextOriginEnum?;
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
  HypothesisSetDraft deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisSetDraftBuilder();
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

/// LLM effort
class HypothesisSetDraftEffortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const HypothesisSetDraftEffortEnum low =
      _$hypothesisSetDraftEffortEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const HypothesisSetDraftEffortEnum medium =
      _$hypothesisSetDraftEffortEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const HypothesisSetDraftEffortEnum high =
      _$hypothesisSetDraftEffortEnum_high;

  static Serializer<HypothesisSetDraftEffortEnum> get serializer =>
      _$hypothesisSetDraftEffortEnumSerializer;

  const HypothesisSetDraftEffortEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetDraftEffortEnum> get values =>
      _$hypothesisSetDraftEffortEnumValues;
  static HypothesisSetDraftEffortEnum valueOf(String name) =>
      _$hypothesisSetDraftEffortEnumValueOf(name);
}

class HypothesisSetDraftTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'llm')
  static const HypothesisSetDraftTextOriginEnum llm =
      _$hypothesisSetDraftTextOriginEnum_llm;

  static Serializer<HypothesisSetDraftTextOriginEnum> get serializer =>
      _$hypothesisSetDraftTextOriginEnumSerializer;

  const HypothesisSetDraftTextOriginEnum._(String name) : super(name);

  static BuiltSet<HypothesisSetDraftTextOriginEnum> get values =>
      _$hypothesisSetDraftTextOriginEnumValues;
  static HypothesisSetDraftTextOriginEnum valueOf(String name) =>
      _$hypothesisSetDraftTextOriginEnumValueOf(name);
}
