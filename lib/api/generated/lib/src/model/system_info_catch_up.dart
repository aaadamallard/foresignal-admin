//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_catch_up.g.dart';

/// SystemInfoCatchUp
///
/// Properties:
/// * [triggerLagSeq]
/// * [ingestQueueDepth]
/// * [catchingUp] - lag > 10,000 seq or ingest queue > 80% for > 1 min
@BuiltValue()
abstract class SystemInfoCatchUp
    implements Built<SystemInfoCatchUp, SystemInfoCatchUpBuilder> {
  @BuiltValueField(wireName: r'triggerLagSeq')
  int? get triggerLagSeq;

  @BuiltValueField(wireName: r'ingestQueueDepth')
  int? get ingestQueueDepth;

  /// lag > 10,000 seq or ingest queue > 80% for > 1 min
  @BuiltValueField(wireName: r'catchingUp')
  bool? get catchingUp;

  SystemInfoCatchUp._();

  factory SystemInfoCatchUp([void updates(SystemInfoCatchUpBuilder b)]) =
      _$SystemInfoCatchUp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoCatchUpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoCatchUp> get serializer =>
      _$SystemInfoCatchUpSerializer();
}

class _$SystemInfoCatchUpSerializer
    implements PrimitiveSerializer<SystemInfoCatchUp> {
  @override
  final Iterable<Type> types = const [SystemInfoCatchUp, _$SystemInfoCatchUp];

  @override
  final String wireName = r'SystemInfoCatchUp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoCatchUp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.triggerLagSeq != null) {
      yield r'triggerLagSeq';
      yield serializers.serialize(
        object.triggerLagSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.ingestQueueDepth != null) {
      yield r'ingestQueueDepth';
      yield serializers.serialize(
        object.ingestQueueDepth,
        specifiedType: const FullType(int),
      );
    }
    if (object.catchingUp != null) {
      yield r'catchingUp';
      yield serializers.serialize(
        object.catchingUp,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoCatchUp object, {
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
    required SystemInfoCatchUpBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerLagSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.triggerLagSeq = valueDes;
          break;
        case r'ingestQueueDepth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ingestQueueDepth = valueDes;
          break;
        case r'catchingUp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.catchingUp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoCatchUp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoCatchUpBuilder();
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
