//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/native_push_payload_apns_aps_alert.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'native_push_payload_apns_aps.g.dart';

/// APNs aps dictionary
///
/// Properties:
/// * [alert]
/// * [sound]
/// * [mutableContent]
/// * [interruptionLevel]
/// * [threadId]
/// * [category] - FORESIGNAL_<EVENT> (032); FORESIGNAL_ALERT_ACTIONABLE for firing alerts with actions (033)
/// * [badge] - Unread count (033)
@BuiltValue()
abstract class NativePushPayloadApnsAps
    implements
        Built<NativePushPayloadApnsAps, NativePushPayloadApnsApsBuilder> {
  @BuiltValueField(wireName: r'alert')
  NativePushPayloadApnsApsAlert get alert;

  @BuiltValueField(wireName: r'sound')
  NativePushPayloadApnsApsSoundEnum? get sound;
  // enum soundEnum {  default,  };

  @BuiltValueField(wireName: r'mutable-content')
  NativePushPayloadApnsApsMutableContentEnum? get mutableContent;
  // enum mutableContentEnum {  1,  };

  @BuiltValueField(wireName: r'interruption-level')
  NativePushPayloadApnsApsInterruptionLevelEnum? get interruptionLevel;
  // enum interruptionLevelEnum {  passive,  active,  time-sensitive,  };

  @BuiltValueField(wireName: r'thread-id')
  String? get threadId;

  /// FORESIGNAL_<EVENT> (032); FORESIGNAL_ALERT_ACTIONABLE for firing alerts with actions (033)
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Unread count (033)
  @BuiltValueField(wireName: r'badge')
  int? get badge;

  NativePushPayloadApnsAps._();

  factory NativePushPayloadApnsAps(
          [void updates(NativePushPayloadApnsApsBuilder b)]) =
      _$NativePushPayloadApnsAps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NativePushPayloadApnsApsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NativePushPayloadApnsAps> get serializer =>
      _$NativePushPayloadApnsApsSerializer();
}

class _$NativePushPayloadApnsApsSerializer
    implements PrimitiveSerializer<NativePushPayloadApnsAps> {
  @override
  final Iterable<Type> types = const [
    NativePushPayloadApnsAps,
    _$NativePushPayloadApnsAps
  ];

  @override
  final String wireName = r'NativePushPayloadApnsAps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NativePushPayloadApnsAps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alert';
    yield serializers.serialize(
      object.alert,
      specifiedType: const FullType(NativePushPayloadApnsApsAlert),
    );
    if (object.sound != null) {
      yield r'sound';
      yield serializers.serialize(
        object.sound,
        specifiedType: const FullType(NativePushPayloadApnsApsSoundEnum),
      );
    }
    if (object.mutableContent != null) {
      yield r'mutable-content';
      yield serializers.serialize(
        object.mutableContent,
        specifiedType:
            const FullType(NativePushPayloadApnsApsMutableContentEnum),
      );
    }
    if (object.interruptionLevel != null) {
      yield r'interruption-level';
      yield serializers.serialize(
        object.interruptionLevel,
        specifiedType:
            const FullType(NativePushPayloadApnsApsInterruptionLevelEnum),
      );
    }
    if (object.threadId != null) {
      yield r'thread-id';
      yield serializers.serialize(
        object.threadId,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.badge != null) {
      yield r'badge';
      yield serializers.serialize(
        object.badge,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NativePushPayloadApnsAps object, {
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
    required NativePushPayloadApnsApsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alert':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NativePushPayloadApnsApsAlert),
          ) as NativePushPayloadApnsApsAlert;
          result.alert.replace(valueDes);
          break;
        case r'sound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(NativePushPayloadApnsApsSoundEnum),
          ) as NativePushPayloadApnsApsSoundEnum?;
          if (valueDes == null) continue;
          result.sound = valueDes;
          break;
        case r'mutable-content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                NativePushPayloadApnsApsMutableContentEnum),
          ) as NativePushPayloadApnsApsMutableContentEnum?;
          if (valueDes == null) continue;
          result.mutableContent = valueDes;
          break;
        case r'interruption-level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                NativePushPayloadApnsApsInterruptionLevelEnum),
          ) as NativePushPayloadApnsApsInterruptionLevelEnum?;
          if (valueDes == null) continue;
          result.interruptionLevel = valueDes;
          break;
        case r'thread-id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.threadId = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'badge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.badge = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NativePushPayloadApnsAps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NativePushPayloadApnsApsBuilder();
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

class NativePushPayloadApnsApsSoundEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'default')
  static const NativePushPayloadApnsApsSoundEnum default_ =
      _$nativePushPayloadApnsApsSoundEnum_default_;

  static Serializer<NativePushPayloadApnsApsSoundEnum> get serializer =>
      _$nativePushPayloadApnsApsSoundEnumSerializer;

  const NativePushPayloadApnsApsSoundEnum._(String name) : super(name);

  static BuiltSet<NativePushPayloadApnsApsSoundEnum> get values =>
      _$nativePushPayloadApnsApsSoundEnumValues;
  static NativePushPayloadApnsApsSoundEnum valueOf(String name) =>
      _$nativePushPayloadApnsApsSoundEnumValueOf(name);
}

class NativePushPayloadApnsApsMutableContentEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 1)
  static const NativePushPayloadApnsApsMutableContentEnum number1 =
      _$nativePushPayloadApnsApsMutableContentEnum_number1;

  static Serializer<NativePushPayloadApnsApsMutableContentEnum>
      get serializer => _$nativePushPayloadApnsApsMutableContentEnumSerializer;

  const NativePushPayloadApnsApsMutableContentEnum._(String name) : super(name);

  static BuiltSet<NativePushPayloadApnsApsMutableContentEnum> get values =>
      _$nativePushPayloadApnsApsMutableContentEnumValues;
  static NativePushPayloadApnsApsMutableContentEnum valueOf(String name) =>
      _$nativePushPayloadApnsApsMutableContentEnumValueOf(name);
}

class NativePushPayloadApnsApsInterruptionLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'passive')
  static const NativePushPayloadApnsApsInterruptionLevelEnum passive =
      _$nativePushPayloadApnsApsInterruptionLevelEnum_passive;
  @BuiltValueEnumConst(wireName: r'active')
  static const NativePushPayloadApnsApsInterruptionLevelEnum active =
      _$nativePushPayloadApnsApsInterruptionLevelEnum_active;
  @BuiltValueEnumConst(wireName: r'time-sensitive')
  static const NativePushPayloadApnsApsInterruptionLevelEnum timeSensitive =
      _$nativePushPayloadApnsApsInterruptionLevelEnum_timeSensitive;

  static Serializer<NativePushPayloadApnsApsInterruptionLevelEnum>
      get serializer =>
          _$nativePushPayloadApnsApsInterruptionLevelEnumSerializer;

  const NativePushPayloadApnsApsInterruptionLevelEnum._(String name)
      : super(name);

  static BuiltSet<NativePushPayloadApnsApsInterruptionLevelEnum> get values =>
      _$nativePushPayloadApnsApsInterruptionLevelEnumValues;
  static NativePushPayloadApnsApsInterruptionLevelEnum valueOf(String name) =>
      _$nativePushPayloadApnsApsInterruptionLevelEnumValueOf(name);
}
