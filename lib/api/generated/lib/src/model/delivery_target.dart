//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_target.g.dart';

/// Where an edition run goes and in what shape (NP-004). `channel` sends through a 018 notify channel; `website` is the hosted edition site (`getEditionSite`, NP-005); `podcast` is the briefing podcast feed (`getBriefingPodcast`, 141).
///
/// Properties:
/// * [kind]
/// * [channelId] - The notify channel (`listChannels`); required for `channel`, null otherwise
/// * [format] - The payload shape: `email` the HTML edition with the audio attached and a link to the site; `push` a headline, summary and link to the site, never the full body; `alert` the alert-notification shape; `html` the standalone page (`website`); `audio` the synthesized edition (`podcast`)
/// * [options] - Per-kind options, passed to the channel's renderer as they are
@BuiltValue()
abstract class DeliveryTarget
    implements Built<DeliveryTarget, DeliveryTargetBuilder> {
  @BuiltValueField(wireName: r'kind')
  DeliveryTargetKindEnum get kind;
  // enum kindEnum {  channel,  website,  podcast,  };

  /// The notify channel (`listChannels`); required for `channel`, null otherwise
  @BuiltValueField(wireName: r'channelId')
  String? get channelId;

  /// The payload shape: `email` the HTML edition with the audio attached and a link to the site; `push` a headline, summary and link to the site, never the full body; `alert` the alert-notification shape; `html` the standalone page (`website`); `audio` the synthesized edition (`podcast`)
  @BuiltValueField(wireName: r'format')
  DeliveryTargetFormatEnum get format;
  // enum formatEnum {  email,  push,  alert,  html,  audio,  };

  /// Per-kind options, passed to the channel's renderer as they are
  @BuiltValueField(wireName: r'options')
  BuiltMap<String, JsonObject?>? get options;

  DeliveryTarget._();

  factory DeliveryTarget([void updates(DeliveryTargetBuilder b)]) =
      _$DeliveryTarget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeliveryTargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryTarget> get serializer =>
      _$DeliveryTargetSerializer();
}

class _$DeliveryTargetSerializer
    implements PrimitiveSerializer<DeliveryTarget> {
  @override
  final Iterable<Type> types = const [DeliveryTarget, _$DeliveryTarget];

  @override
  final String wireName = r'DeliveryTarget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(DeliveryTargetKindEnum),
    );
    if (object.channelId != null) {
      yield r'channelId';
      yield serializers.serialize(
        object.channelId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'format';
    yield serializers.serialize(
      object.format,
      specifiedType: const FullType(DeliveryTargetFormatEnum),
    );
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryTarget object, {
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
    required DeliveryTargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeliveryTargetKindEnum),
                  )
                  as DeliveryTargetKindEnum;
          result.kind = valueDes;
          break;
        case r'channelId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.channelId = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DeliveryTargetFormatEnum),
                  )
                  as DeliveryTargetFormatEnum;
          result.format = valueDes;
          break;
        case r'options':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeliveryTarget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeliveryTargetBuilder();
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

class DeliveryTargetKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'channel')
  static const DeliveryTargetKindEnum channel =
      _$deliveryTargetKindEnum_channel;
  @BuiltValueEnumConst(wireName: r'website')
  static const DeliveryTargetKindEnum website =
      _$deliveryTargetKindEnum_website;
  @BuiltValueEnumConst(wireName: r'podcast')
  static const DeliveryTargetKindEnum podcast =
      _$deliveryTargetKindEnum_podcast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeliveryTargetKindEnum unknownDefaultOpenApi =
      _$deliveryTargetKindEnum_unknownDefaultOpenApi;

  static Serializer<DeliveryTargetKindEnum> get serializer =>
      _$deliveryTargetKindEnumSerializer;

  const DeliveryTargetKindEnum._(String name) : super(name);

  static BuiltSet<DeliveryTargetKindEnum> get values =>
      _$deliveryTargetKindEnumValues;
  static DeliveryTargetKindEnum valueOf(String name) =>
      _$deliveryTargetKindEnumValueOf(name);
}

/// The payload shape: `email` the HTML edition with the audio attached and a link to the site; `push` a headline, summary and link to the site, never the full body; `alert` the alert-notification shape; `html` the standalone page (`website`); `audio` the synthesized edition (`podcast`)
class DeliveryTargetFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'email')
  static const DeliveryTargetFormatEnum email =
      _$deliveryTargetFormatEnum_email;
  @BuiltValueEnumConst(wireName: r'push')
  static const DeliveryTargetFormatEnum push = _$deliveryTargetFormatEnum_push;
  @BuiltValueEnumConst(wireName: r'alert')
  static const DeliveryTargetFormatEnum alert =
      _$deliveryTargetFormatEnum_alert;
  @BuiltValueEnumConst(wireName: r'html')
  static const DeliveryTargetFormatEnum html = _$deliveryTargetFormatEnum_html;
  @BuiltValueEnumConst(wireName: r'audio')
  static const DeliveryTargetFormatEnum audio =
      _$deliveryTargetFormatEnum_audio;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeliveryTargetFormatEnum unknownDefaultOpenApi =
      _$deliveryTargetFormatEnum_unknownDefaultOpenApi;

  static Serializer<DeliveryTargetFormatEnum> get serializer =>
      _$deliveryTargetFormatEnumSerializer;

  const DeliveryTargetFormatEnum._(String name) : super(name);

  static BuiltSet<DeliveryTargetFormatEnum> get values =>
      _$deliveryTargetFormatEnumValues;
  static DeliveryTargetFormatEnum valueOf(String name) =>
      _$deliveryTargetFormatEnumValueOf(name);
}
