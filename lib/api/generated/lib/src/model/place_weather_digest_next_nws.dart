//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_digest_next_nws.g.dart';

/// NWS gridpoint summary
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [popMax24h]
/// * [qpf24hMm]
/// * [gustMaxMs24h]
/// * [tMaxC24h]
/// * [tMinC24h]
/// * [updatedAt]
@BuiltValue()
abstract class PlaceWeatherDigestNextNws
    implements
        Built<PlaceWeatherDigestNextNws, PlaceWeatherDigestNextNwsBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  @BuiltValueField(wireName: r'popMax24h')
  int? get popMax24h;

  @BuiltValueField(wireName: r'qpf24hMm')
  num? get qpf24hMm;

  @BuiltValueField(wireName: r'gustMaxMs24h')
  num? get gustMaxMs24h;

  @BuiltValueField(wireName: r'tMaxC24h')
  num? get tMaxC24h;

  @BuiltValueField(wireName: r'tMinC24h')
  num? get tMinC24h;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  PlaceWeatherDigestNextNws._();

  factory PlaceWeatherDigestNextNws([
    void updates(PlaceWeatherDigestNextNwsBuilder b),
  ]) = _$PlaceWeatherDigestNextNws;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherDigestNextNwsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherDigestNextNws> get serializer =>
      _$PlaceWeatherDigestNextNwsSerializer();
}

class _$PlaceWeatherDigestNextNwsSerializer
    implements PrimitiveSerializer<PlaceWeatherDigestNextNws> {
  @override
  final Iterable<Type> types = const [
    PlaceWeatherDigestNextNws,
    _$PlaceWeatherDigestNextNws,
  ];

  @override
  final String wireName = r'PlaceWeatherDigestNextNws';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherDigestNextNws object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WeatherSectionStatus),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.statusText != null) {
      yield r'statusText';
      yield serializers.serialize(
        object.statusText,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.gustMaxMs24h != null) {
      yield r'gustMaxMs24h';
      yield serializers.serialize(
        object.gustMaxMs24h,
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
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherDigestNextNws object, {
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
    required PlaceWeatherDigestNextNwsBuilder result,
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
                    specifiedType: const FullType(WeatherSectionStatus),
                  )
                  as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'popMax24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.popMax24h = valueDes;
          break;
        case r'qpf24hMm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.qpf24hMm = valueDes;
          break;
        case r'gustMaxMs24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.gustMaxMs24h = valueDes;
          break;
        case r'tMaxC24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.tMaxC24h = valueDes;
          break;
        case r'tMinC24h':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.tMinC24h = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherDigestNextNws deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherDigestNextNwsBuilder();
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
