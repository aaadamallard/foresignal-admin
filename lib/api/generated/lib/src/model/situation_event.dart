//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/situation_summary.dart';
import 'package:foresignal_api/src/model/situation_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_event.g.dart';

/// SSE payload on topic `situations`: the situation summary plus its version
///
/// Properties:
/// * [event]
/// * [situation]
/// * [version]
/// * [previousStatus]
/// * [previousSeverity]
/// * [mergedInto] - ULID identifier
/// * [at]
@BuiltValue()
abstract class SituationEvent
    implements Built<SituationEvent, SituationEventBuilder> {
  @BuiltValueField(wireName: r'event')
  SituationEventEventEnum get event;
  // enum eventEnum {  situation.created,  situation.updated,  situation.activated,  situation.escalated,  situation.dormant,  situation.closed,  situation.merged,  };

  @BuiltValueField(wireName: r'situation')
  SituationSummary get situation;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'previousStatus')
  SituationStatus? get previousStatus;
  // enum previousStatusEnum {  emerging,  active,  dormant,  closed,  };

  @BuiltValueField(wireName: r'previousSeverity')
  Severity? get previousSeverity;
  // enum previousSeverityEnum {  info,  warning,  critical,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  SituationEvent._();

  factory SituationEvent([void updates(SituationEventBuilder b)]) =
      _$SituationEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationEvent> get serializer =>
      _$SituationEventSerializer();
}

class _$SituationEventSerializer
    implements PrimitiveSerializer<SituationEvent> {
  @override
  final Iterable<Type> types = const [SituationEvent, _$SituationEvent];

  @override
  final String wireName = r'SituationEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(SituationEventEventEnum),
    );
    yield r'situation';
    yield serializers.serialize(
      object.situation,
      specifiedType: const FullType(SituationSummary),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.previousStatus != null) {
      yield r'previousStatus';
      yield serializers.serialize(
        object.previousStatus,
        specifiedType: const FullType.nullable(SituationStatus),
      );
    }
    if (object.previousSeverity != null) {
      yield r'previousSeverity';
      yield serializers.serialize(
        object.previousSeverity,
        specifiedType: const FullType.nullable(Severity),
      );
    }
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationEvent object, {
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
    required SituationEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationEventEventEnum),
          ) as SituationEventEventEnum;
          result.event = valueDes;
          break;
        case r'situation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SituationSummary),
          ) as SituationSummary;
          result.situation.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.version = valueDes;
          break;
        case r'previousStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationStatus),
          ) as SituationStatus?;
          if (valueDes == null) continue;
          result.previousStatus = valueDes;
          break;
        case r'previousSeverity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Severity),
          ) as Severity?;
          if (valueDes == null) continue;
          result.previousSeverity = valueDes;
          break;
        case r'mergedInto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationEventBuilder();
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

class SituationEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'situation.created')
  static const SituationEventEventEnum situationPeriodCreated =
      _$situationEventEventEnum_situationPeriodCreated;
  @BuiltValueEnumConst(wireName: r'situation.updated')
  static const SituationEventEventEnum situationPeriodUpdated =
      _$situationEventEventEnum_situationPeriodUpdated;
  @BuiltValueEnumConst(wireName: r'situation.activated')
  static const SituationEventEventEnum situationPeriodActivated =
      _$situationEventEventEnum_situationPeriodActivated;
  @BuiltValueEnumConst(wireName: r'situation.escalated')
  static const SituationEventEventEnum situationPeriodEscalated =
      _$situationEventEventEnum_situationPeriodEscalated;
  @BuiltValueEnumConst(wireName: r'situation.dormant')
  static const SituationEventEventEnum situationPeriodDormant =
      _$situationEventEventEnum_situationPeriodDormant;
  @BuiltValueEnumConst(wireName: r'situation.closed')
  static const SituationEventEventEnum situationPeriodClosed =
      _$situationEventEventEnum_situationPeriodClosed;
  @BuiltValueEnumConst(wireName: r'situation.merged')
  static const SituationEventEventEnum situationPeriodMerged =
      _$situationEventEventEnum_situationPeriodMerged;

  static Serializer<SituationEventEventEnum> get serializer =>
      _$situationEventEventEnumSerializer;

  const SituationEventEventEnum._(String name) : super(name);

  static BuiltSet<SituationEventEventEnum> get values =>
      _$situationEventEventEnumValues;
  static SituationEventEventEnum valueOf(String name) =>
      _$situationEventEventEnumValueOf(name);
}
