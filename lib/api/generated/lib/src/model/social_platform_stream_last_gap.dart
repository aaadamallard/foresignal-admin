//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_stream_last_gap.g.dart';

/// Last gap (reconnect with cursor loss)
///
/// Properties:
/// * [from]
/// * [to]
/// * [replayed]
@BuiltValue()
abstract class SocialPlatformStreamLastGap
    implements
        Built<SocialPlatformStreamLastGap, SocialPlatformStreamLastGapBuilder> {
  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'replayed')
  bool get replayed;

  SocialPlatformStreamLastGap._();

  factory SocialPlatformStreamLastGap(
          [void updates(SocialPlatformStreamLastGapBuilder b)]) =
      _$SocialPlatformStreamLastGap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformStreamLastGapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformStreamLastGap> get serializer =>
      _$SocialPlatformStreamLastGapSerializer();
}

class _$SocialPlatformStreamLastGapSerializer
    implements PrimitiveSerializer<SocialPlatformStreamLastGap> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformStreamLastGap,
    _$SocialPlatformStreamLastGap
  ];

  @override
  final String wireName = r'SocialPlatformStreamLastGap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformStreamLastGap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'replayed';
    yield serializers.serialize(
      object.replayed,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformStreamLastGap object, {
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
    required SocialPlatformStreamLastGapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        case r'replayed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.replayed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformStreamLastGap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformStreamLastGapBuilder();
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
