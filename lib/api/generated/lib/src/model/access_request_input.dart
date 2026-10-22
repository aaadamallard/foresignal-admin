//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'access_request_input.g.dart';

/// Request access to the other chronicle of a link
///
/// Properties:
/// * [message]
/// * [offerShare] - Chronicle id the requester offers to share
@BuiltValue()
abstract class AccessRequestInput
    implements Built<AccessRequestInput, AccessRequestInputBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Chronicle id the requester offers to share
  @BuiltValueField(wireName: r'offerShare')
  String? get offerShare;

  AccessRequestInput._();

  factory AccessRequestInput([void updates(AccessRequestInputBuilder b)]) =
      _$AccessRequestInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccessRequestInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccessRequestInput> get serializer =>
      _$AccessRequestInputSerializer();
}

class _$AccessRequestInputSerializer
    implements PrimitiveSerializer<AccessRequestInput> {
  @override
  final Iterable<Type> types = const [AccessRequestInput, _$AccessRequestInput];

  @override
  final String wireName = r'AccessRequestInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccessRequestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.offerShare != null) {
      yield r'offerShare';
      yield serializers.serialize(
        object.offerShare,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccessRequestInput object, {
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
    required AccessRequestInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'offerShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.offerShare = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccessRequestInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessRequestInputBuilder();
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
