//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sink_status_clients.dart';
import 'package:foresignal_api/src/model/sink_status_denied.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sink_status.g.dart';

/// Cursor, lag and delivery counters of a sink (110)
///
/// Properties:
/// * [sinkId]
/// * [state]
/// * [lastSeq]
/// * [watermarkSeq]
/// * [lastPublishedSeq]
/// * [lagSeq] - lastPublishedSeq − lastSeq
/// * [lastDeliveredAt]
/// * [lastError]
/// * [failingSince]
/// * [resyncCount]
/// * [delivered]
/// * [dropped] - Updates conflated by rate control
/// * [denied]
/// * [clients]
@BuiltValue()
abstract class SinkStatus implements Built<SinkStatus, SinkStatusBuilder> {
  @BuiltValueField(wireName: r'sinkId')
  String get sinkId;

  @BuiltValueField(wireName: r'state')
  SinkStatusStateEnum get state;
  // enum stateEnum {  RUNNING,  RESYNCING,  FAILING,  STOPPED,  };

  @BuiltValueField(wireName: r'lastSeq')
  int? get lastSeq;

  @BuiltValueField(wireName: r'watermarkSeq')
  int? get watermarkSeq;

  @BuiltValueField(wireName: r'lastPublishedSeq')
  int? get lastPublishedSeq;

  /// lastPublishedSeq − lastSeq
  @BuiltValueField(wireName: r'lagSeq')
  int? get lagSeq;

  @BuiltValueField(wireName: r'lastDeliveredAt')
  DateTime? get lastDeliveredAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'failingSince')
  DateTime? get failingSince;

  @BuiltValueField(wireName: r'resyncCount')
  int? get resyncCount;

  @BuiltValueField(wireName: r'delivered')
  int get delivered;

  /// Updates conflated by rate control
  @BuiltValueField(wireName: r'dropped')
  int get dropped;

  @BuiltValueField(wireName: r'denied')
  SinkStatusDenied get denied;

  @BuiltValueField(wireName: r'clients')
  SinkStatusClients? get clients;

  SinkStatus._();

  factory SinkStatus([void updates(SinkStatusBuilder b)]) = _$SinkStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SinkStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SinkStatus> get serializer => _$SinkStatusSerializer();
}

class _$SinkStatusSerializer implements PrimitiveSerializer<SinkStatus> {
  @override
  final Iterable<Type> types = const [SinkStatus, _$SinkStatus];

  @override
  final String wireName = r'SinkStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SinkStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sinkId';
    yield serializers.serialize(
      object.sinkId,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(SinkStatusStateEnum),
    );
    if (object.lastSeq != null) {
      yield r'lastSeq';
      yield serializers.serialize(
        object.lastSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.watermarkSeq != null) {
      yield r'watermarkSeq';
      yield serializers.serialize(
        object.watermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastPublishedSeq != null) {
      yield r'lastPublishedSeq';
      yield serializers.serialize(
        object.lastPublishedSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lagSeq != null) {
      yield r'lagSeq';
      yield serializers.serialize(
        object.lagSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.lastDeliveredAt != null) {
      yield r'lastDeliveredAt';
      yield serializers.serialize(
        object.lastDeliveredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.failingSince != null) {
      yield r'failingSince';
      yield serializers.serialize(
        object.failingSince,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.resyncCount != null) {
      yield r'resyncCount';
      yield serializers.serialize(
        object.resyncCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'delivered';
    yield serializers.serialize(
      object.delivered,
      specifiedType: const FullType(int),
    );
    yield r'dropped';
    yield serializers.serialize(
      object.dropped,
      specifiedType: const FullType(int),
    );
    yield r'denied';
    yield serializers.serialize(
      object.denied,
      specifiedType: const FullType(SinkStatusDenied),
    );
    if (object.clients != null) {
      yield r'clients';
      yield serializers.serialize(
        object.clients,
        specifiedType: const FullType.nullable(SinkStatusClients),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SinkStatus object, {
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
    required SinkStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sinkId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sinkId = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkStatusStateEnum),
                  )
                  as SinkStatusStateEnum;
          result.state = valueDes;
          break;
        case r'lastSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastSeq = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.watermarkSeq = valueDes;
          break;
        case r'lastPublishedSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastPublishedSeq = valueDes;
          break;
        case r'lagSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lagSeq = valueDes;
          break;
        case r'lastDeliveredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastDeliveredAt = valueDes;
          break;
        case r'lastError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'failingSince':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.failingSince = valueDes;
          break;
        case r'resyncCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.resyncCount = valueDes;
          break;
        case r'delivered':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.delivered = valueDes;
          break;
        case r'dropped':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.dropped = valueDes;
          break;
        case r'denied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SinkStatusDenied),
                  )
                  as SinkStatusDenied;
          result.denied.replace(valueDes);
          break;
        case r'clients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SinkStatusClients),
                  )
                  as SinkStatusClients?;
          if (valueDes == null) continue;
          result.clients.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SinkStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SinkStatusBuilder();
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

class SinkStatusStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RUNNING')
  static const SinkStatusStateEnum RUNNING = _$sinkStatusStateEnum_RUNNING;
  @BuiltValueEnumConst(wireName: r'RESYNCING')
  static const SinkStatusStateEnum RESYNCING = _$sinkStatusStateEnum_RESYNCING;
  @BuiltValueEnumConst(wireName: r'FAILING')
  static const SinkStatusStateEnum FAILING = _$sinkStatusStateEnum_FAILING;
  @BuiltValueEnumConst(wireName: r'STOPPED')
  static const SinkStatusStateEnum STOPPED = _$sinkStatusStateEnum_STOPPED;

  static Serializer<SinkStatusStateEnum> get serializer =>
      _$sinkStatusStateEnumSerializer;

  const SinkStatusStateEnum._(String name) : super(name);

  static BuiltSet<SinkStatusStateEnum> get values =>
      _$sinkStatusStateEnumValues;
  static SinkStatusStateEnum valueOf(String name) =>
      _$sinkStatusStateEnumValueOf(name);
}
