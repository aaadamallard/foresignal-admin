//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/overland_batch_locations_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'overland_batch.g.dart';

/// Overland batch accepted by the `overland` format (039); up to 1,000 points
///
/// Properties:
/// * [locations]
/// * [trip] - Ignored
/// * [current] - Ignored
@BuiltValue()
abstract class OverlandBatch
    implements Built<OverlandBatch, OverlandBatchBuilder> {
  @BuiltValueField(wireName: r'locations')
  BuiltList<OverlandBatchLocationsInner> get locations;

  /// Ignored
  @BuiltValueField(wireName: r'trip')
  JsonObject? get trip;

  /// Ignored
  @BuiltValueField(wireName: r'current')
  JsonObject? get current;

  OverlandBatch._();

  factory OverlandBatch([void updates(OverlandBatchBuilder b)]) =
      _$OverlandBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OverlandBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OverlandBatch> get serializer =>
      _$OverlandBatchSerializer();
}

class _$OverlandBatchSerializer implements PrimitiveSerializer<OverlandBatch> {
  @override
  final Iterable<Type> types = const [OverlandBatch, _$OverlandBatch];

  @override
  final String wireName = r'OverlandBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OverlandBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'locations';
    yield serializers.serialize(
      object.locations,
      specifiedType: const FullType(BuiltList, [
        FullType(OverlandBatchLocationsInner),
      ]),
    );
    if (object.trip != null) {
      yield r'trip';
      yield serializers.serialize(
        object.trip,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OverlandBatch object, {
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
    required OverlandBatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'locations':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(OverlandBatchLocationsInner),
                    ]),
                  )
                  as BuiltList<OverlandBatchLocationsInner>;
          result.locations.replace(valueDes);
          break;
        case r'trip':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.trip = valueDes;
          break;
        case r'current':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.current = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OverlandBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OverlandBatchBuilder();
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
