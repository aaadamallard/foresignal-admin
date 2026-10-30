//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_run_delivery_results_inner.g.dart';

/// BriefingRunDeliveryResultsInner
///
/// Properties:
/// * [kind]
/// * [channelId]
/// * [format]
/// * [status] - `queued` handed to the channel (its own delivery is in the notification's deliveries); `available` a pulled target (`website`, `podcast`) the run can be read at; `skipped` not attempted (`error` says why: a missing, disabled or foreign channel, no audio); `failed` the send failed (`error`). One target's failure never stops the others
/// * [notificationId] - The notification published to the channel
/// * [url] - Where a pulled target is available
/// * [error]
@BuiltValue()
abstract class BriefingRunDeliveryResultsInner
    implements
        Built<
          BriefingRunDeliveryResultsInner,
          BriefingRunDeliveryResultsInnerBuilder
        > {
  @BuiltValueField(wireName: r'kind')
  BriefingRunDeliveryResultsInnerKindEnum get kind;
  // enum kindEnum {  channel,  website,  podcast,  };

  @BuiltValueField(wireName: r'channelId')
  String? get channelId;

  @BuiltValueField(wireName: r'format')
  BriefingRunDeliveryResultsInnerFormatEnum get format;
  // enum formatEnum {  email,  push,  alert,  html,  audio,  };

  /// `queued` handed to the channel (its own delivery is in the notification's deliveries); `available` a pulled target (`website`, `podcast`) the run can be read at; `skipped` not attempted (`error` says why: a missing, disabled or foreign channel, no audio); `failed` the send failed (`error`). One target's failure never stops the others
  @BuiltValueField(wireName: r'status')
  BriefingRunDeliveryResultsInnerStatusEnum get status;
  // enum statusEnum {  queued,  available,  skipped,  failed,  };

  /// The notification published to the channel
  @BuiltValueField(wireName: r'notificationId')
  int? get notificationId;

  /// Where a pulled target is available
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'error')
  String? get error;

  BriefingRunDeliveryResultsInner._();

  factory BriefingRunDeliveryResultsInner([
    void updates(BriefingRunDeliveryResultsInnerBuilder b),
  ]) = _$BriefingRunDeliveryResultsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingRunDeliveryResultsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingRunDeliveryResultsInner> get serializer =>
      _$BriefingRunDeliveryResultsInnerSerializer();
}

class _$BriefingRunDeliveryResultsInnerSerializer
    implements PrimitiveSerializer<BriefingRunDeliveryResultsInner> {
  @override
  final Iterable<Type> types = const [
    BriefingRunDeliveryResultsInner,
    _$BriefingRunDeliveryResultsInner,
  ];

  @override
  final String wireName = r'BriefingRunDeliveryResultsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingRunDeliveryResultsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(BriefingRunDeliveryResultsInnerKindEnum),
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
      specifiedType: const FullType(BriefingRunDeliveryResultsInnerFormatEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BriefingRunDeliveryResultsInnerStatusEnum),
    );
    if (object.notificationId != null) {
      yield r'notificationId';
      yield serializers.serialize(
        object.notificationId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingRunDeliveryResultsInner object, {
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
    required BriefingRunDeliveryResultsInnerBuilder result,
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
                    specifiedType: const FullType(
                      BriefingRunDeliveryResultsInnerKindEnum,
                    ),
                  )
                  as BriefingRunDeliveryResultsInnerKindEnum;
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
                    specifiedType: const FullType(
                      BriefingRunDeliveryResultsInnerFormatEnum,
                    ),
                  )
                  as BriefingRunDeliveryResultsInnerFormatEnum;
          result.format = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      BriefingRunDeliveryResultsInnerStatusEnum,
                    ),
                  )
                  as BriefingRunDeliveryResultsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'notificationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.notificationId = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingRunDeliveryResultsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingRunDeliveryResultsInnerBuilder();
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

class BriefingRunDeliveryResultsInnerKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'channel')
  static const BriefingRunDeliveryResultsInnerKindEnum channel =
      _$briefingRunDeliveryResultsInnerKindEnum_channel;
  @BuiltValueEnumConst(wireName: r'website')
  static const BriefingRunDeliveryResultsInnerKindEnum website =
      _$briefingRunDeliveryResultsInnerKindEnum_website;
  @BuiltValueEnumConst(wireName: r'podcast')
  static const BriefingRunDeliveryResultsInnerKindEnum podcast =
      _$briefingRunDeliveryResultsInnerKindEnum_podcast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunDeliveryResultsInnerKindEnum unknownDefaultOpenApi =
      _$briefingRunDeliveryResultsInnerKindEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunDeliveryResultsInnerKindEnum> get serializer =>
      _$briefingRunDeliveryResultsInnerKindEnumSerializer;

  const BriefingRunDeliveryResultsInnerKindEnum._(String name) : super(name);

  static BuiltSet<BriefingRunDeliveryResultsInnerKindEnum> get values =>
      _$briefingRunDeliveryResultsInnerKindEnumValues;
  static BriefingRunDeliveryResultsInnerKindEnum valueOf(String name) =>
      _$briefingRunDeliveryResultsInnerKindEnumValueOf(name);
}

class BriefingRunDeliveryResultsInnerFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'email')
  static const BriefingRunDeliveryResultsInnerFormatEnum email =
      _$briefingRunDeliveryResultsInnerFormatEnum_email;
  @BuiltValueEnumConst(wireName: r'push')
  static const BriefingRunDeliveryResultsInnerFormatEnum push =
      _$briefingRunDeliveryResultsInnerFormatEnum_push;
  @BuiltValueEnumConst(wireName: r'alert')
  static const BriefingRunDeliveryResultsInnerFormatEnum alert =
      _$briefingRunDeliveryResultsInnerFormatEnum_alert;
  @BuiltValueEnumConst(wireName: r'html')
  static const BriefingRunDeliveryResultsInnerFormatEnum html =
      _$briefingRunDeliveryResultsInnerFormatEnum_html;
  @BuiltValueEnumConst(wireName: r'audio')
  static const BriefingRunDeliveryResultsInnerFormatEnum audio =
      _$briefingRunDeliveryResultsInnerFormatEnum_audio;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunDeliveryResultsInnerFormatEnum unknownDefaultOpenApi =
      _$briefingRunDeliveryResultsInnerFormatEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunDeliveryResultsInnerFormatEnum> get serializer =>
      _$briefingRunDeliveryResultsInnerFormatEnumSerializer;

  const BriefingRunDeliveryResultsInnerFormatEnum._(String name) : super(name);

  static BuiltSet<BriefingRunDeliveryResultsInnerFormatEnum> get values =>
      _$briefingRunDeliveryResultsInnerFormatEnumValues;
  static BriefingRunDeliveryResultsInnerFormatEnum valueOf(String name) =>
      _$briefingRunDeliveryResultsInnerFormatEnumValueOf(name);
}

/// `queued` handed to the channel (its own delivery is in the notification's deliveries); `available` a pulled target (`website`, `podcast`) the run can be read at; `skipped` not attempted (`error` says why: a missing, disabled or foreign channel, no audio); `failed` the send failed (`error`). One target's failure never stops the others
class BriefingRunDeliveryResultsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const BriefingRunDeliveryResultsInnerStatusEnum queued =
      _$briefingRunDeliveryResultsInnerStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'available')
  static const BriefingRunDeliveryResultsInnerStatusEnum available =
      _$briefingRunDeliveryResultsInnerStatusEnum_available;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const BriefingRunDeliveryResultsInnerStatusEnum skipped =
      _$briefingRunDeliveryResultsInnerStatusEnum_skipped;
  @BuiltValueEnumConst(wireName: r'failed')
  static const BriefingRunDeliveryResultsInnerStatusEnum failed =
      _$briefingRunDeliveryResultsInnerStatusEnum_failed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BriefingRunDeliveryResultsInnerStatusEnum unknownDefaultOpenApi =
      _$briefingRunDeliveryResultsInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<BriefingRunDeliveryResultsInnerStatusEnum> get serializer =>
      _$briefingRunDeliveryResultsInnerStatusEnumSerializer;

  const BriefingRunDeliveryResultsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<BriefingRunDeliveryResultsInnerStatusEnum> get values =>
      _$briefingRunDeliveryResultsInnerStatusEnumValues;
  static BriefingRunDeliveryResultsInnerStatusEnum valueOf(String name) =>
      _$briefingRunDeliveryResultsInnerStatusEnumValueOf(name);
}
