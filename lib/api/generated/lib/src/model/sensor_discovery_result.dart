//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sensor.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sensor_discovery_result.g.dart';

/// What can observe an area in a window
///
/// Properties:
/// * [bbox]
/// * [placeId]
/// * [from]
/// * [to]
/// * [items]
/// * [truncated]
/// * [note]
@BuiltValue()
abstract class SensorDiscoveryResult
    implements Built<SensorDiscoveryResult, SensorDiscoveryResultBuilder> {
  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'items')
  BuiltList<Sensor> get items;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'note')
  String? get note;

  SensorDiscoveryResult._();

  factory SensorDiscoveryResult([
    void updates(SensorDiscoveryResultBuilder b),
  ]) = _$SensorDiscoveryResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SensorDiscoveryResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SensorDiscoveryResult> get serializer =>
      _$SensorDiscoveryResultSerializer();
}

class _$SensorDiscoveryResultSerializer
    implements PrimitiveSerializer<SensorDiscoveryResult> {
  @override
  final Iterable<Type> types = const [
    SensorDiscoveryResult,
    _$SensorDiscoveryResult,
  ];

  @override
  final String wireName = r'SensorDiscoveryResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SensorDiscoveryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Sensor)]),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SensorDiscoveryResult object, {
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
    required SensorDiscoveryResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
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
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Sensor),
                    ]),
                  )
                  as BuiltList<Sensor>;
          result.items.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SensorDiscoveryResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SensorDiscoveryResultBuilder();
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
