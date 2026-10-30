//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/briefing_run_delivery_results_inner.dart';
import 'package:foresignal_api/src/model/briefing_run_breaking.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/briefing_run_audio.dart';
import 'package:foresignal_api/src/model/ask_citation.dart';
import 'package:foresignal_api/src/model/digest_stats.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_run.g.dart';

/// BriefingRun
///
/// Properties:
/// * [id] - null for previews
/// * [briefingId]
/// * [status]
/// * [startedAt]
/// * [finishedAt]
/// * [periodFrom]
/// * [periodTo]
/// * [mode]
/// * [contentMarkdown]
/// * [citations]
/// * [stats]
/// * [error]
/// * [usage]
/// * [deliveries]
/// * [warnings] - Citation-verifier warnings (LLM mode) and fallback notes
/// * [signature] - Detached JWS (`header..signature`, Ed25519, b64:false) over the stored markdown bytes; verify against /.well-known/jwks.json
/// * [audio]
/// * [deliveryResults] - The outcome of each of the briefing's `deliveryTargets` for this run (NP-004), in target order; null for a briefing without targets, which delivers to its channels as before
/// * [breaking]
@BuiltValue()
abstract class BriefingRun implements Built<BriefingRun, BriefingRunBuilder> {
  /// null for previews
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'briefingId')
  String? get briefingId;

  @BuiltValueField(wireName: r'status')
  BriefingRunStatusEnum get status;
  // enum statusEnum {  running,  succeeded,  fallback,  failed,  };

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  @BuiltValueField(wireName: r'periodFrom')
  DateTime get periodFrom;

  @BuiltValueField(wireName: r'periodTo')
  DateTime get periodTo;

  @BuiltValueField(wireName: r'mode')
  BriefingRunModeEnum? get mode;
  // enum modeEnum {  digest,  llm,  };

  @BuiltValueField(wireName: r'contentMarkdown')
  String get contentMarkdown;

  @BuiltValueField(wireName: r'citations')
  BuiltList<AskCitation>? get citations;

  @BuiltValueField(wireName: r'stats')
  DigestStats? get stats;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'usage')
  BuiltMap<String, JsonObject?>? get usage;

  @BuiltValueField(wireName: r'deliveries')
  int? get deliveries;

  /// Citation-verifier warnings (LLM mode) and fallback notes
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  /// Detached JWS (`header..signature`, Ed25519, b64:false) over the stored markdown bytes; verify against /.well-known/jwks.json
  @BuiltValueField(wireName: r'signature')
  String? get signature;

  @BuiltValueField(wireName: r'audio')
  BriefingRunAudio? get audio;

  /// The outcome of each of the briefing's `deliveryTargets` for this run (NP-004), in target order; null for a briefing without targets, which delivers to its channels as before
  @BuiltValueField(wireName: r'deliveryResults')
  BuiltList<BriefingRunDeliveryResultsInner>? get deliveryResults;

  @BuiltValueField(wireName: r'breaking')
  BriefingRunBreaking? get breaking;

  BriefingRun._();

  factory BriefingRun([void updates(BriefingRunBuilder b)]) = _$BriefingRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingRun> get serializer => _$BriefingRunSerializer();
}

class _$BriefingRunSerializer implements PrimitiveSerializer<BriefingRun> {
  @override
  final Iterable<Type> types = const [BriefingRun, _$BriefingRun];

  @override
  final String wireName = r'BriefingRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.briefingId != null) {
      yield r'briefingId';
      yield serializers.serialize(
        object.briefingId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BriefingRunStatusEnum),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'periodFrom';
    yield serializers.serialize(
      object.periodFrom,
      specifiedType: const FullType(DateTime),
    );
    yield r'periodTo';
    yield serializers.serialize(
      object.periodTo,
      specifiedType: const FullType(DateTime),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(BriefingRunModeEnum),
      );
    }
    yield r'contentMarkdown';
    yield serializers.serialize(
      object.contentMarkdown,
      specifiedType: const FullType(String),
    );
    if (object.citations != null) {
      yield r'citations';
      yield serializers.serialize(
        object.citations,
        specifiedType: const FullType(BuiltList, [FullType(AskCitation)]),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(DigestStats),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.deliveries != null) {
      yield r'deliveries';
      yield serializers.serialize(
        object.deliveries,
        specifiedType: const FullType(int),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.audio != null) {
      yield r'audio';
      yield serializers.serialize(
        object.audio,
        specifiedType: const FullType.nullable(BriefingRunAudio),
      );
    }
    if (object.deliveryResults != null) {
      yield r'deliveryResults';
      yield serializers.serialize(
        object.deliveryResults,
        specifiedType: const FullType.nullable(BuiltList, [
          FullType(BriefingRunDeliveryResultsInner),
        ]),
      );
    }
    if (object.breaking != null) {
      yield r'breaking';
      yield serializers.serialize(
        object.breaking,
        specifiedType: const FullType.nullable(BriefingRunBreaking),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingRun object, {
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
    required BriefingRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'briefingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefingId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BriefingRunStatusEnum),
                  )
                  as BriefingRunStatusEnum;
          result.status = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
          break;
        case r'periodFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodFrom = valueDes;
          break;
        case r'periodTo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodTo = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BriefingRunModeEnum),
                  )
                  as BriefingRunModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'contentMarkdown':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.contentMarkdown = valueDes;
          break;
        case r'citations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AskCitation),
                    ]),
                  )
                  as BuiltList<AskCitation>?;
          if (valueDes == null) continue;
          result.citations.replace(valueDes);
          break;
        case r'stats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DigestStats),
                  )
                  as DigestStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
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
        case r'usage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.usage.replace(valueDes);
          break;
        case r'deliveries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.deliveries = valueDes;
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'signature':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.signature = valueDes;
          break;
        case r'audio':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BriefingRunAudio),
                  )
                  as BriefingRunAudio?;
          if (valueDes == null) continue;
          result.audio.replace(valueDes);
          break;
        case r'deliveryResults':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BriefingRunDeliveryResultsInner),
                    ]),
                  )
                  as BuiltList<BriefingRunDeliveryResultsInner>?;
          if (valueDes == null) continue;
          result.deliveryResults.replace(valueDes);
          break;
        case r'breaking':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BriefingRunBreaking),
                  )
                  as BriefingRunBreaking?;
          if (valueDes == null) continue;
          result.breaking.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingRunBuilder();
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

class BriefingRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'running')
  static const BriefingRunStatusEnum running = _$briefingRunStatusEnum_running;
  @BuiltValueEnumConst(wireName: r'succeeded')
  static const BriefingRunStatusEnum succeeded =
      _$briefingRunStatusEnum_succeeded;
  @BuiltValueEnumConst(wireName: r'fallback')
  static const BriefingRunStatusEnum fallback =
      _$briefingRunStatusEnum_fallback;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BriefingRunStatusEnum failed = _$briefingRunStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunStatusEnum unknownDefaultOpenApi =
      _$briefingRunStatusEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunStatusEnum> get serializer =>
      _$briefingRunStatusEnumSerializer;

  const BriefingRunStatusEnum._(String name) : super(name);

  static BuiltSet<BriefingRunStatusEnum> get values =>
      _$briefingRunStatusEnumValues;
  static BriefingRunStatusEnum valueOf(String name) =>
      _$briefingRunStatusEnumValueOf(name);
}

class BriefingRunModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'digest')
  static const BriefingRunModeEnum digest = _$briefingRunModeEnum_digest;
  @BuiltValueEnumConst(wireName: r'llm')
  static const BriefingRunModeEnum llm = _$briefingRunModeEnum_llm;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunModeEnum unknownDefaultOpenApi =
      _$briefingRunModeEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunModeEnum> get serializer =>
      _$briefingRunModeEnumSerializer;

  const BriefingRunModeEnum._(String name) : super(name);

  static BuiltSet<BriefingRunModeEnum> get values =>
      _$briefingRunModeEnumValues;
  static BriefingRunModeEnum valueOf(String name) =>
      _$briefingRunModeEnumValueOf(name);
}
