//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/doctor_report_llm_tokens.dart';
import 'package:foresignal_api/src/model/proposed_patch.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'doctor_report_llm.g.dart';

/// LLM explanation (optional; G11)
///
/// Properties:
/// * [status]
/// * [provider]
/// * [model]
/// * [tokens]
/// * [summary]
/// * [likelyCause]
/// * [confidence]
/// * [evidence]
/// * [suggestedActions]
/// * [patch_]
/// * [contextTokens] - Estimated tokens of the context sent (4 characters a token)
/// * [detail]
/// * [error] - Why the LLM step gave no answer, when it did not
@BuiltValue()
abstract class DoctorReportLlm
    implements Built<DoctorReportLlm, DoctorReportLlmBuilder> {
  @BuiltValueField(wireName: r'status')
  DoctorReportLlmStatusEnum get status;
  // enum statusEnum {  ok,  off,  no-provider,  budget-refused,  timeout,  failed,  };

  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'tokens')
  DoctorReportLlmTokens? get tokens;

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'likelyCause')
  String? get likelyCause;

  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  @BuiltValueField(wireName: r'evidence')
  BuiltList<String>? get evidence;

  @BuiltValueField(wireName: r'suggestedActions')
  BuiltList<String>? get suggestedActions;

  @BuiltValueField(wireName: r'patch')
  ProposedPatch? get patch_;

  /// Estimated tokens of the context sent (4 characters a token)
  @BuiltValueField(wireName: r'contextTokens')
  int? get contextTokens;

  @BuiltValueField(wireName: r'detail')
  DoctorReportLlmDetailEnum? get detail;
  // enum detailEnum {  compact,  full,  };

  /// Why the LLM step gave no answer, when it did not
  @BuiltValueField(wireName: r'error')
  String? get error;

  DoctorReportLlm._();

  factory DoctorReportLlm([void updates(DoctorReportLlmBuilder b)]) =
      _$DoctorReportLlm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DoctorReportLlmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DoctorReportLlm> get serializer =>
      _$DoctorReportLlmSerializer();
}

class _$DoctorReportLlmSerializer
    implements PrimitiveSerializer<DoctorReportLlm> {
  @override
  final Iterable<Type> types = const [DoctorReportLlm, _$DoctorReportLlm];

  @override
  final String wireName = r'DoctorReportLlm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DoctorReportLlm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DoctorReportLlmStatusEnum),
    );
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokens != null) {
      yield r'tokens';
      yield serializers.serialize(
        object.tokens,
        specifiedType: const FullType(DoctorReportLlmTokens),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.likelyCause != null) {
      yield r'likelyCause';
      yield serializers.serialize(
        object.likelyCause,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.suggestedActions != null) {
      yield r'suggestedActions';
      yield serializers.serialize(
        object.suggestedActions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.patch_ != null) {
      yield r'patch';
      yield serializers.serialize(
        object.patch_,
        specifiedType: const FullType.nullable(ProposedPatch),
      );
    }
    if (object.contextTokens != null) {
      yield r'contextTokens';
      yield serializers.serialize(
        object.contextTokens,
        specifiedType: const FullType(int),
      );
    }
    if (object.detail != null) {
      yield r'detail';
      yield serializers.serialize(
        object.detail,
        specifiedType: const FullType(DoctorReportLlmDetailEnum),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DoctorReportLlm object, {
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
    required DoctorReportLlmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DoctorReportLlmStatusEnum),
                  )
                  as DoctorReportLlmStatusEnum;
          result.status = valueDes;
          break;
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'tokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DoctorReportLlmTokens,
                    ),
                  )
                  as DoctorReportLlmTokens?;
          if (valueDes == null) continue;
          result.tokens.replace(valueDes);
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'likelyCause':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.likelyCause = valueDes;
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
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'suggestedActions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.suggestedActions.replace(valueDes);
          break;
        case r'patch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ProposedPatch),
                  )
                  as ProposedPatch?;
          if (valueDes == null) continue;
          result.patch_.replace(valueDes);
          break;
        case r'contextTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.contextTokens = valueDes;
          break;
        case r'detail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DoctorReportLlmDetailEnum,
                    ),
                  )
                  as DoctorReportLlmDetailEnum?;
          if (valueDes == null) continue;
          result.detail = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DoctorReportLlm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DoctorReportLlmBuilder();
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

class DoctorReportLlmStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DoctorReportLlmStatusEnum ok = _$doctorReportLlmStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'off')
  static const DoctorReportLlmStatusEnum off = _$doctorReportLlmStatusEnum_off;
  @BuiltValueEnumConst(wireName: r'no-provider')
  static const DoctorReportLlmStatusEnum noProvider =
      _$doctorReportLlmStatusEnum_noProvider;
  @BuiltValueEnumConst(wireName: r'budget-refused')
  static const DoctorReportLlmStatusEnum budgetRefused =
      _$doctorReportLlmStatusEnum_budgetRefused;
  @BuiltValueEnumConst(wireName: r'timeout')
  static const DoctorReportLlmStatusEnum timeout =
      _$doctorReportLlmStatusEnum_timeout;
  @BuiltValueEnumConst(wireName: r'failed')
  static const DoctorReportLlmStatusEnum failed =
      _$doctorReportLlmStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DoctorReportLlmStatusEnum unknownDefaultOpenApi =
      _$doctorReportLlmStatusEnum_unknownDefaultOpenApi;

  static Serializer<DoctorReportLlmStatusEnum> get serializer =>
      _$doctorReportLlmStatusEnumSerializer;

  const DoctorReportLlmStatusEnum._(String name) : super(name);

  static BuiltSet<DoctorReportLlmStatusEnum> get values =>
      _$doctorReportLlmStatusEnumValues;
  static DoctorReportLlmStatusEnum valueOf(String name) =>
      _$doctorReportLlmStatusEnumValueOf(name);
}

class DoctorReportLlmDetailEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'compact')
  static const DoctorReportLlmDetailEnum compact =
      _$doctorReportLlmDetailEnum_compact;
  @BuiltValueEnumConst(wireName: r'full')
  static const DoctorReportLlmDetailEnum full =
      _$doctorReportLlmDetailEnum_full;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DoctorReportLlmDetailEnum unknownDefaultOpenApi =
      _$doctorReportLlmDetailEnum_unknownDefaultOpenApi;

  static Serializer<DoctorReportLlmDetailEnum> get serializer =>
      _$doctorReportLlmDetailEnumSerializer;

  const DoctorReportLlmDetailEnum._(String name) : super(name);

  static BuiltSet<DoctorReportLlmDetailEnum> get values =>
      _$doctorReportLlmDetailEnumValues;
  static DoctorReportLlmDetailEnum valueOf(String name) =>
      _$doctorReportLlmDetailEnumValueOf(name);
}
