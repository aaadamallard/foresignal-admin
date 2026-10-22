//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'channel_type_capabilities.g.dart';

/// ChannelTypeCapabilities
///
/// Properties:
/// * [editInPlace]
/// * [attachments]
/// * [fanOut]
@BuiltValue()
abstract class ChannelTypeCapabilities
    implements Built<ChannelTypeCapabilities, ChannelTypeCapabilitiesBuilder> {
  @BuiltValueField(wireName: r'editInPlace')
  bool? get editInPlace;

  @BuiltValueField(wireName: r'attachments')
  bool? get attachments;

  @BuiltValueField(wireName: r'fanOut')
  bool? get fanOut;

  ChannelTypeCapabilities._();

  factory ChannelTypeCapabilities(
          [void updates(ChannelTypeCapabilitiesBuilder b)]) =
      _$ChannelTypeCapabilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChannelTypeCapabilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChannelTypeCapabilities> get serializer =>
      _$ChannelTypeCapabilitiesSerializer();
}

class _$ChannelTypeCapabilitiesSerializer
    implements PrimitiveSerializer<ChannelTypeCapabilities> {
  @override
  final Iterable<Type> types = const [
    ChannelTypeCapabilities,
    _$ChannelTypeCapabilities
  ];

  @override
  final String wireName = r'ChannelTypeCapabilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChannelTypeCapabilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.editInPlace != null) {
      yield r'editInPlace';
      yield serializers.serialize(
        object.editInPlace,
        specifiedType: const FullType(bool),
      );
    }
    if (object.attachments != null) {
      yield r'attachments';
      yield serializers.serialize(
        object.attachments,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fanOut != null) {
      yield r'fanOut';
      yield serializers.serialize(
        object.fanOut,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChannelTypeCapabilities object, {
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
    required ChannelTypeCapabilitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'editInPlace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.editInPlace = valueDes;
          break;
        case r'attachments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.attachments = valueDes;
          break;
        case r'fanOut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fanOut = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChannelTypeCapabilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChannelTypeCapabilitiesBuilder();
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
