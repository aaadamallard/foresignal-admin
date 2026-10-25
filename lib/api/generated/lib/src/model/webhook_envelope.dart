//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/notification_webhook_message.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'webhook_envelope.g.dart';

/// Default body of the generic `webhook` channel (overridable by `bodyTemplate`)
///
/// Properties:
/// * [event] - Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum`, not `x-extensible-enum`, because this schema is also the `notification` webhook's payload, which the compatibility check cannot mark extensible.
/// * [subtype]
/// * [message]
/// * [data]
/// * [foresignalOrigin] - Install id of the sending instance
/// * [exercise] - Exercise delivery; also header X-Foresignal-Exercise: true
@BuiltValue()
abstract class WebhookEnvelope
    implements Built<WebhookEnvelope, WebhookEnvelopeBuilder> {
  /// Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum`, not `x-extensible-enum`, because this schema is also the `notification` webhook's payload, which the compatibility check cannot mark extensible.
  @BuiltValueField(wireName: r'event')
  WebhookEnvelopeEventEnum get event;
  // enum eventEnum {  alert,  briefing,  system,  chronicle.proposed,  chronicle.cap_warning,  chronicle.gap,  social.divergence,  social.attention_gap,  analyst.note,  situation.activated,  situation.escalated,  finding.significant,  forecast.resolved,  forecast.resolution_needed,  hypothesis.band_changed,  indicator.observed,  assumption.broken,  assessment.published,  mention,  share,  report.received,  package.received,  chronicle.access.requested,  saved-search.matches,  test,  personal,  };

  @BuiltValueField(wireName: r'subtype')
  String get subtype;

  @BuiltValueField(wireName: r'message')
  NotificationWebhookMessage get message;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?>? get data;

  /// Install id of the sending instance
  @BuiltValueField(wireName: r'foresignalOrigin')
  String get foresignalOrigin;

  /// Exercise delivery; also header X-Foresignal-Exercise: true
  @BuiltValueField(wireName: r'exercise')
  bool? get exercise;

  WebhookEnvelope._();

  factory WebhookEnvelope([void updates(WebhookEnvelopeBuilder b)]) =
      _$WebhookEnvelope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebhookEnvelopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebhookEnvelope> get serializer =>
      _$WebhookEnvelopeSerializer();
}

class _$WebhookEnvelopeSerializer
    implements PrimitiveSerializer<WebhookEnvelope> {
  @override
  final Iterable<Type> types = const [WebhookEnvelope, _$WebhookEnvelope];

  @override
  final String wireName = r'WebhookEnvelope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebhookEnvelope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(WebhookEnvelopeEventEnum),
    );
    yield r'subtype';
    yield serializers.serialize(
      object.subtype,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(NotificationWebhookMessage),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'foresignalOrigin';
    yield serializers.serialize(
      object.foresignalOrigin,
      specifiedType: const FullType(String),
    );
    if (object.exercise != null) {
      yield r'exercise';
      yield serializers.serialize(
        object.exercise,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebhookEnvelope object, {
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
    required WebhookEnvelopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WebhookEnvelopeEventEnum),
                  )
                  as WebhookEnvelopeEventEnum;
          result.event = valueDes;
          break;
        case r'subtype':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subtype = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationWebhookMessage),
                  )
                  as NotificationWebhookMessage;
          result.message.replace(valueDes);
          break;
        case r'data':
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
          result.data.replace(valueDes);
          break;
        case r'foresignalOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.foresignalOrigin = valueDes;
          break;
        case r'exercise':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.exercise = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebhookEnvelope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebhookEnvelopeBuilder();
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

/// Grows as the server adds events: a receiver must accept a value not listed here. Kept as `enum`, not `x-extensible-enum`, because this schema is also the `notification` webhook's payload, which the compatibility check cannot mark extensible.
class WebhookEnvelopeEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const WebhookEnvelopeEventEnum alert =
      _$webhookEnvelopeEventEnum_alert;
  @BuiltValueEnumConst(wireName: r'briefing')
  static const WebhookEnvelopeEventEnum briefing =
      _$webhookEnvelopeEventEnum_briefing;
  @BuiltValueEnumConst(wireName: r'system')
  static const WebhookEnvelopeEventEnum system =
      _$webhookEnvelopeEventEnum_system;
  @BuiltValueEnumConst(wireName: r'chronicle.proposed')
  static const WebhookEnvelopeEventEnum chroniclePeriodProposed =
      _$webhookEnvelopeEventEnum_chroniclePeriodProposed;
  @BuiltValueEnumConst(wireName: r'chronicle.cap_warning')
  static const WebhookEnvelopeEventEnum chroniclePeriodCapWarning =
      _$webhookEnvelopeEventEnum_chroniclePeriodCapWarning;
  @BuiltValueEnumConst(wireName: r'chronicle.gap')
  static const WebhookEnvelopeEventEnum chroniclePeriodGap =
      _$webhookEnvelopeEventEnum_chroniclePeriodGap;
  @BuiltValueEnumConst(wireName: r'social.divergence')
  static const WebhookEnvelopeEventEnum socialPeriodDivergence =
      _$webhookEnvelopeEventEnum_socialPeriodDivergence;
  @BuiltValueEnumConst(wireName: r'social.attention_gap')
  static const WebhookEnvelopeEventEnum socialPeriodAttentionGap =
      _$webhookEnvelopeEventEnum_socialPeriodAttentionGap;
  @BuiltValueEnumConst(wireName: r'analyst.note')
  static const WebhookEnvelopeEventEnum analystPeriodNote =
      _$webhookEnvelopeEventEnum_analystPeriodNote;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const WebhookEnvelopeEventEnum situationPeriodActivated =
      _$webhookEnvelopeEventEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const WebhookEnvelopeEventEnum situationPeriodEscalated =
      _$webhookEnvelopeEventEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'finding.significant')
  static const WebhookEnvelopeEventEnum findingPeriodSignificant =
      _$webhookEnvelopeEventEnum_findingPeriodSignificant;
  @BuiltValueEnumConst(wireName: r'forecast.resolved')
  static const WebhookEnvelopeEventEnum forecastPeriodResolved =
      _$webhookEnvelopeEventEnum_forecastPeriodResolved;
  @BuiltValueEnumConst(wireName: r'forecast.resolution_needed')
  static const WebhookEnvelopeEventEnum forecastPeriodResolutionNeeded =
      _$webhookEnvelopeEventEnum_forecastPeriodResolutionNeeded;
  @BuiltValueEnumConst(wireName: r'hypothesis.band_changed')
  static const WebhookEnvelopeEventEnum hypothesisPeriodBandChanged =
      _$webhookEnvelopeEventEnum_hypothesisPeriodBandChanged;
  @BuiltValueEnumConst(wireName: r'indicator.observed')
  static const WebhookEnvelopeEventEnum indicatorPeriodObserved =
      _$webhookEnvelopeEventEnum_indicatorPeriodObserved;
  @BuiltValueEnumConst(wireName: r'assumption.broken')
  static const WebhookEnvelopeEventEnum assumptionPeriodBroken =
      _$webhookEnvelopeEventEnum_assumptionPeriodBroken;
  @BuiltValueEnumConst(wireName: r'assessment.published')
  static const WebhookEnvelopeEventEnum assessmentPeriodPublished =
      _$webhookEnvelopeEventEnum_assessmentPeriodPublished;
  @BuiltValueEnumConst(wireName: r'mention')
  static const WebhookEnvelopeEventEnum mention =
      _$webhookEnvelopeEventEnum_mention;
  @BuiltValueEnumConst(wireName: r'share')
  static const WebhookEnvelopeEventEnum share =
      _$webhookEnvelopeEventEnum_share;
  @BuiltValueEnumConst(wireName: r'report.received')
  static const WebhookEnvelopeEventEnum reportPeriodReceived =
      _$webhookEnvelopeEventEnum_reportPeriodReceived;
  @BuiltValueEnumConst(wireName: r'package.received')
  static const WebhookEnvelopeEventEnum packagePeriodReceived =
      _$webhookEnvelopeEventEnum_packagePeriodReceived;
  @BuiltValueEnumConst(wireName: r'chronicle.access.requested')
  static const WebhookEnvelopeEventEnum chroniclePeriodAccessPeriodRequested =
      _$webhookEnvelopeEventEnum_chroniclePeriodAccessPeriodRequested;
  @BuiltValueEnumConst(wireName: r'saved-search.matches')
  static const WebhookEnvelopeEventEnum savedSearchPeriodMatches =
      _$webhookEnvelopeEventEnum_savedSearchPeriodMatches;
  @BuiltValueEnumConst(wireName: r'test')
  static const WebhookEnvelopeEventEnum test = _$webhookEnvelopeEventEnum_test;
  @BuiltValueEnumConst(wireName: r'personal')
  static const WebhookEnvelopeEventEnum personal =
      _$webhookEnvelopeEventEnum_personal;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WebhookEnvelopeEventEnum unknownDefaultOpenApi =
      _$webhookEnvelopeEventEnum_unknownDefaultOpenApi;

  static Serializer<WebhookEnvelopeEventEnum> get serializer =>
      _$webhookEnvelopeEventEnumSerializer;

  const WebhookEnvelopeEventEnum._(String name) : super(name);

  static BuiltSet<WebhookEnvelopeEventEnum> get values =>
      _$webhookEnvelopeEventEnumValues;
  static WebhookEnvelopeEventEnum valueOf(String name) =>
      _$webhookEnvelopeEventEnumValueOf(name);
}
