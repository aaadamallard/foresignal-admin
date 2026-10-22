//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_send_recipients_inner.g.dart';

/// Per-recipient outcome
///
/// Properties:
/// * [grantee] - `principal:{id}` or `group:{id}`
/// * [status]
/// * [channelIds]
@BuiltValue()
abstract class ReportSendRecipientsInner
    implements
        Built<ReportSendRecipientsInner, ReportSendRecipientsInnerBuilder> {
  /// `principal:{id}` or `group:{id}`
  @BuiltValueField(wireName: r'grantee')
  String get grantee;

  @BuiltValueField(wireName: r'status')
  ReportSendRecipientsInnerStatusEnum get status;
  // enum statusEnum {  notified,  granted,  delivered,  failed,  };

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  ReportSendRecipientsInner._();

  factory ReportSendRecipientsInner(
          [void updates(ReportSendRecipientsInnerBuilder b)]) =
      _$ReportSendRecipientsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportSendRecipientsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportSendRecipientsInner> get serializer =>
      _$ReportSendRecipientsInnerSerializer();
}

class _$ReportSendRecipientsInnerSerializer
    implements PrimitiveSerializer<ReportSendRecipientsInner> {
  @override
  final Iterable<Type> types = const [
    ReportSendRecipientsInner,
    _$ReportSendRecipientsInner
  ];

  @override
  final String wireName = r'ReportSendRecipientsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportSendRecipientsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'grantee';
    yield serializers.serialize(
      object.grantee,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReportSendRecipientsInnerStatusEnum),
    );
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportSendRecipientsInner object, {
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
    required ReportSendRecipientsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'grantee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grantee = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReportSendRecipientsInnerStatusEnum),
          ) as ReportSendRecipientsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'channelIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportSendRecipientsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportSendRecipientsInnerBuilder();
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

class ReportSendRecipientsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'notified')
  static const ReportSendRecipientsInnerStatusEnum notified =
      _$reportSendRecipientsInnerStatusEnum_notified;
  @BuiltValueEnumConst(wireName: r'granted')
  static const ReportSendRecipientsInnerStatusEnum granted =
      _$reportSendRecipientsInnerStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'delivered')
  static const ReportSendRecipientsInnerStatusEnum delivered =
      _$reportSendRecipientsInnerStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'failed')
  static const ReportSendRecipientsInnerStatusEnum failed =
      _$reportSendRecipientsInnerStatusEnum_failed;

  static Serializer<ReportSendRecipientsInnerStatusEnum> get serializer =>
      _$reportSendRecipientsInnerStatusEnumSerializer;

  const ReportSendRecipientsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<ReportSendRecipientsInnerStatusEnum> get values =>
      _$reportSendRecipientsInnerStatusEnumValues;
  static ReportSendRecipientsInnerStatusEnum valueOf(String name) =>
      _$reportSendRecipientsInnerStatusEnumValueOf(name);
}
