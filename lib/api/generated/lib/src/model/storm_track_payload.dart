//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/storm_track_payload_lightning_jump.dart';
import 'package:foresignal_api/src/model/storm_track_payload_nowcast_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/storm_track_payload_trend.dart';
import 'package:foresignal_api/src/model/storm_track_payload_cell.dart';
import 'package:foresignal_api/src/model/storm_track_payload_motion.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:foresignal_api/src/model/storm_track_payload_history_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_track_payload.g.dart';

/// Kind `storm-track` (`wx-storm-tracks`, TITAN-lite): a tracked convective cell with motion, trend, nowcast and lightning jump
///
/// Properties:
/// * [cell]
/// * [history]
/// * [motion]
/// * [trend]
/// * [lightningJump]
/// * [nowcast]
/// * [status]
/// * [mergedInto]
/// * [parentTrackId]
/// * [detector]
@BuiltValue()
abstract class StormTrackPayload
    implements Built<StormTrackPayload, StormTrackPayloadBuilder> {
  @BuiltValueField(wireName: r'cell')
  StormTrackPayloadCell get cell;

  @BuiltValueField(wireName: r'history')
  BuiltList<StormTrackPayloadHistoryInner>? get history;

  @BuiltValueField(wireName: r'motion')
  StormTrackPayloadMotion get motion;

  @BuiltValueField(wireName: r'trend')
  StormTrackPayloadTrend? get trend;

  @BuiltValueField(wireName: r'lightningJump')
  StormTrackPayloadLightningJump? get lightningJump;

  @BuiltValueField(wireName: r'nowcast')
  BuiltList<StormTrackPayloadNowcastInner>? get nowcast;

  @BuiltValueField(wireName: r'status')
  StormTrackPayloadStatusEnum get status;
  // enum statusEnum {  active,  ended,  };

  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  @BuiltValueField(wireName: r'parentTrackId')
  String? get parentTrackId;

  @BuiltValueField(wireName: r'detector')
  DetectorRef? get detector;

  StormTrackPayload._();

  factory StormTrackPayload([void updates(StormTrackPayloadBuilder b)]) =
      _$StormTrackPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormTrackPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormTrackPayload> get serializer =>
      _$StormTrackPayloadSerializer();
}

class _$StormTrackPayloadSerializer
    implements PrimitiveSerializer<StormTrackPayload> {
  @override
  final Iterable<Type> types = const [StormTrackPayload, _$StormTrackPayload];

  @override
  final String wireName = r'StormTrackPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormTrackPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cell';
    yield serializers.serialize(
      object.cell,
      specifiedType: const FullType(StormTrackPayloadCell),
    );
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(BuiltList, [
          FullType(StormTrackPayloadHistoryInner),
        ]),
      );
    }
    yield r'motion';
    yield serializers.serialize(
      object.motion,
      specifiedType: const FullType(StormTrackPayloadMotion),
    );
    if (object.trend != null) {
      yield r'trend';
      yield serializers.serialize(
        object.trend,
        specifiedType: const FullType(StormTrackPayloadTrend),
      );
    }
    if (object.lightningJump != null) {
      yield r'lightningJump';
      yield serializers.serialize(
        object.lightningJump,
        specifiedType: const FullType.nullable(StormTrackPayloadLightningJump),
      );
    }
    if (object.nowcast != null) {
      yield r'nowcast';
      yield serializers.serialize(
        object.nowcast,
        specifiedType: const FullType(BuiltList, [
          FullType(StormTrackPayloadNowcastInner),
        ]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(StormTrackPayloadStatusEnum),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.parentTrackId != null) {
      yield r'parentTrackId';
      yield serializers.serialize(
        object.parentTrackId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.detector != null) {
      yield r'detector';
      yield serializers.serialize(
        object.detector,
        specifiedType: const FullType(DetectorRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StormTrackPayload object, {
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
    required StormTrackPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StormTrackPayloadCell),
                  )
                  as StormTrackPayloadCell;
          result.cell.replace(valueDes);
          break;
        case r'history':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StormTrackPayloadHistoryInner),
                    ]),
                  )
                  as BuiltList<StormTrackPayloadHistoryInner>?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        case r'motion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StormTrackPayloadMotion),
                  )
                  as StormTrackPayloadMotion;
          result.motion.replace(valueDes);
          break;
        case r'trend':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StormTrackPayloadTrend,
                    ),
                  )
                  as StormTrackPayloadTrend?;
          if (valueDes == null) continue;
          result.trend.replace(valueDes);
          break;
        case r'lightningJump':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StormTrackPayloadLightningJump,
                    ),
                  )
                  as StormTrackPayloadLightningJump?;
          if (valueDes == null) continue;
          result.lightningJump.replace(valueDes);
          break;
        case r'nowcast':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(StormTrackPayloadNowcastInner),
                    ]),
                  )
                  as BuiltList<StormTrackPayloadNowcastInner>?;
          if (valueDes == null) continue;
          result.nowcast.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StormTrackPayloadStatusEnum),
                  )
                  as StormTrackPayloadStatusEnum;
          result.status = valueDes;
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        case r'parentTrackId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.parentTrackId = valueDes;
          break;
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DetectorRef),
                  )
                  as DetectorRef?;
          if (valueDes == null) continue;
          result.detector.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormTrackPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormTrackPayloadBuilder();
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

class StormTrackPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const StormTrackPayloadStatusEnum active =
      _$stormTrackPayloadStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'ended')
  static const StormTrackPayloadStatusEnum ended =
      _$stormTrackPayloadStatusEnum_ended;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StormTrackPayloadStatusEnum unknownDefaultOpenApi =
      _$stormTrackPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<StormTrackPayloadStatusEnum> get serializer =>
      _$stormTrackPayloadStatusEnumSerializer;

  const StormTrackPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<StormTrackPayloadStatusEnum> get values =>
      _$stormTrackPayloadStatusEnumValues;
  static StormTrackPayloadStatusEnum valueOf(String name) =>
      _$stormTrackPayloadStatusEnumValueOf(name);
}
