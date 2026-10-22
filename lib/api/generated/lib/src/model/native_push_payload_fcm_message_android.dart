//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_fcm_message_android.g.dart';

/// Android options
///
/// Properties:
/// * [priority]
/// * [ttl]
/// * [collapseKey]
@BuiltValue()
abstract class NativePushPayloadFcmMessageAndroid
    implements
        Built<
          NativePushPayloadFcmMessageAndroid,
          NativePushPayloadFcmMessageAndroidBuilder
        > {
  @BuiltValueField(wireName: r'priority')
  NativePushPayloadFcmMessageAndroidPriorityEnum? get priority;
  // enum priorityEnum {  HIGH,  NORMAL,  };

  @BuiltValueField(wireName: r'ttl')
  String? get ttl;

  @BuiltValueField(wireName: r'collapse_key')
  String? get collapseKey;

  NativePushPayloadFcmMessageAndroid._();

  factory NativePushPayloadFcmMessageAndroid([
    void updates(NativePushPayloadFcmMessageAndroidBuilder b),
  ]) = _$NativePushPayloadFcmMessageAndroid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadFcmMessageAndroidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadFcmMessageAndroid> get serializer =>
      _$NativePushPayloadFcmMessageAndroidSerializer();
}

class _$NativePushPayloadFcmMessageAndroidSerializer
    implements PrimitiveSerializer<NativePushPayloadFcmMessageAndroid> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadFcmMessageAndroid,
    _$NativePushPayloadFcmMessageAndroid,
  ];

  @override
  final String wireName = r'NativePushPayloadFcmMessageAndroid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadFcmMessageAndroid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(
          NativePushPayloadFcmMessageAndroidPriorityEnum,
        ),
      );
    }
    if (object.ttl != null) {
      yield r'ttl';
      yield serializers.serialize(
        object.ttl,
        specifiedType: const FullType(String),
      );
    }
    if (object.collapseKey != null) {
      yield r'collapse_key';
      yield serializers.serialize(
        object.collapseKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadFcmMessageAndroid object, {
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
    required NativePushPayloadFcmMessageAndroidBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'priority':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NativePushPayloadFcmMessageAndroidPriorityEnum,
                    ),
                  )
                  as NativePushPayloadFcmMessageAndroidPriorityEnum?;
          if (valueDes == null) continue;
          result.priority = valueDes;
          break;
        case r'ttl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ttl = valueDes;
          break;
        case r'collapse_key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.collapseKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadFcmMessageAndroid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadFcmMessageAndroidBuilder();
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

class NativePushPayloadFcmMessageAndroidPriorityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'HIGH')
  static const NativePushPayloadFcmMessageAndroidPriorityEnum HIGH =
      _$nativePushPayloadFcmMessageAndroidPriorityEnum_HIGH;
  @BuiltValueEnumConst(wireName: r'NORMAL')
  static const NativePushPayloadFcmMessageAndroidPriorityEnum NORMAL =
      _$nativePushPayloadFcmMessageAndroidPriorityEnum_NORMAL;

  static Serializer<NativePushPayloadFcmMessageAndroidPriorityEnum>
  get serializer => _$nativePushPayloadFcmMessageAndroidPriorityEnumSerializer;

  const NativePushPayloadFcmMessageAndroidPriorityEnum._(String name)
    : super(name);

  static BuiltSet<NativePushPayloadFcmMessageAndroidPriorityEnum> get values =>
      _$nativePushPayloadFcmMessageAndroidPriorityEnumValues;
  static NativePushPayloadFcmMessageAndroidPriorityEnum valueOf(String name) =>
      _$nativePushPayloadFcmMessageAndroidPriorityEnumValueOf(name);
}
