//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/uv_forecast_payload_hours_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uv_forecast_payload.g.dart';

/// Kind `uv-forecast` (`epa-uv`, externalId `place:{id}`): hourly UV index for a place's ZIP
///
/// Properties:
/// * [zip]
/// * [hours]
/// * [maxUv]
/// * [maxAt]
@BuiltValue()
abstract class UvForecastPayload
    implements Built<UvForecastPayload, UvForecastPayloadBuilder> {
  @BuiltValueField(wireName: r'zip')
  String get zip;

  @BuiltValueField(wireName: r'hours')
  BuiltList<UvForecastPayloadHoursInner> get hours;

  @BuiltValueField(wireName: r'maxUv')
  num? get maxUv;

  @BuiltValueField(wireName: r'maxAt')
  DateTime? get maxAt;

  UvForecastPayload._();

  factory UvForecastPayload([void updates(UvForecastPayloadBuilder b)]) =
      _$UvForecastPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UvForecastPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UvForecastPayload> get serializer =>
      _$UvForecastPayloadSerializer();
}

class _$UvForecastPayloadSerializer
    implements PrimitiveSerializer<UvForecastPayload> {
  @override
  final Iterable<Type> types = const [UvForecastPayload, _$UvForecastPayload];

  @override
  final String wireName = r'UvForecastPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UvForecastPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'zip';
    yield serializers.serialize(
      object.zip,
      specifiedType: const FullType(String),
    );
    yield r'hours';
    yield serializers.serialize(
      object.hours,
      specifiedType: const FullType(BuiltList, [
        FullType(UvForecastPayloadHoursInner),
      ]),
    );
    if (object.maxUv != null) {
      yield r'maxUv';
      yield serializers.serialize(
        object.maxUv,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxAt != null) {
      yield r'maxAt';
      yield serializers.serialize(
        object.maxAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UvForecastPayload object, {
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
    required UvForecastPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'zip':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.zip = valueDes;
          break;
        case r'hours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(UvForecastPayloadHoursInner),
                    ]),
                  )
                  as BuiltList<UvForecastPayloadHoursInner>;
          result.hours.replace(valueDes);
          break;
        case r'maxUv':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxUv = valueDes;
          break;
        case r'maxAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.maxAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UvForecastPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UvForecastPayloadBuilder();
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
