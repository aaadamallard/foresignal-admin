//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hello_event.g.dart';

/// First event on /v1/events/stream: stream id for filter PATCHes, subscribed topics and the change watermark
///
/// Properties:
/// * [streamId] - 129 random bits, base64url; bound to the caller's principal
/// * [topics] - Subscribed topics
/// * [watermarkSeq]
/// * [filterVersion] - Starts at 1; incremented by each applied filter PATCH
/// * [streamKey] - Anonymous callers only: send as `Foresignal-Stream-Key` with filter PATCHes
@BuiltValue()
abstract class HelloEvent implements Built<HelloEvent, HelloEventBuilder> {
  /// 129 random bits, base64url; bound to the caller's principal
  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  /// Subscribed topics
  @BuiltValueField(wireName: r'topics')
  BuiltList<String> get topics;

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  /// Starts at 1; incremented by each applied filter PATCH
  @BuiltValueField(wireName: r'filterVersion')
  int get filterVersion;

  /// Anonymous callers only: send as `Foresignal-Stream-Key` with filter PATCHes
  @BuiltValueField(wireName: r'streamKey')
  String? get streamKey;

  HelloEvent._();

  factory HelloEvent([void updates(HelloEventBuilder b)]) = _$HelloEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HelloEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HelloEvent> get serializer => _$HelloEventSerializer();
}

class _$HelloEventSerializer implements PrimitiveSerializer<HelloEvent> {
  @override
  final Iterable<Type> types = const [HelloEvent, _$HelloEvent];

  @override
  final String wireName = r'HelloEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HelloEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'streamId';
    yield serializers.serialize(
      object.streamId,
      specifiedType: const FullType(String),
    );
    yield r'topics';
    yield serializers.serialize(
      object.topics,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
    yield r'filterVersion';
    yield serializers.serialize(
      object.filterVersion,
      specifiedType: const FullType(int),
    );
    if (object.streamKey != null) {
      yield r'streamKey';
      yield serializers.serialize(
        object.streamKey,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HelloEvent object, {
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
    required HelloEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.streamId = valueDes;
          break;
        case r'topics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.topics.replace(valueDes);
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.watermarkSeq = valueDes;
          break;
        case r'filterVersion':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.filterVersion = valueDes;
          break;
        case r'streamKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.streamKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HelloEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HelloEventBuilder();
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
