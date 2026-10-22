//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pattern_payload_nearest_airport.g.dart';

/// Nearest OurAirports airport within 50 km
///
/// Properties:
/// * [ident]
/// * [name]
/// * [distanceKm]
@BuiltValue()
abstract class HoldingPatternPayloadNearestAirport
    implements
        Built<
          HoldingPatternPayloadNearestAirport,
          HoldingPatternPayloadNearestAirportBuilder
        > {
  @BuiltValueField(wireName: r'ident')
  String get ident;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  HoldingPatternPayloadNearestAirport._();

  factory HoldingPatternPayloadNearestAirport([
    void updates(HoldingPatternPayloadNearestAirportBuilder b),
  ]) = _$HoldingPatternPayloadNearestAirport;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPatternPayloadNearestAirportBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPatternPayloadNearestAirport> get serializer =>
      _$HoldingPatternPayloadNearestAirportSerializer();
}

class _$HoldingPatternPayloadNearestAirportSerializer
    implements PrimitiveSerializer<HoldingPatternPayloadNearestAirport> {
  @override
  final Iterable<Type> types = const [
    HoldingPatternPayloadNearestAirport,
    _$HoldingPatternPayloadNearestAirport,
  ];

  @override
  final String wireName = r'HoldingPatternPayloadNearestAirport';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPatternPayloadNearestAirport object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ident';
    yield serializers.serialize(
      object.ident,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPatternPayloadNearestAirport object, {
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
    required HoldingPatternPayloadNearestAirportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ident':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ident = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPatternPayloadNearestAirport deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPatternPayloadNearestAirportBuilder();
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
