//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_provider_input.g.dart';

/// Update a rating provider (admin); enabling requires licence acknowledgement
///
/// Properties:
/// * [enabled]
/// * [licenceAcknowledged]
/// * [permissionRecorded]
/// * [apiKey] - MBFC API key (write-only)
@BuiltValue()
abstract class MediaProviderInput
    implements Built<MediaProviderInput, MediaProviderInputBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'licenceAcknowledged')
  bool? get licenceAcknowledged;

  @BuiltValueField(wireName: r'permissionRecorded')
  bool? get permissionRecorded;

  /// MBFC API key (write-only)
  @BuiltValueField(wireName: r'apiKey')
  String? get apiKey;

  MediaProviderInput._();

  factory MediaProviderInput([void updates(MediaProviderInputBuilder b)]) =
      _$MediaProviderInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaProviderInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaProviderInput> get serializer =>
      _$MediaProviderInputSerializer();
}

class _$MediaProviderInputSerializer
    implements PrimitiveSerializer<MediaProviderInput> {
  @override
  final Iterable<Type> types = const [MediaProviderInput, _$MediaProviderInput];

  @override
  final String wireName = r'MediaProviderInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaProviderInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.licenceAcknowledged != null) {
      yield r'licenceAcknowledged';
      yield serializers.serialize(
        object.licenceAcknowledged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.permissionRecorded != null) {
      yield r'permissionRecorded';
      yield serializers.serialize(
        object.permissionRecorded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.apiKey != null) {
      yield r'apiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaProviderInput object, {
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
    required MediaProviderInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'licenceAcknowledged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.licenceAcknowledged = valueDes;
          break;
        case r'permissionRecorded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.permissionRecorded = valueDes;
          break;
        case r'apiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.apiKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaProviderInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaProviderInputBuilder();
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
