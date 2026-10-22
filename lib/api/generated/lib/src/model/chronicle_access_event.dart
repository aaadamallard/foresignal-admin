//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_access_event.g.dart';

/// SSE `chronicle.access.requested`, `chronicle.access.granted` and `chronicle.access.declined` on the `me` topic
///
/// Properties:
/// * [requestId] - ULID identifier
/// * [linkId] - ULID identifier
/// * [status]
/// * [requesterHandle] - Only on `requested`
/// * [message] - Only on `requested`
/// * [chronicleId]
/// * [at]
@BuiltValue()
abstract class ChronicleAccessEvent
    implements Built<ChronicleAccessEvent, ChronicleAccessEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'requestId')
  String get requestId;

  /// ULID identifier
  @BuiltValueField(wireName: r'linkId')
  String get linkId;

  @BuiltValueField(wireName: r'status')
  ChronicleAccessEventStatusEnum get status;
  // enum statusEnum {  pending,  granted,  declined,  };

  /// Only on `requested`
  @BuiltValueField(wireName: r'requesterHandle')
  String? get requesterHandle;

  /// Only on `requested`
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'chronicleId')
  String? get chronicleId;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ChronicleAccessEvent._();

  factory ChronicleAccessEvent([void updates(ChronicleAccessEventBuilder b)]) =
      _$ChronicleAccessEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleAccessEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleAccessEvent> get serializer =>
      _$ChronicleAccessEventSerializer();
}

class _$ChronicleAccessEventSerializer
    implements PrimitiveSerializer<ChronicleAccessEvent> {
  @override
  final Iterable<Type> types = const [
    ChronicleAccessEvent,
    _$ChronicleAccessEvent
  ];

  @override
  final String wireName = r'ChronicleAccessEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleAccessEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'requestId';
    yield serializers.serialize(
      object.requestId,
      specifiedType: const FullType(String),
    );
    yield r'linkId';
    yield serializers.serialize(
      object.linkId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ChronicleAccessEventStatusEnum),
    );
    if (object.requesterHandle != null) {
      yield r'requesterHandle';
      yield serializers.serialize(
        object.requesterHandle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.chronicleId != null) {
      yield r'chronicleId';
      yield serializers.serialize(
        object.chronicleId,
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
    ChronicleAccessEvent object, {
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
    required ChronicleAccessEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'requestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestId = valueDes;
          break;
        case r'linkId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChronicleAccessEventStatusEnum),
          ) as ChronicleAccessEventStatusEnum;
          result.status = valueDes;
          break;
        case r'requesterHandle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.requesterHandle = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.chronicleId = valueDes;
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
  ChronicleAccessEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleAccessEventBuilder();
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

class ChronicleAccessEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const ChronicleAccessEventStatusEnum pending =
      _$chronicleAccessEventStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'granted')
  static const ChronicleAccessEventStatusEnum granted =
      _$chronicleAccessEventStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const ChronicleAccessEventStatusEnum declined =
      _$chronicleAccessEventStatusEnum_declined;

  static Serializer<ChronicleAccessEventStatusEnum> get serializer =>
      _$chronicleAccessEventStatusEnumSerializer;

  const ChronicleAccessEventStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleAccessEventStatusEnum> get values =>
      _$chronicleAccessEventStatusEnumValues;
  static ChronicleAccessEventStatusEnum valueOf(String name) =>
      _$chronicleAccessEventStatusEnumValueOf(name);
}
