//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_gap_event.g.dart';

/// SSE `attention.gap` (topic `social`): an `attention-gap` finding (137)
///
/// Properties:
/// * [event]
/// * [findingId] - ULID identifier
/// * [ref] - Canonical event or situation
/// * [regionCodes]
/// * [expected] - Expected posts in the 6 h after the event (normalised)
/// * [observed]
/// * [platforms]
/// * [at]
@BuiltValue()
abstract class AttentionGapEvent
    implements Built<AttentionGapEvent, AttentionGapEventBuilder> {
  @BuiltValueField(wireName: r'event')
  AttentionGapEventEventEnum get event;
  // enum eventEnum {  attention.gap,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String get findingId;

  /// Canonical event or situation
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// Expected posts in the 6 h after the event (normalised)
  @BuiltValueField(wireName: r'expected')
  num get expected;

  @BuiltValueField(wireName: r'observed')
  num get observed;

  @BuiltValueField(wireName: r'platforms')
  BuiltList<String> get platforms;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AttentionGapEvent._();

  factory AttentionGapEvent([void updates(AttentionGapEventBuilder b)]) =
      _$AttentionGapEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionGapEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionGapEvent> get serializer =>
      _$AttentionGapEventSerializer();
}

class _$AttentionGapEventSerializer
    implements PrimitiveSerializer<AttentionGapEvent> {
  @override
  final Iterable<Type> types = const [AttentionGapEvent, _$AttentionGapEvent];

  @override
  final String wireName = r'AttentionGapEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionGapEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(AttentionGapEventEventEnum),
    );
    yield r'findingId';
    yield serializers.serialize(
      object.findingId,
      specifiedType: const FullType(String),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'expected';
    yield serializers.serialize(
      object.expected,
      specifiedType: const FullType(num),
    );
    yield r'observed';
    yield serializers.serialize(
      object.observed,
      specifiedType: const FullType(num),
    );
    yield r'platforms';
    yield serializers.serialize(
      object.platforms,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttentionGapEvent object, {
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
    required AttentionGapEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AttentionGapEventEventEnum),
                  )
                  as AttentionGapEventEventEnum;
          result.event = valueDes;
          break;
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingId = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'expected':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.expected = valueDes;
          break;
        case r'observed':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.observed = valueDes;
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.platforms.replace(valueDes);
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
  AttentionGapEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionGapEventBuilder();
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

class AttentionGapEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'attention.gap')
  static const AttentionGapEventEventEnum attentionPeriodGap =
      _$attentionGapEventEventEnum_attentionPeriodGap;

  static Serializer<AttentionGapEventEventEnum> get serializer =>
      _$attentionGapEventEventEnumSerializer;

  const AttentionGapEventEventEnum._(String name) : super(name);

  static BuiltSet<AttentionGapEventEventEnum> get values =>
      _$attentionGapEventEventEnumValues;
  static AttentionGapEventEventEnum valueOf(String name) =>
      _$attentionGapEventEventEnumValueOf(name);
}
