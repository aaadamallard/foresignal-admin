//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/principal_summary.dart';
import 'package:foresignal_api/src/model/report_send_recipients_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_send.g.dart';

/// A recorded send: viewer grants, notifications and per-recipient TLP checks
///
/// Properties:
/// * [id] - ULID identifier
/// * [reportId] - ULID identifier
/// * [revision]
/// * [sentBy]
/// * [sentAt]
/// * [message]
/// * [recipients]
@BuiltValue()
abstract class ReportSend implements Built<ReportSend, ReportSendBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'reportId')
  String get reportId;

  @BuiltValueField(wireName: r'revision')
  int? get revision;

  @BuiltValueField(wireName: r'sentBy')
  PrincipalSummary get sentBy;

  @BuiltValueField(wireName: r'sentAt')
  DateTime get sentAt;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'recipients')
  BuiltList<ReportSendRecipientsInner> get recipients;

  ReportSend._();

  factory ReportSend([void updates(ReportSendBuilder b)]) = _$ReportSend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportSendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportSend> get serializer => _$ReportSendSerializer();
}

class _$ReportSendSerializer implements PrimitiveSerializer<ReportSend> {
  @override
  final Iterable<Type> types = const [ReportSend, _$ReportSend];

  @override
  final String wireName = r'ReportSend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportSend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'reportId';
    yield serializers.serialize(
      object.reportId,
      specifiedType: const FullType(String),
    );
    if (object.revision != null) {
      yield r'revision';
      yield serializers.serialize(
        object.revision,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'sentBy';
    yield serializers.serialize(
      object.sentBy,
      specifiedType: const FullType(PrincipalSummary),
    );
    yield r'sentAt';
    yield serializers.serialize(
      object.sentAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'recipients';
    yield serializers.serialize(
      object.recipients,
      specifiedType: const FullType(BuiltList, [
        FullType(ReportSendRecipientsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportSend object, {
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
    required ReportSendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'reportId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reportId = valueDes;
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.revision = valueDes;
          break;
        case r'sentBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PrincipalSummary),
                  )
                  as PrincipalSummary;
          result.sentBy.replace(valueDes);
          break;
        case r'sentAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.sentAt = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'recipients':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ReportSendRecipientsInner),
                    ]),
                  )
                  as BuiltList<ReportSendRecipientsInner>;
          result.recipients.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportSend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportSendBuilder();
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
