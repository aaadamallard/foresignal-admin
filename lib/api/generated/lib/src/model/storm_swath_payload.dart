//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storm_swath_payload.g.dart';

/// Kind `storm-swath` (externalId = track id): union of the cell polygons along a track
///
/// Properties:
/// * [trackId]
/// * [meshMaxMm]
/// * [durationMin]
/// * [status]
@BuiltValue()
abstract class StormSwathPayload
    implements Built<StormSwathPayload, StormSwathPayloadBuilder> {
  @BuiltValueField(wireName: r'trackId')
  String get trackId;

  @BuiltValueField(wireName: r'meshMaxMm')
  num? get meshMaxMm;

  @BuiltValueField(wireName: r'durationMin')
  num get durationMin;

  @BuiltValueField(wireName: r'status')
  StormSwathPayloadStatusEnum? get status;
  // enum statusEnum {  active,  ended,  };

  StormSwathPayload._();

  factory StormSwathPayload([void updates(StormSwathPayloadBuilder b)]) =
      _$StormSwathPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StormSwathPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StormSwathPayload> get serializer =>
      _$StormSwathPayloadSerializer();
}

class _$StormSwathPayloadSerializer
    implements PrimitiveSerializer<StormSwathPayload> {
  @override
  final Iterable<Type> types = const [StormSwathPayload, _$StormSwathPayload];

  @override
  final String wireName = r'StormSwathPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StormSwathPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'trackId';
    yield serializers.serialize(
      object.trackId,
      specifiedType: const FullType(String),
    );
    if (object.meshMaxMm != null) {
      yield r'meshMaxMm';
      yield serializers.serialize(
        object.meshMaxMm,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'durationMin';
    yield serializers.serialize(
      object.durationMin,
      specifiedType: const FullType(num),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StormSwathPayloadStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StormSwathPayload object, {
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
    required StormSwathPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trackId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.trackId = valueDes;
          break;
        case r'meshMaxMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.meshMaxMm = valueDes;
          break;
        case r'durationMin':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.durationMin = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StormSwathPayloadStatusEnum,
                    ),
                  )
                  as StormSwathPayloadStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StormSwathPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StormSwathPayloadBuilder();
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

class StormSwathPayloadStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const StormSwathPayloadStatusEnum active =
      _$stormSwathPayloadStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'ended')
  static const StormSwathPayloadStatusEnum ended =
      _$stormSwathPayloadStatusEnum_ended;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StormSwathPayloadStatusEnum unknownDefaultOpenApi =
      _$stormSwathPayloadStatusEnum_unknownDefaultOpenApi;

  static Serializer<StormSwathPayloadStatusEnum> get serializer =>
      _$stormSwathPayloadStatusEnumSerializer;

  const StormSwathPayloadStatusEnum._(String name) : super(name);

  static BuiltSet<StormSwathPayloadStatusEnum> get values =>
      _$stormSwathPayloadStatusEnumValues;
  static StormSwathPayloadStatusEnum valueOf(String name) =>
      _$stormSwathPayloadStatusEnumValueOf(name);
}
