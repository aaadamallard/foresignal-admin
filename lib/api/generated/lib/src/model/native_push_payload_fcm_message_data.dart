//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_fcm_message_data.g.dart';

/// String-valued data
///
/// Properties:
/// * [v]
/// * [id]
/// * [a]
/// * [s]
/// * [ev]
/// * [l]
/// * [t]
/// * [c] - Category FORESIGNAL_<EVENT> (032; actionable categories arrive in 033)
@BuiltValue()
abstract class NativePushPayloadFcmMessageData
    implements
        Built<NativePushPayloadFcmMessageData,
            NativePushPayloadFcmMessageDataBuilder> {
  @BuiltValueField(wireName: r'v')
  String? get v;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'a')
  String? get a;

  @BuiltValueField(wireName: r's')
  String? get s;

  @BuiltValueField(wireName: r'ev')
  String? get ev;

  @BuiltValueField(wireName: r'l')
  String? get l;

  @BuiltValueField(wireName: r't')
  String? get t;

  /// Category FORESIGNAL_<EVENT> (032; actionable categories arrive in 033)
  @BuiltValueField(wireName: r'c')
  String? get c;

  NativePushPayloadFcmMessageData._();

  factory NativePushPayloadFcmMessageData(
          [void updates(NativePushPayloadFcmMessageDataBuilder b)]) =
      _$NativePushPayloadFcmMessageData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadFcmMessageDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadFcmMessageData> get serializer =>
      _$NativePushPayloadFcmMessageDataSerializer();
}

class _$NativePushPayloadFcmMessageDataSerializer
    implements PrimitiveSerializer<NativePushPayloadFcmMessageData> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadFcmMessageData,
    _$NativePushPayloadFcmMessageData
  ];

  @override
  final String wireName = r'NativePushPayloadFcmMessageData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadFcmMessageData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.v != null) {
      yield r'v';
      yield serializers.serialize(
        object.v,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.a != null) {
      yield r'a';
      yield serializers.serialize(
        object.a,
        specifiedType: const FullType(String),
      );
    }
    if (object.s != null) {
      yield r's';
      yield serializers.serialize(
        object.s,
        specifiedType: const FullType(String),
      );
    }
    if (object.ev != null) {
      yield r'ev';
      yield serializers.serialize(
        object.ev,
        specifiedType: const FullType(String),
      );
    }
    if (object.l != null) {
      yield r'l';
      yield serializers.serialize(
        object.l,
        specifiedType: const FullType(String),
      );
    }
    if (object.t != null) {
      yield r't';
      yield serializers.serialize(
        object.t,
        specifiedType: const FullType(String),
      );
    }
    if (object.c != null) {
      yield r'c';
      yield serializers.serialize(
        object.c,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadFcmMessageData object, {
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
    required NativePushPayloadFcmMessageDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.v = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.a = valueDes;
          break;
        case r's':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.s = valueDes;
          break;
        case r'ev':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ev = valueDes;
          break;
        case r'l':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.l = valueDes;
          break;
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.t = valueDes;
          break;
        case r'c':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.c = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadFcmMessageData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadFcmMessageDataBuilder();
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
