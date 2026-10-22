//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/nws_forecast_payload_hazards_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nws_forecast_payload.g.dart';

/// Payload of `nws-forecast` records (nws-gridpoints, externalId `place:{placeId}`; no geometry, since a place's position is sensitive)
///
/// Properties:
/// * [place]
/// * [wfo]
/// * [gridX]
/// * [gridY]
/// * [popMax24h]
/// * [qpf24hMm]
/// * [tMaxC24h]
/// * [tMinC24h]
/// * [gustMaxMs24h]
/// * [hazards]
/// * [forecastUpdated]
@BuiltValue()
abstract class NwsForecastPayload
    implements Built<NwsForecastPayload, NwsForecastPayloadBuilder> {
  @BuiltValueField(wireName: r'place')
  String get place;

  @BuiltValueField(wireName: r'wfo')
  String get wfo;

  @BuiltValueField(wireName: r'gridX')
  int get gridX;

  @BuiltValueField(wireName: r'gridY')
  int get gridY;

  @BuiltValueField(wireName: r'popMax24h')
  int? get popMax24h;

  @BuiltValueField(wireName: r'qpf24hMm')
  num? get qpf24hMm;

  @BuiltValueField(wireName: r'tMaxC24h')
  num? get tMaxC24h;

  @BuiltValueField(wireName: r'tMinC24h')
  num? get tMinC24h;

  @BuiltValueField(wireName: r'gustMaxMs24h')
  num? get gustMaxMs24h;

  @BuiltValueField(wireName: r'hazards')
  BuiltList<NwsForecastPayloadHazardsInner>? get hazards;

  @BuiltValueField(wireName: r'forecastUpdated')
  DateTime get forecastUpdated;

  NwsForecastPayload._();

  factory NwsForecastPayload([void updates(NwsForecastPayloadBuilder b)]) =
      _$NwsForecastPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NwsForecastPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NwsForecastPayload> get serializer =>
      _$NwsForecastPayloadSerializer();
}

class _$NwsForecastPayloadSerializer
    implements PrimitiveSerializer<NwsForecastPayload> {
  @override
  final Iterable<Type> types = const [NwsForecastPayload, _$NwsForecastPayload];

  @override
  final String wireName = r'NwsForecastPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NwsForecastPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'place';
    yield serializers.serialize(
      object.place,
      specifiedType: const FullType(String),
    );
    yield r'wfo';
    yield serializers.serialize(
      object.wfo,
      specifiedType: const FullType(String),
    );
    yield r'gridX';
    yield serializers.serialize(
      object.gridX,
      specifiedType: const FullType(int),
    );
    yield r'gridY';
    yield serializers.serialize(
      object.gridY,
      specifiedType: const FullType(int),
    );
    if (object.popMax24h != null) {
      yield r'popMax24h';
      yield serializers.serialize(
        object.popMax24h,
        specifiedType: const FullType(int),
      );
    }
    if (object.qpf24hMm != null) {
      yield r'qpf24hMm';
      yield serializers.serialize(
        object.qpf24hMm,
        specifiedType: const FullType(num),
      );
    }
    if (object.tMaxC24h != null) {
      yield r'tMaxC24h';
      yield serializers.serialize(
        object.tMaxC24h,
        specifiedType: const FullType(num),
      );
    }
    if (object.tMinC24h != null) {
      yield r'tMinC24h';
      yield serializers.serialize(
        object.tMinC24h,
        specifiedType: const FullType(num),
      );
    }
    if (object.gustMaxMs24h != null) {
      yield r'gustMaxMs24h';
      yield serializers.serialize(
        object.gustMaxMs24h,
        specifiedType: const FullType(num),
      );
    }
    if (object.hazards != null) {
      yield r'hazards';
      yield serializers.serialize(
        object.hazards,
        specifiedType: const FullType(
            BuiltList, [FullType(NwsForecastPayloadHazardsInner)]),
      );
    }
    yield r'forecastUpdated';
    yield serializers.serialize(
      object.forecastUpdated,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NwsForecastPayload object, {
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
    required NwsForecastPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.place = valueDes;
          break;
        case r'wfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wfo = valueDes;
          break;
        case r'gridX':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.gridX = valueDes;
          break;
        case r'gridY':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.gridY = valueDes;
          break;
        case r'popMax24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.popMax24h = valueDes;
          break;
        case r'qpf24hMm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.qpf24hMm = valueDes;
          break;
        case r'tMaxC24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.tMaxC24h = valueDes;
          break;
        case r'tMinC24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.tMinC24h = valueDes;
          break;
        case r'gustMaxMs24h':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.gustMaxMs24h = valueDes;
          break;
        case r'hazards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(NwsForecastPayloadHazardsInner)]),
          ) as BuiltList<NwsForecastPayloadHazardsInner>?;
          if (valueDes == null) continue;
          result.hazards.replace(valueDes);
          break;
        case r'forecastUpdated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.forecastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NwsForecastPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NwsForecastPayloadBuilder();
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
