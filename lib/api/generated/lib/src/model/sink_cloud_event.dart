//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sink_cloud_event_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_cloud_event.g.dart';

/// CloudEvents 1.0 structured-mode event sent by the `cloudevents` sink (application/cloudevents+json; batches are arrays as application/cloudevents-batch+json). Signed with X-Foresignal-Signature as 018 webhooks (110)
///
/// Properties:
/// * [specversion]
/// * [id] - {instanceId}:{seq}
/// * [source_] - urn:foresignal:{instanceId}:source:{sourceId}
/// * [type]
/// * [subject] - {sourceId}/{externalId}
/// * [time] - observedAt
/// * [datacontenttype]
/// * [foresignalseq]
/// * [foresignalkind]
/// * [foresignalreason] - persistReason of the version, or SNAPSHOT
/// * [data]
@BuiltValue()
abstract class SinkCloudEvent
    implements Built<SinkCloudEvent, SinkCloudEventBuilder> {
  @BuiltValueField(wireName: r'specversion')
  SinkCloudEventSpecversionEnum get specversion;
  // enum specversionEnum {  1.0,  };

  /// {instanceId}:{seq}
  @BuiltValueField(wireName: r'id')
  String get id;

  /// urn:foresignal:{instanceId}:source:{sourceId}
  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'type')
  SinkCloudEventTypeEnum get type;
  // enum typeEnum {  ai.foresignal.record.created,  ai.foresignal.record.updated,  ai.foresignal.record.tombstoned,  ai.foresignal.record.snapshot,  };

  /// {sourceId}/{externalId}
  @BuiltValueField(wireName: r'subject')
  String get subject;

  /// observedAt
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'datacontenttype')
  String? get datacontenttype;

  @BuiltValueField(wireName: r'foresignalseq')
  int? get foresignalseq;

  @BuiltValueField(wireName: r'foresignalkind')
  String? get foresignalkind;

  /// persistReason of the version, or SNAPSHOT
  @BuiltValueField(wireName: r'foresignalreason')
  String? get foresignalreason;

  @BuiltValueField(wireName: r'data')
  SinkCloudEventData get data;

  SinkCloudEvent._();

  factory SinkCloudEvent([void updates(SinkCloudEventBuilder b)]) =
      _$SinkCloudEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkCloudEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkCloudEvent> get serializer =>
      _$SinkCloudEventSerializer();
}

class _$SinkCloudEventSerializer
    implements PrimitiveSerializer<SinkCloudEvent> {
  @override
  final Iterable<Type> types = const [SinkCloudEvent, _$SinkCloudEvent];

  @override
  final String wireName = r'SinkCloudEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkCloudEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'specversion';
    yield serializers.serialize(
      object.specversion,
      specifiedType: const FullType(SinkCloudEventSpecversionEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SinkCloudEventTypeEnum),
    );
    yield r'subject';
    yield serializers.serialize(
      object.subject,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.datacontenttype != null) {
      yield r'datacontenttype';
      yield serializers.serialize(
        object.datacontenttype,
        specifiedType: const FullType(String),
      );
    }
    if (object.foresignalseq != null) {
      yield r'foresignalseq';
      yield serializers.serialize(
        object.foresignalseq,
        specifiedType: const FullType(int),
      );
    }
    if (object.foresignalkind != null) {
      yield r'foresignalkind';
      yield serializers.serialize(
        object.foresignalkind,
        specifiedType: const FullType(String),
      );
    }
    if (object.foresignalreason != null) {
      yield r'foresignalreason';
      yield serializers.serialize(
        object.foresignalreason,
        specifiedType: const FullType(String),
      );
    }
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(SinkCloudEventData),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkCloudEvent object, {
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
    required SinkCloudEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'specversion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SinkCloudEventSpecversionEnum,
                    ),
                  )
                  as SinkCloudEventSpecversionEnum;
          result.specversion = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkCloudEventTypeEnum),
                  )
                  as SinkCloudEventTypeEnum;
          result.type = valueDes;
          break;
        case r'subject':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subject = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        case r'datacontenttype':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.datacontenttype = valueDes;
          break;
        case r'foresignalseq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.foresignalseq = valueDes;
          break;
        case r'foresignalkind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.foresignalkind = valueDes;
          break;
        case r'foresignalreason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.foresignalreason = valueDes;
          break;
        case r'data':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkCloudEventData),
                  )
                  as SinkCloudEventData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkCloudEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkCloudEventBuilder();
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

class SinkCloudEventSpecversionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'1.0')
  static const SinkCloudEventSpecversionEnum n1period0 =
      _$sinkCloudEventSpecversionEnum_n1period0;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkCloudEventSpecversionEnum unknownDefaultOpenApi =
      _$sinkCloudEventSpecversionEnum_unknownDefaultOpenApi;

  static Serializer<SinkCloudEventSpecversionEnum> get serializer =>
      _$sinkCloudEventSpecversionEnumSerializer;

  const SinkCloudEventSpecversionEnum._(String name) : super(name);

  static BuiltSet<SinkCloudEventSpecversionEnum> get values =>
      _$sinkCloudEventSpecversionEnumValues;
  static SinkCloudEventSpecversionEnum valueOf(String name) =>
      _$sinkCloudEventSpecversionEnumValueOf(name);
}

class SinkCloudEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ai.foresignal.record.created')
  static const SinkCloudEventTypeEnum
  aiPeriodForesignalPeriodRecordPeriodCreated =
      _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodCreated;
  @BuiltValueEnumConst(wireName: r'ai.foresignal.record.updated')
  static const SinkCloudEventTypeEnum
  aiPeriodForesignalPeriodRecordPeriodUpdated =
      _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodUpdated;
  @BuiltValueEnumConst(wireName: r'ai.foresignal.record.tombstoned')
  static const SinkCloudEventTypeEnum
  aiPeriodForesignalPeriodRecordPeriodTombstoned =
      _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodTombstoned;
  @BuiltValueEnumConst(wireName: r'ai.foresignal.record.snapshot')
  static const SinkCloudEventTypeEnum
  aiPeriodForesignalPeriodRecordPeriodSnapshot =
      _$sinkCloudEventTypeEnum_aiPeriodForesignalPeriodRecordPeriodSnapshot;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SinkCloudEventTypeEnum unknownDefaultOpenApi =
      _$sinkCloudEventTypeEnum_unknownDefaultOpenApi;

  static Serializer<SinkCloudEventTypeEnum> get serializer =>
      _$sinkCloudEventTypeEnumSerializer;

  const SinkCloudEventTypeEnum._(String name) : super(name);

  static BuiltSet<SinkCloudEventTypeEnum> get values =>
      _$sinkCloudEventTypeEnumValues;
  static SinkCloudEventTypeEnum valueOf(String name) =>
      _$sinkCloudEventTypeEnumValueOf(name);
}
