//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_assumption_event.g.dart';

/// SSE payload for `assumption.broken` (topic `hypotheses`)
///
/// Properties:
/// * [assumptionId] - ULID identifier
/// * [setId] - ULID identifier
/// * [text]
/// * [linchpin]
/// * [status]
/// * [previousStatus]
/// * [private]
/// * [at]
@BuiltValue()
abstract class KeyAssumptionEvent
    implements Built<KeyAssumptionEvent, KeyAssumptionEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'assumptionId')
  String get assumptionId;

  /// ULID identifier
  @BuiltValueField(wireName: r'setId')
  String get setId;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'linchpin')
  bool? get linchpin;

  @BuiltValueField(wireName: r'status')
  KeyAssumptionEventStatusEnum get status;
  // enum statusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'previousStatus')
  KeyAssumptionEventPreviousStatusEnum? get previousStatus;
  // enum previousStatusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'private')
  bool? get private;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  KeyAssumptionEvent._();

  factory KeyAssumptionEvent([void updates(KeyAssumptionEventBuilder b)]) =
      _$KeyAssumptionEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyAssumptionEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyAssumptionEvent> get serializer =>
      _$KeyAssumptionEventSerializer();
}

class _$KeyAssumptionEventSerializer
    implements PrimitiveSerializer<KeyAssumptionEvent> {
  @override
  final Iterable<Type> types = const [KeyAssumptionEvent, _$KeyAssumptionEvent];

  @override
  final String wireName = r'KeyAssumptionEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyAssumptionEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assumptionId';
    yield serializers.serialize(
      object.assumptionId,
      specifiedType: const FullType(String),
    );
    yield r'setId';
    yield serializers.serialize(
      object.setId,
      specifiedType: const FullType(String),
    );
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.linchpin != null) {
      yield r'linchpin';
      yield serializers.serialize(
        object.linchpin,
        specifiedType: const FullType(bool),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(KeyAssumptionEventStatusEnum),
    );
    if (object.previousStatus != null) {
      yield r'previousStatus';
      yield serializers.serialize(
        object.previousStatus,
        specifiedType: const FullType(KeyAssumptionEventPreviousStatusEnum),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
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
    KeyAssumptionEvent object, {
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
    required KeyAssumptionEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assumptionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.assumptionId = valueDes;
          break;
        case r'setId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.setId = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'linchpin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.linchpin = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(KeyAssumptionEventStatusEnum),
                  )
                  as KeyAssumptionEventStatusEnum;
          result.status = valueDes;
          break;
        case r'previousStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      KeyAssumptionEventPreviousStatusEnum,
                    ),
                  )
                  as KeyAssumptionEventPreviousStatusEnum?;
          if (valueDes == null) continue;
          result.previousStatus = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
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
  KeyAssumptionEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyAssumptionEventBuilder();
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

class KeyAssumptionEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const KeyAssumptionEventStatusEnum solid =
      _$keyAssumptionEventStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const KeyAssumptionEventStatusEnum caveated =
      _$keyAssumptionEventStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const KeyAssumptionEventStatusEnum unsupported =
      _$keyAssumptionEventStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const KeyAssumptionEventStatusEnum broken =
      _$keyAssumptionEventStatusEnum_broken;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const KeyAssumptionEventStatusEnum unknownDefaultOpenApi =
      _$keyAssumptionEventStatusEnum_unknownDefaultOpenApi;

  static Serializer<KeyAssumptionEventStatusEnum> get serializer =>
      _$keyAssumptionEventStatusEnumSerializer;

  const KeyAssumptionEventStatusEnum._(String name) : super(name);

  static BuiltSet<KeyAssumptionEventStatusEnum> get values =>
      _$keyAssumptionEventStatusEnumValues;
  static KeyAssumptionEventStatusEnum valueOf(String name) =>
      _$keyAssumptionEventStatusEnumValueOf(name);
}

class KeyAssumptionEventPreviousStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const KeyAssumptionEventPreviousStatusEnum solid =
      _$keyAssumptionEventPreviousStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const KeyAssumptionEventPreviousStatusEnum caveated =
      _$keyAssumptionEventPreviousStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const KeyAssumptionEventPreviousStatusEnum unsupported =
      _$keyAssumptionEventPreviousStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const KeyAssumptionEventPreviousStatusEnum broken =
      _$keyAssumptionEventPreviousStatusEnum_broken;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const KeyAssumptionEventPreviousStatusEnum unknownDefaultOpenApi =
      _$keyAssumptionEventPreviousStatusEnum_unknownDefaultOpenApi;

  static Serializer<KeyAssumptionEventPreviousStatusEnum> get serializer =>
      _$keyAssumptionEventPreviousStatusEnumSerializer;

  const KeyAssumptionEventPreviousStatusEnum._(String name) : super(name);

  static BuiltSet<KeyAssumptionEventPreviousStatusEnum> get values =>
      _$keyAssumptionEventPreviousStatusEnumValues;
  static KeyAssumptionEventPreviousStatusEnum valueOf(String name) =>
      _$keyAssumptionEventPreviousStatusEnumValueOf(name);
}
