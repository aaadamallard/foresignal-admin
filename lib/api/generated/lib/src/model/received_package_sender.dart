//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'received_package_sender.g.dart';

/// Sender
///
/// Properties:
/// * [instanceId]
/// * [instanceName]
/// * [keyId]
/// * [peerId]
@BuiltValue()
abstract class ReceivedPackageSender
    implements Built<ReceivedPackageSender, ReceivedPackageSenderBuilder> {
  @BuiltValueField(wireName: r'instanceId')
  String get instanceId;

  @BuiltValueField(wireName: r'instanceName')
  String? get instanceName;

  @BuiltValueField(wireName: r'keyId')
  String get keyId;

  @BuiltValueField(wireName: r'peerId')
  String? get peerId;

  ReceivedPackageSender._();

  factory ReceivedPackageSender([
    void updates(ReceivedPackageSenderBuilder b),
  ]) = _$ReceivedPackageSender;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceivedPackageSenderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceivedPackageSender> get serializer =>
      _$ReceivedPackageSenderSerializer();
}

class _$ReceivedPackageSenderSerializer
    implements PrimitiveSerializer<ReceivedPackageSender> {
  @override
  final Iterable<Type> types = const [
    ReceivedPackageSender,
    _$ReceivedPackageSender,
  ];

  @override
  final String wireName = r'ReceivedPackageSender';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceivedPackageSender object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'instanceId';
    yield serializers.serialize(
      object.instanceId,
      specifiedType: const FullType(String),
    );
    if (object.instanceName != null) {
      yield r'instanceName';
      yield serializers.serialize(
        object.instanceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'keyId';
    yield serializers.serialize(
      object.keyId,
      specifiedType: const FullType(String),
    );
    if (object.peerId != null) {
      yield r'peerId';
      yield serializers.serialize(
        object.peerId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReceivedPackageSender object, {
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
    required ReceivedPackageSenderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instanceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.instanceId = valueDes;
          break;
        case r'instanceName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instanceName = valueDes;
          break;
        case r'keyId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.keyId = valueDes;
          break;
        case r'peerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.peerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReceivedPackageSender deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceivedPackageSenderBuilder();
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
