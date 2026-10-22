//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/claim.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_extracted_event.g.dart';

/// SSE `claim.extracted` (topic `social`) (136)
///
/// Properties:
/// * [event]
/// * [claim]
/// * [at]
@BuiltValue()
abstract class ClaimExtractedEvent
    implements Built<ClaimExtractedEvent, ClaimExtractedEventBuilder> {
  @BuiltValueField(wireName: r'event')
  ClaimExtractedEventEventEnum get event;
  // enum eventEnum {  claim.extracted,  };

  @BuiltValueField(wireName: r'claim')
  Claim get claim;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  ClaimExtractedEvent._();

  factory ClaimExtractedEvent([void updates(ClaimExtractedEventBuilder b)]) =
      _$ClaimExtractedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimExtractedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimExtractedEvent> get serializer =>
      _$ClaimExtractedEventSerializer();
}

class _$ClaimExtractedEventSerializer
    implements PrimitiveSerializer<ClaimExtractedEvent> {
  @override
  final Iterable<Type> types = const [
    ClaimExtractedEvent,
    _$ClaimExtractedEvent,
  ];

  @override
  final String wireName = r'ClaimExtractedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimExtractedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(ClaimExtractedEventEventEnum),
    );
    yield r'claim';
    yield serializers.serialize(
      object.claim,
      specifiedType: const FullType(Claim),
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
    ClaimExtractedEvent object, {
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
    required ClaimExtractedEventBuilder result,
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
                    specifiedType: const FullType(ClaimExtractedEventEventEnum),
                  )
                  as ClaimExtractedEventEventEnum;
          result.event = valueDes;
          break;
        case r'claim':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Claim),
                  )
                  as Claim;
          result.claim.replace(valueDes);
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
  ClaimExtractedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimExtractedEventBuilder();
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

class ClaimExtractedEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'claim.extracted')
  static const ClaimExtractedEventEventEnum claimPeriodExtracted =
      _$claimExtractedEventEventEnum_claimPeriodExtracted;

  static Serializer<ClaimExtractedEventEventEnum> get serializer =>
      _$claimExtractedEventEventEnumSerializer;

  const ClaimExtractedEventEventEnum._(String name) : super(name);

  static BuiltSet<ClaimExtractedEventEventEnum> get values =>
      _$claimExtractedEventEventEnumValues;
  static ClaimExtractedEventEventEnum valueOf(String name) =>
      _$claimExtractedEventEventEnumValueOf(name);
}
