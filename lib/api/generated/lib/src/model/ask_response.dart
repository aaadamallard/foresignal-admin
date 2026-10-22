//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ask_action.dart';
import 'package:foresignal_api/src/model/ask_response_usage.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_response.g.dart';

/// AskResponse
///
/// Properties:
/// * [threadId]
/// * [answer] - Markdown
/// * [citations]
/// * [proposedActions]
/// * [warnings]
/// * [mode]
/// * [usage]
/// * [stopReason]
/// * [refusalCategory] - Set when the model declined (stopReason=refusal)
@BuiltValue()
abstract class AskResponse implements Built<AskResponse, AskResponseBuilder> {
  @BuiltValueField(wireName: r'threadId')
  String get threadId;

  /// Markdown
  @BuiltValueField(wireName: r'answer')
  String get answer;

  @BuiltValueField(wireName: r'citations')
  BuiltList<AskCitation> get citations;

  @BuiltValueField(wireName: r'proposedActions')
  BuiltList<AskAction> get proposedActions;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  @BuiltValueField(wireName: r'mode')
  AskResponseModeEnum? get mode;
  // enum modeEnum {  tools,  retrieval,  };

  @BuiltValueField(wireName: r'usage')
  AskResponseUsage? get usage;

  @BuiltValueField(wireName: r'stopReason')
  AskResponseStopReasonEnum? get stopReason;
  // enum stopReasonEnum {  end,  max_tokens,  refusal,  error,  };

  /// Set when the model declined (stopReason=refusal)
  @BuiltValueField(wireName: r'refusalCategory')
  String? get refusalCategory;

  AskResponse._();

  factory AskResponse([void updates(AskResponseBuilder b)]) = _$AskResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskResponse> get serializer => _$AskResponseSerializer();
}

class _$AskResponseSerializer implements PrimitiveSerializer<AskResponse> {
  @override
  final Iterable<Type> types = const [AskResponse, _$AskResponse];

  @override
  final String wireName = r'AskResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'threadId';
    yield serializers.serialize(
      object.threadId,
      specifiedType: const FullType(String),
    );
    yield r'answer';
    yield serializers.serialize(
      object.answer,
      specifiedType: const FullType(String),
    );
    yield r'citations';
    yield serializers.serialize(
      object.citations,
      specifiedType: const FullType(BuiltList, [FullType(AskCitation)]),
    );
    yield r'proposedActions';
    yield serializers.serialize(
      object.proposedActions,
      specifiedType: const FullType(BuiltList, [FullType(AskAction)]),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(AskResponseModeEnum),
      );
    }
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(AskResponseUsage),
      );
    }
    if (object.stopReason != null) {
      yield r'stopReason';
      yield serializers.serialize(
        object.stopReason,
        specifiedType: const FullType(AskResponseStopReasonEnum),
      );
    }
    if (object.refusalCategory != null) {
      yield r'refusalCategory';
      yield serializers.serialize(
        object.refusalCategory,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskResponse object, {
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
    required AskResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'threadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.threadId = valueDes;
          break;
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer = valueDes;
          break;
        case r'citations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AskCitation)]),
          ) as BuiltList<AskCitation>;
          result.citations.replace(valueDes);
          break;
        case r'proposedActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AskAction)]),
          ) as BuiltList<AskAction>;
          result.proposedActions.replace(valueDes);
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
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AskResponseModeEnum),
          ) as AskResponseModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AskResponseUsage),
          ) as AskResponseUsage?;
          if (valueDes == null) continue;
          result.usage.replace(valueDes);
          break;
        case r'stopReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AskResponseStopReasonEnum),
          ) as AskResponseStopReasonEnum?;
          if (valueDes == null) continue;
          result.stopReason = valueDes;
          break;
        case r'refusalCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.refusalCategory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskResponseBuilder();
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

class AskResponseModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tools')
  static const AskResponseModeEnum tools = _$askResponseModeEnum_tools;
  @BuiltValueEnumConst(wireName: r'retrieval')
  static const AskResponseModeEnum retrieval = _$askResponseModeEnum_retrieval;

  static Serializer<AskResponseModeEnum> get serializer =>
      _$askResponseModeEnumSerializer;

  const AskResponseModeEnum._(String name) : super(name);

  static BuiltSet<AskResponseModeEnum> get values =>
      _$askResponseModeEnumValues;
  static AskResponseModeEnum valueOf(String name) =>
      _$askResponseModeEnumValueOf(name);
}

class AskResponseStopReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'end')
  static const AskResponseStopReasonEnum end = _$askResponseStopReasonEnum_end;
  @BuiltValueEnumConst(wireName: r'max_tokens')
  static const AskResponseStopReasonEnum maxTokens =
      _$askResponseStopReasonEnum_maxTokens;
  @BuiltValueEnumConst(wireName: r'refusal')
  static const AskResponseStopReasonEnum refusal =
      _$askResponseStopReasonEnum_refusal;
  @BuiltValueEnumConst(wireName: r'error')
  static const AskResponseStopReasonEnum error =
      _$askResponseStopReasonEnum_error;

  static Serializer<AskResponseStopReasonEnum> get serializer =>
      _$askResponseStopReasonEnumSerializer;

  const AskResponseStopReasonEnum._(String name) : super(name);

  static BuiltSet<AskResponseStopReasonEnum> get values =>
      _$askResponseStopReasonEnumValues;
  static AskResponseStopReasonEnum valueOf(String name) =>
      _$askResponseStopReasonEnumValueOf(name);
}
