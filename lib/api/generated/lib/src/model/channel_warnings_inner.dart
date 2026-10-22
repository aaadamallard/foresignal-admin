//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_warnings_inner.g.dart';

/// ChannelWarningsInner
///
/// Properties:
/// * [code]
/// * [message]
@BuiltValue()
abstract class ChannelWarningsInner
    implements Built<ChannelWarningsInner, ChannelWarningsInnerBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'message')
  String get message;

  ChannelWarningsInner._();

  factory ChannelWarningsInner([void updates(ChannelWarningsInnerBuilder b)]) =
      _$ChannelWarningsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelWarningsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelWarningsInner> get serializer =>
      _$ChannelWarningsInnerSerializer();
}

class _$ChannelWarningsInnerSerializer
    implements PrimitiveSerializer<ChannelWarningsInner> {
  @override
  final Iterable<Type> types = const [
    ChannelWarningsInner,
    _$ChannelWarningsInner
  ];

  @override
  final String wireName = r'ChannelWarningsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelWarningsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelWarningsInner object, {
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
    required ChannelWarningsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelWarningsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelWarningsInnerBuilder();
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
