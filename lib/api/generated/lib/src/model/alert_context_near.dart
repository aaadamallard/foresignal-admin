//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_context_near.g.dart';

/// Places a near rule matched (036): their ids and the versions its fence was materialized from
///
/// Properties:
/// * [placeIds]
/// * [placeVersions]
@BuiltValue()
abstract class AlertContextNear
    implements Built<AlertContextNear, AlertContextNearBuilder> {
  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  @BuiltValueField(wireName: r'placeVersions')
  BuiltList<int>? get placeVersions;

  AlertContextNear._();

  factory AlertContextNear([void updates(AlertContextNearBuilder b)]) =
      _$AlertContextNear;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertContextNearBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertContextNear> get serializer =>
      _$AlertContextNearSerializer();
}

class _$AlertContextNearSerializer
    implements PrimitiveSerializer<AlertContextNear> {
  @override
  final Iterable<Type> types = const [AlertContextNear, _$AlertContextNear];

  @override
  final String wireName = r'AlertContextNear';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertContextNear object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeVersions != null) {
      yield r'placeVersions';
      yield serializers.serialize(
        object.placeVersions,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertContextNear object, {
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
    required AlertContextNearBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'placeVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.placeVersions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertContextNear deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertContextNearBuilder();
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
