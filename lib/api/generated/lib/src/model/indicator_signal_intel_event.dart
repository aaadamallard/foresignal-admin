//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'indicator_signal_intel_event.g.dart';

/// Intelligence event type in an area
///
/// Properties:
/// * [type]
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [placeId]
/// * [bbox] - minLon,minLat,maxLon,maxLat
@BuiltValue()
abstract class IndicatorSignalIntelEvent
    implements
        Built<IndicatorSignalIntelEvent, IndicatorSignalIntelEventBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  /// minLon,minLat,maxLon,maxLat
  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  IndicatorSignalIntelEvent._();

  factory IndicatorSignalIntelEvent([
    void updates(IndicatorSignalIntelEventBuilder b),
  ]) = _$IndicatorSignalIntelEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndicatorSignalIntelEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndicatorSignalIntelEvent> get serializer =>
      _$IndicatorSignalIntelEventSerializer();
}

class _$IndicatorSignalIntelEventSerializer
    implements PrimitiveSerializer<IndicatorSignalIntelEvent> {
  @override
  final Iterable<Type> types = const [
    IndicatorSignalIntelEvent,
    _$IndicatorSignalIntelEvent,
  ];

  @override
  final String wireName = r'IndicatorSignalIntelEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndicatorSignalIntelEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndicatorSignalIntelEvent object, {
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
    required IndicatorSignalIntelEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndicatorSignalIntelEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndicatorSignalIntelEventBuilder();
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
