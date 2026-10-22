//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_run_result_consumer_clamp.g.dart';

/// RetentionRunResultConsumerClamp
///
/// Properties:
/// * [active]
/// * [consumer]
/// * [cursorSeq]
@BuiltValue()
abstract class RetentionRunResultConsumerClamp
    implements
        Built<RetentionRunResultConsumerClamp,
            RetentionRunResultConsumerClampBuilder> {
  @BuiltValueField(wireName: r'active')
  bool? get active;

  @BuiltValueField(wireName: r'consumer')
  String? get consumer;

  @BuiltValueField(wireName: r'cursorSeq')
  int? get cursorSeq;

  RetentionRunResultConsumerClamp._();

  factory RetentionRunResultConsumerClamp(
          [void updates(RetentionRunResultConsumerClampBuilder b)]) =
      _$RetentionRunResultConsumerClamp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionRunResultConsumerClampBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionRunResultConsumerClamp> get serializer =>
      _$RetentionRunResultConsumerClampSerializer();
}

class _$RetentionRunResultConsumerClampSerializer
    implements PrimitiveSerializer<RetentionRunResultConsumerClamp> {
  @override
  final Iterable<Type> types = const [
    RetentionRunResultConsumerClamp,
    _$RetentionRunResultConsumerClamp
  ];

  @override
  final String wireName = r'RetentionRunResultConsumerClamp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionRunResultConsumerClamp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.consumer != null) {
      yield r'consumer';
      yield serializers.serialize(
        object.consumer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.cursorSeq != null) {
      yield r'cursorSeq';
      yield serializers.serialize(
        object.cursorSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionRunResultConsumerClamp object, {
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
    required RetentionRunResultConsumerClampBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'consumer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.consumer = valueDes;
          break;
        case r'cursorSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.cursorSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionRunResultConsumerClamp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionRunResultConsumerClampBuilder();
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
