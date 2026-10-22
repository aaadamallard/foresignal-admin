//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nws_forecast_payload_hazards_inner.g.dart';

/// NWS hazard
///
/// Properties:
/// * [type] - phenomenon.significance, for example FZ.W
/// * [validTime] - ISO-8601 interval
@BuiltValue()
abstract class NwsForecastPayloadHazardsInner
    implements
        Built<NwsForecastPayloadHazardsInner,
            NwsForecastPayloadHazardsInnerBuilder> {
  /// phenomenon.significance, for example FZ.W
  @BuiltValueField(wireName: r'type')
  String get type;

  /// ISO-8601 interval
  @BuiltValueField(wireName: r'validTime')
  String? get validTime;

  NwsForecastPayloadHazardsInner._();

  factory NwsForecastPayloadHazardsInner(
          [void updates(NwsForecastPayloadHazardsInnerBuilder b)]) =
      _$NwsForecastPayloadHazardsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NwsForecastPayloadHazardsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NwsForecastPayloadHazardsInner> get serializer =>
      _$NwsForecastPayloadHazardsInnerSerializer();
}

class _$NwsForecastPayloadHazardsInnerSerializer
    implements PrimitiveSerializer<NwsForecastPayloadHazardsInner> {
  @override
  final Iterable<Type> types = const [
    NwsForecastPayloadHazardsInner,
    _$NwsForecastPayloadHazardsInner
  ];

  @override
  final String wireName = r'NwsForecastPayloadHazardsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NwsForecastPayloadHazardsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.validTime != null) {
      yield r'validTime';
      yield serializers.serialize(
        object.validTime,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NwsForecastPayloadHazardsInner object, {
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
    required NwsForecastPayloadHazardsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'validTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.validTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NwsForecastPayloadHazardsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NwsForecastPayloadHazardsInnerBuilder();
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
