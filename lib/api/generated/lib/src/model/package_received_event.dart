//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_received_event.g.dart';

/// SSE `package.received` on the `me` topic
///
/// Properties:
/// * [receivedId] - ULID identifier
/// * [packageId] - ULID identifier
/// * [type]
/// * [senderInstanceId]
/// * [title]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [signatureStatus]
/// * [at]
@BuiltValue()
abstract class PackageReceivedEvent
    implements Built<PackageReceivedEvent, PackageReceivedEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'receivedId')
  String get receivedId;

  /// ULID identifier
  @BuiltValueField(wireName: r'packageId')
  String get packageId;

  @BuiltValueField(wireName: r'type')
  PackageReceivedEventTypeEnum get type;
  // enum typeEnum {  report,  investigation,  chronicle-extract,  evidence,  };

  @BuiltValueField(wireName: r'senderInstanceId')
  String get senderInstanceId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String get tlp;

  @BuiltValueField(wireName: r'signatureStatus')
  PackageReceivedEventSignatureStatusEnum? get signatureStatus;
  // enum signatureStatusEnum {  valid,  invalid,  unknown-key,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  PackageReceivedEvent._();

  factory PackageReceivedEvent([void updates(PackageReceivedEventBuilder b)]) =
      _$PackageReceivedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackageReceivedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackageReceivedEvent> get serializer =>
      _$PackageReceivedEventSerializer();
}

class _$PackageReceivedEventSerializer
    implements PrimitiveSerializer<PackageReceivedEvent> {
  @override
  final Iterable<Type> types = const [
    PackageReceivedEvent,
    _$PackageReceivedEvent
  ];

  @override
  final String wireName = r'PackageReceivedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackageReceivedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'receivedId';
    yield serializers.serialize(
      object.receivedId,
      specifiedType: const FullType(String),
    );
    yield r'packageId';
    yield serializers.serialize(
      object.packageId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PackageReceivedEventTypeEnum),
    );
    yield r'senderInstanceId';
    yield serializers.serialize(
      object.senderInstanceId,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    yield r'tlp';
    yield serializers.serialize(
      object.tlp,
      specifiedType: const FullType(String),
    );
    if (object.signatureStatus != null) {
      yield r'signatureStatus';
      yield serializers.serialize(
        object.signatureStatus,
        specifiedType: const FullType(PackageReceivedEventSignatureStatusEnum),
      );
    }
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PackageReceivedEvent object, {
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
    required PackageReceivedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'receivedId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.receivedId = valueDes;
          break;
        case r'packageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.packageId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PackageReceivedEventTypeEnum),
          ) as PackageReceivedEventTypeEnum;
          result.type = valueDes;
          break;
        case r'senderInstanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.senderInstanceId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'tlp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tlp = valueDes;
          break;
        case r'signatureStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                PackageReceivedEventSignatureStatusEnum),
          ) as PackageReceivedEventSignatureStatusEnum?;
          if (valueDes == null) continue;
          result.signatureStatus = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackageReceivedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackageReceivedEventBuilder();
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

class PackageReceivedEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'report')
  static const PackageReceivedEventTypeEnum report =
      _$packageReceivedEventTypeEnum_report;
  @BuiltValueEnumConst(wireName: r'investigation')
  static const PackageReceivedEventTypeEnum investigation =
      _$packageReceivedEventTypeEnum_investigation;
  @BuiltValueEnumConst(wireName: r'chronicle-extract')
  static const PackageReceivedEventTypeEnum chronicleExtract =
      _$packageReceivedEventTypeEnum_chronicleExtract;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const PackageReceivedEventTypeEnum evidence =
      _$packageReceivedEventTypeEnum_evidence;

  static Serializer<PackageReceivedEventTypeEnum> get serializer =>
      _$packageReceivedEventTypeEnumSerializer;

  const PackageReceivedEventTypeEnum._(String name) : super(name);

  static BuiltSet<PackageReceivedEventTypeEnum> get values =>
      _$packageReceivedEventTypeEnumValues;
  static PackageReceivedEventTypeEnum valueOf(String name) =>
      _$packageReceivedEventTypeEnumValueOf(name);
}

class PackageReceivedEventSignatureStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'valid')
  static const PackageReceivedEventSignatureStatusEnum valid =
      _$packageReceivedEventSignatureStatusEnum_valid;
  @BuiltValueEnumConst(wireName: r'invalid')
  static const PackageReceivedEventSignatureStatusEnum invalid =
      _$packageReceivedEventSignatureStatusEnum_invalid;
  @BuiltValueEnumConst(wireName: r'unknown-key')
  static const PackageReceivedEventSignatureStatusEnum unknownKey =
      _$packageReceivedEventSignatureStatusEnum_unknownKey;

  static Serializer<PackageReceivedEventSignatureStatusEnum> get serializer =>
      _$packageReceivedEventSignatureStatusEnumSerializer;

  const PackageReceivedEventSignatureStatusEnum._(String name) : super(name);

  static BuiltSet<PackageReceivedEventSignatureStatusEnum> get values =>
      _$packageReceivedEventSignatureStatusEnumValues;
  static PackageReceivedEventSignatureStatusEnum valueOf(String name) =>
      _$packageReceivedEventSignatureStatusEnumValueOf(name);
}
