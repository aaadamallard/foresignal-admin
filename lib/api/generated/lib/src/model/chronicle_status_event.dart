//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_status_event.g.dart';

/// SSE `chronicle.status` on the `chronicle` topic
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [status]
/// * [previousStatus]
/// * [capState]
/// * [bytesUsed]
/// * [reason]
/// * [at]
@BuiltValue()
abstract class ChronicleStatusEvent
    implements Built<ChronicleStatusEvent, ChronicleStatusEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'status')
  ChronicleStatusEventStatusEnum get status;
  // enum statusEnum {  proposed,  active,  paused,  stopped,  archived,  };

  @BuiltValueField(wireName: r'previousStatus')
  ChronicleStatusEventPreviousStatusEnum? get previousStatus;
  // enum previousStatusEnum {  proposed,  active,  paused,  stopped,  archived,  };

  @BuiltValueField(wireName: r'capState')
  ChronicleStatusEventCapStateEnum? get capState;
  // enum capStateEnum {  ok,  warning,  exceeded,  };

  @BuiltValueField(wireName: r'bytesUsed')
  int? get bytesUsed;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ChronicleStatusEvent._();

  factory ChronicleStatusEvent([void updates(ChronicleStatusEventBuilder b)]) =
      _$ChronicleStatusEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleStatusEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleStatusEvent> get serializer =>
      _$ChronicleStatusEventSerializer();
}

class _$ChronicleStatusEventSerializer
    implements PrimitiveSerializer<ChronicleStatusEvent> {
  @override
  final Iterable<Type> types = const [
    ChronicleStatusEvent,
    _$ChronicleStatusEvent,
  ];

  @override
  final String wireName = r'ChronicleStatusEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleStatusEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ChronicleStatusEventStatusEnum),
    );
    if (object.previousStatus != null) {
      yield r'previousStatus';
      yield serializers.serialize(
        object.previousStatus,
        specifiedType: const FullType.nullable(
          ChronicleStatusEventPreviousStatusEnum,
        ),
      );
    }
    if (object.capState != null) {
      yield r'capState';
      yield serializers.serialize(
        object.capState,
        specifiedType: const FullType(ChronicleStatusEventCapStateEnum),
      );
    }
    if (object.bytesUsed != null) {
      yield r'bytesUsed';
      yield serializers.serialize(
        object.bytesUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
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
    ChronicleStatusEvent object, {
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
    required ChronicleStatusEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chronicleId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ChronicleStatusEventStatusEnum,
                    ),
                  )
                  as ChronicleStatusEventStatusEnum;
          result.status = valueDes;
          break;
        case r'previousStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleStatusEventPreviousStatusEnum,
                    ),
                  )
                  as ChronicleStatusEventPreviousStatusEnum?;
          if (valueDes == null) continue;
          result.previousStatus = valueDes;
          break;
        case r'capState':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleStatusEventCapStateEnum,
                    ),
                  )
                  as ChronicleStatusEventCapStateEnum?;
          if (valueDes == null) continue;
          result.capState = valueDes;
          break;
        case r'bytesUsed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytesUsed = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
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
  ChronicleStatusEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleStatusEventBuilder();
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

class ChronicleStatusEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'proposed')
  static const ChronicleStatusEventStatusEnum proposed =
      _$chronicleStatusEventStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'active')
  static const ChronicleStatusEventStatusEnum active =
      _$chronicleStatusEventStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'paused')
  static const ChronicleStatusEventStatusEnum paused =
      _$chronicleStatusEventStatusEnum_paused;
  @BuiltValueEnumConst(wireName: r'stopped')
  static const ChronicleStatusEventStatusEnum stopped =
      _$chronicleStatusEventStatusEnum_stopped;
  @BuiltValueEnumConst(wireName: r'archived')
  static const ChronicleStatusEventStatusEnum archived =
      _$chronicleStatusEventStatusEnum_archived;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleStatusEventStatusEnum unknownDefaultOpenApi =
      _$chronicleStatusEventStatusEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleStatusEventStatusEnum> get serializer =>
      _$chronicleStatusEventStatusEnumSerializer;

  const ChronicleStatusEventStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleStatusEventStatusEnum> get values =>
      _$chronicleStatusEventStatusEnumValues;
  static ChronicleStatusEventStatusEnum valueOf(String name) =>
      _$chronicleStatusEventStatusEnumValueOf(name);
}

class ChronicleStatusEventPreviousStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'proposed')
  static const ChronicleStatusEventPreviousStatusEnum proposed =
      _$chronicleStatusEventPreviousStatusEnum_proposed;
  @BuiltValueEnumConst(wireName: r'active')
  static const ChronicleStatusEventPreviousStatusEnum active =
      _$chronicleStatusEventPreviousStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'paused')
  static const ChronicleStatusEventPreviousStatusEnum paused =
      _$chronicleStatusEventPreviousStatusEnum_paused;
  @BuiltValueEnumConst(wireName: r'stopped')
  static const ChronicleStatusEventPreviousStatusEnum stopped =
      _$chronicleStatusEventPreviousStatusEnum_stopped;
  @BuiltValueEnumConst(wireName: r'archived')
  static const ChronicleStatusEventPreviousStatusEnum archived =
      _$chronicleStatusEventPreviousStatusEnum_archived;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleStatusEventPreviousStatusEnum unknownDefaultOpenApi =
      _$chronicleStatusEventPreviousStatusEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleStatusEventPreviousStatusEnum> get serializer =>
      _$chronicleStatusEventPreviousStatusEnumSerializer;

  const ChronicleStatusEventPreviousStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleStatusEventPreviousStatusEnum> get values =>
      _$chronicleStatusEventPreviousStatusEnumValues;
  static ChronicleStatusEventPreviousStatusEnum valueOf(String name) =>
      _$chronicleStatusEventPreviousStatusEnumValueOf(name);
}

class ChronicleStatusEventCapStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ChronicleStatusEventCapStateEnum ok =
      _$chronicleStatusEventCapStateEnum_ok;
  @BuiltValueEnumConst(wireName: r'warning')
  static const ChronicleStatusEventCapStateEnum warning =
      _$chronicleStatusEventCapStateEnum_warning;
  @BuiltValueEnumConst(wireName: r'exceeded')
  static const ChronicleStatusEventCapStateEnum exceeded =
      _$chronicleStatusEventCapStateEnum_exceeded;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChronicleStatusEventCapStateEnum unknownDefaultOpenApi =
      _$chronicleStatusEventCapStateEnum_unknownDefaultOpenApi;

  static Serializer<ChronicleStatusEventCapStateEnum> get serializer =>
      _$chronicleStatusEventCapStateEnumSerializer;

  const ChronicleStatusEventCapStateEnum._(String name) : super(name);

  static BuiltSet<ChronicleStatusEventCapStateEnum> get values =>
      _$chronicleStatusEventCapStateEnumValues;
  static ChronicleStatusEventCapStateEnum valueOf(String name) =>
      _$chronicleStatusEventCapStateEnumValueOf(name);
}
