//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_cue_trigger.g.dart';

/// What raised the cue
///
/// Properties:
/// * [type]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class SocialCueTrigger
    implements Built<SocialCueTrigger, SocialCueTriggerBuilder> {
  @BuiltValueField(wireName: r'type')
  SocialCueTriggerTypeEnum get type;
  // enum typeEnum {  situation-activated,  situation-escalated,  finding,  anomaly,  alert,  canonical-event,  manual,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  SocialCueTrigger._();

  factory SocialCueTrigger([void updates(SocialCueTriggerBuilder b)]) =
      _$SocialCueTrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialCueTriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialCueTrigger> get serializer =>
      _$SocialCueTriggerSerializer();
}

class _$SocialCueTriggerSerializer
    implements PrimitiveSerializer<SocialCueTrigger> {
  @override
  final Iterable<Type> types = const [SocialCueTrigger, _$SocialCueTrigger];

  @override
  final String wireName = r'SocialCueTrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialCueTrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(SocialCueTriggerTypeEnum),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialCueTrigger object, {
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
    required SocialCueTriggerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SocialCueTriggerTypeEnum),
                  )
                  as SocialCueTriggerTypeEnum;
          result.type = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialCueTrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialCueTriggerBuilder();
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

class SocialCueTriggerTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'situation-activated')
  static const SocialCueTriggerTypeEnum situationActivated =
      _$socialCueTriggerTypeEnum_situationActivated;
  @BuiltValueEnumConst(wireName: r'situation-escalated')
  static const SocialCueTriggerTypeEnum situationEscalated =
      _$socialCueTriggerTypeEnum_situationEscalated;
  @BuiltValueEnumConst(wireName: r'finding')
  static const SocialCueTriggerTypeEnum finding =
      _$socialCueTriggerTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const SocialCueTriggerTypeEnum anomaly =
      _$socialCueTriggerTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'alert')
  static const SocialCueTriggerTypeEnum alert =
      _$socialCueTriggerTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'canonical-event')
  static const SocialCueTriggerTypeEnum canonicalEvent =
      _$socialCueTriggerTypeEnum_canonicalEvent;
  @BuiltValueEnumConst(wireName: r'manual')
  static const SocialCueTriggerTypeEnum manual =
      _$socialCueTriggerTypeEnum_manual;

  static Serializer<SocialCueTriggerTypeEnum> get serializer =>
      _$socialCueTriggerTypeEnumSerializer;

  const SocialCueTriggerTypeEnum._(String name) : super(name);

  static BuiltSet<SocialCueTriggerTypeEnum> get values =>
      _$socialCueTriggerTypeEnumValues;
  static SocialCueTriggerTypeEnum valueOf(String name) =>
      _$socialCueTriggerTypeEnumValueOf(name);
}
