//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'observation_link_link_reason.g.dart';

/// Why the observation was linked
///
/// Properties:
/// * [rule]
/// * [dtSeconds]
/// * [distanceKm]
/// * [attributeDeltas]
/// * [upstreamIdMatch]
@BuiltValue()
abstract class ObservationLinkLinkReason
    implements
        Built<ObservationLinkLinkReason, ObservationLinkLinkReasonBuilder> {
  @BuiltValueField(wireName: r'rule')
  String get rule;

  @BuiltValueField(wireName: r'dtSeconds')
  num? get dtSeconds;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'attributeDeltas')
  BuiltMap<String, JsonObject?>? get attributeDeltas;

  @BuiltValueField(wireName: r'upstreamIdMatch')
  bool? get upstreamIdMatch;

  ObservationLinkLinkReason._();

  factory ObservationLinkLinkReason([
    void updates(ObservationLinkLinkReasonBuilder b),
  ]) = _$ObservationLinkLinkReason;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ObservationLinkLinkReasonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ObservationLinkLinkReason> get serializer =>
      _$ObservationLinkLinkReasonSerializer();
}

class _$ObservationLinkLinkReasonSerializer
    implements PrimitiveSerializer<ObservationLinkLinkReason> {
  @override
  final Iterable<Type> types = const [
    ObservationLinkLinkReason,
    _$ObservationLinkLinkReason,
  ];

  @override
  final String wireName = r'ObservationLinkLinkReason';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ObservationLinkLinkReason object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rule';
    yield serializers.serialize(
      object.rule,
      specifiedType: const FullType(String),
    );
    if (object.dtSeconds != null) {
      yield r'dtSeconds';
      yield serializers.serialize(
        object.dtSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.attributeDeltas != null) {
      yield r'attributeDeltas';
      yield serializers.serialize(
        object.attributeDeltas,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.upstreamIdMatch != null) {
      yield r'upstreamIdMatch';
      yield serializers.serialize(
        object.upstreamIdMatch,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ObservationLinkLinkReason object, {
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
    required ObservationLinkLinkReasonBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.rule = valueDes;
          break;
        case r'dtSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.dtSeconds = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'attributeDeltas':
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
          result.attributeDeltas.replace(valueDes);
          break;
        case r'upstreamIdMatch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.upstreamIdMatch = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ObservationLinkLinkReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObservationLinkLinkReasonBuilder();
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
