//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intelligence_event_context.g.dart';

/// Context added by annotators
///
/// Properties:
/// * [weather] - 105 weather annotators (outage-weather): NWS warnings, radar ≥ 50 dBZ, gusts ≥ 25 m/s near the event, as context members
@BuiltValue()
abstract class IntelligenceEventContext
    implements
        Built<IntelligenceEventContext, IntelligenceEventContextBuilder> {
  /// 105 weather annotators (outage-weather): NWS warnings, radar ≥ 50 dBZ, gusts ≥ 25 m/s near the event, as context members
  @BuiltValueField(wireName: r'weather')
  BuiltMap<String, JsonObject?>? get weather;

  IntelligenceEventContext._();

  factory IntelligenceEventContext(
          [void updates(IntelligenceEventContextBuilder b)]) =
      _$IntelligenceEventContext;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelligenceEventContextBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelligenceEventContext> get serializer =>
      _$IntelligenceEventContextSerializer();
}

class _$IntelligenceEventContextSerializer
    implements PrimitiveSerializer<IntelligenceEventContext> {
  @override
  final Iterable<Type> types = const [
    IntelligenceEventContext,
    _$IntelligenceEventContext
  ];

  @override
  final String wireName = r'IntelligenceEventContext';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelligenceEventContext object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weather != null) {
      yield r'weather';
      yield serializers.serialize(
        object.weather,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelligenceEventContext object, {
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
    required IntelligenceEventContextBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weather':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.weather.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelligenceEventContext deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligenceEventContextBuilder();
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
