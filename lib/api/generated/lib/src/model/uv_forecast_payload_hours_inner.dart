//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uv_forecast_payload_hours_inner.g.dart';

/// Hourly value
///
/// Properties:
/// * [time]
/// * [uv]
@BuiltValue()
abstract class UvForecastPayloadHoursInner
    implements
        Built<UvForecastPayloadHoursInner, UvForecastPayloadHoursInnerBuilder> {
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'uv')
  num get uv;

  UvForecastPayloadHoursInner._();

  factory UvForecastPayloadHoursInner(
          [void updates(UvForecastPayloadHoursInnerBuilder b)]) =
      _$UvForecastPayloadHoursInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UvForecastPayloadHoursInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UvForecastPayloadHoursInner> get serializer =>
      _$UvForecastPayloadHoursInnerSerializer();
}

class _$UvForecastPayloadHoursInnerSerializer
    implements PrimitiveSerializer<UvForecastPayloadHoursInner> {
  @override
  final Iterable<Type> types = const [
    UvForecastPayloadHoursInner,
    _$UvForecastPayloadHoursInner
  ];

  @override
  final String wireName = r'UvForecastPayloadHoursInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UvForecastPayloadHoursInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'uv';
    yield serializers.serialize(
      object.uv,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UvForecastPayloadHoursInner object, {
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
    required UvForecastPayloadHoursInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'uv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.uv = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UvForecastPayloadHoursInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UvForecastPayloadHoursInnerBuilder();
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
