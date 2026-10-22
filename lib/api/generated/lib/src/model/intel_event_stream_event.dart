//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intel_event_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_stream_event.g.dart';

/// SSE payload on topic `intel` (`intel.event.created|updated|resolved|merged`)
///
/// Properties:
/// * [eventId] - ULID identifier
/// * [change]
/// * [version]
/// * [summary]
/// * [mergedInto] - ULID identifier
@BuiltValue()
abstract class IntelEventStreamEvent
    implements Built<IntelEventStreamEvent, IntelEventStreamEventBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'change')
  IntelEventStreamEventChangeEnum get change;
  // enum changeEnum {  created,  updated,  resolved,  merged,  };

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'summary')
  IntelEventSummary get summary;

  /// ULID identifier
  @BuiltValueField(wireName: r'mergedInto')
  String? get mergedInto;

  IntelEventStreamEvent._();

  factory IntelEventStreamEvent([
    void updates(IntelEventStreamEventBuilder b),
  ]) = _$IntelEventStreamEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventStreamEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventStreamEvent> get serializer =>
      _$IntelEventStreamEventSerializer();
}

class _$IntelEventStreamEventSerializer
    implements PrimitiveSerializer<IntelEventStreamEvent> {
  @override
  final Iterable<Type> types = const [
    IntelEventStreamEvent,
    _$IntelEventStreamEvent,
  ];

  @override
  final String wireName = r'IntelEventStreamEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventStreamEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'change';
    yield serializers.serialize(
      object.change,
      specifiedType: const FullType(IntelEventStreamEventChangeEnum),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(IntelEventSummary),
    );
    if (object.mergedInto != null) {
      yield r'mergedInto';
      yield serializers.serialize(
        object.mergedInto,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventStreamEvent object, {
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
    required IntelEventStreamEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.eventId = valueDes;
          break;
        case r'change':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      IntelEventStreamEventChangeEnum,
                    ),
                  )
                  as IntelEventStreamEventChangeEnum;
          result.change = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntelEventSummary),
                  )
                  as IntelEventSummary;
          result.summary.replace(valueDes);
          break;
        case r'mergedInto':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mergedInto = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventStreamEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventStreamEventBuilder();
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

class IntelEventStreamEventChangeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'created')
  static const IntelEventStreamEventChangeEnum created =
      _$intelEventStreamEventChangeEnum_created;
  @BuiltValueEnumConst(wireName: r'updated')
  static const IntelEventStreamEventChangeEnum updated =
      _$intelEventStreamEventChangeEnum_updated;
  @BuiltValueEnumConst(wireName: r'resolved')
  static const IntelEventStreamEventChangeEnum resolved =
      _$intelEventStreamEventChangeEnum_resolved;
  @BuiltValueEnumConst(wireName: r'merged')
  static const IntelEventStreamEventChangeEnum merged =
      _$intelEventStreamEventChangeEnum_merged;

  static Serializer<IntelEventStreamEventChangeEnum> get serializer =>
      _$intelEventStreamEventChangeEnumSerializer;

  const IntelEventStreamEventChangeEnum._(String name) : super(name);

  static BuiltSet<IntelEventStreamEventChangeEnum> get values =>
      _$intelEventStreamEventChangeEnumValues;
  static IntelEventStreamEventChangeEnum valueOf(String name) =>
      _$intelEventStreamEventChangeEnumValueOf(name);
}
