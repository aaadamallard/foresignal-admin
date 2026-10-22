//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ask_action.g.dart';

/// AskAction
///
/// Properties:
/// * [id]
/// * [type]
/// * [description]
/// * [payload]
/// * [status]
/// * [result]
/// * [createdAt]
/// * [executedAt]
@BuiltValue()
abstract class AskAction implements Built<AskAction, AskActionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  AskActionTypeEnum get type;
  // enum typeEnum {  create_watch,  update_watch,  create_briefing,  acknowledge_alert,  alert_status,  snooze_alert,  create_view,  set_alert_feedback,  apply_tuning_suggestion,  };

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?>? get payload;

  @BuiltValueField(wireName: r'status')
  AskActionStatusEnum get status;
  // enum statusEnum {  pending,  executed,  rejected,  failed,  };

  @BuiltValueField(wireName: r'result')
  BuiltMap<String, JsonObject?>? get result;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'executedAt')
  DateTime? get executedAt;

  AskAction._();

  factory AskAction([void updates(AskActionBuilder b)]) = _$AskAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AskActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AskAction> get serializer => _$AskActionSerializer();
}

class _$AskActionSerializer implements PrimitiveSerializer<AskAction> {
  @override
  final Iterable<Type> types = const [AskAction, _$AskAction];

  @override
  final String wireName = r'AskAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AskAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(AskActionTypeEnum),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AskActionStatusEnum),
    );
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.executedAt != null) {
      yield r'executedAt';
      yield serializers.serialize(
        object.executedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AskAction object, {
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
    required AskActionBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AskActionTypeEnum),
                  )
                  as AskActionTypeEnum;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'payload':
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
          result.payload.replace(valueDes);
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AskActionStatusEnum),
                  )
                  as AskActionStatusEnum;
          result.status = valueDes;
          break;
        case r'result':
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
          result.result.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'executedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.executedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AskAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AskActionBuilder();
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

class AskActionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'create_watch')
  static const AskActionTypeEnum createWatch = _$askActionTypeEnum_createWatch;
  @BuiltValueEnumConst(wireName: r'update_watch')
  static const AskActionTypeEnum updateWatch = _$askActionTypeEnum_updateWatch;
  @BuiltValueEnumConst(wireName: r'create_briefing')
  static const AskActionTypeEnum createBriefing =
      _$askActionTypeEnum_createBriefing;
  @BuiltValueEnumConst(wireName: r'acknowledge_alert')
  static const AskActionTypeEnum acknowledgeAlert =
      _$askActionTypeEnum_acknowledgeAlert;
  @BuiltValueEnumConst(wireName: r'alert_status')
  static const AskActionTypeEnum alertStatus = _$askActionTypeEnum_alertStatus;
  @BuiltValueEnumConst(wireName: r'snooze_alert')
  static const AskActionTypeEnum snoozeAlert = _$askActionTypeEnum_snoozeAlert;
  @BuiltValueEnumConst(wireName: r'create_view')
  static const AskActionTypeEnum createView = _$askActionTypeEnum_createView;
  @BuiltValueEnumConst(wireName: r'set_alert_feedback')
  static const AskActionTypeEnum setAlertFeedback =
      _$askActionTypeEnum_setAlertFeedback;
  @BuiltValueEnumConst(wireName: r'apply_tuning_suggestion')
  static const AskActionTypeEnum applyTuningSuggestion =
      _$askActionTypeEnum_applyTuningSuggestion;

  static Serializer<AskActionTypeEnum> get serializer =>
      _$askActionTypeEnumSerializer;

  const AskActionTypeEnum._(String name) : super(name);

  static BuiltSet<AskActionTypeEnum> get values => _$askActionTypeEnumValues;
  static AskActionTypeEnum valueOf(String name) =>
      _$askActionTypeEnumValueOf(name);
}

class AskActionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const AskActionStatusEnum pending = _$askActionStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'executed')
  static const AskActionStatusEnum executed = _$askActionStatusEnum_executed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AskActionStatusEnum rejected = _$askActionStatusEnum_rejected;
  @BuiltValueEnumConst(wireName: r'failed')
  static const AskActionStatusEnum failed = _$askActionStatusEnum_failed;

  static Serializer<AskActionStatusEnum> get serializer =>
      _$askActionStatusEnumSerializer;

  const AskActionStatusEnum._(String name) : super(name);

  static BuiltSet<AskActionStatusEnum> get values =>
      _$askActionStatusEnumValues;
  static AskActionStatusEnum valueOf(String name) =>
      _$askActionStatusEnumValueOf(name);
}
