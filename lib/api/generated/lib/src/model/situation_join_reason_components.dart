//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_join_reason_components.g.dart';

/// Score components (documented constants in `LinkerWeights`)
///
/// Properties:
/// * [region] - Region contribution (0.30 shared admin1, 0.20 shared country)
/// * [distanceKm] - Distance to the situation geometry in km (contributes 0.25 × max(0, 1 − d / maxDistanceKm))
/// * [entity] - Shared 098 entity contribution (0.25)
/// * [topic] - 117 attention-topic keyword match contribution (0.15)
/// * [textSimilarity] - Embedding similarity contribution, 0.20 × max(0, (cos − 0.70) / 0.30)
/// * [theme] - Theme incompatibility penalty (−0.20 or 0)
/// * [recencyHours] - Hours since the situation's last activity (recency multiplier 0.5 + 0.5 × exp(−h / 72))
@BuiltValue()
abstract class SituationJoinReasonComponents
    implements
        Built<
          SituationJoinReasonComponents,
          SituationJoinReasonComponentsBuilder
        > {
  /// Region contribution (0.30 shared admin1, 0.20 shared country)
  @BuiltValueField(wireName: r'region')
  num? get region;

  /// Distance to the situation geometry in km (contributes 0.25 × max(0, 1 − d / maxDistanceKm))
  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  /// Shared 098 entity contribution (0.25)
  @BuiltValueField(wireName: r'entity')
  num? get entity;

  /// 117 attention-topic keyword match contribution (0.15)
  @BuiltValueField(wireName: r'topic')
  num? get topic;

  /// Embedding similarity contribution, 0.20 × max(0, (cos − 0.70) / 0.30)
  @BuiltValueField(wireName: r'textSimilarity')
  num? get textSimilarity;

  /// Theme incompatibility penalty (−0.20 or 0)
  @BuiltValueField(wireName: r'theme')
  num? get theme;

  /// Hours since the situation's last activity (recency multiplier 0.5 + 0.5 × exp(−h / 72))
  @BuiltValueField(wireName: r'recencyHours')
  num? get recencyHours;

  SituationJoinReasonComponents._();

  factory SituationJoinReasonComponents([
    void updates(SituationJoinReasonComponentsBuilder b),
  ]) = _$SituationJoinReasonComponents;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationJoinReasonComponentsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationJoinReasonComponents> get serializer =>
      _$SituationJoinReasonComponentsSerializer();
}

class _$SituationJoinReasonComponentsSerializer
    implements PrimitiveSerializer<SituationJoinReasonComponents> {
  @override
  final Iterable<Type> types = const [
    SituationJoinReasonComponents,
    _$SituationJoinReasonComponents,
  ];

  @override
  final String wireName = r'SituationJoinReasonComponents';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationJoinReasonComponents object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
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
    if (object.entity != null) {
      yield r'entity';
      yield serializers.serialize(
        object.entity,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.topic != null) {
      yield r'topic';
      yield serializers.serialize(
        object.topic,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.textSimilarity != null) {
      yield r'textSimilarity';
      yield serializers.serialize(
        object.textSimilarity,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.recencyHours != null) {
      yield r'recencyHours';
      yield serializers.serialize(
        object.recencyHours,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationJoinReasonComponents object, {
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
    required SituationJoinReasonComponentsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.region = valueDes;
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
        case r'entity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.entity = valueDes;
          break;
        case r'topic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.topic = valueDes;
          break;
        case r'textSimilarity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.textSimilarity = valueDes;
          break;
        case r'theme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'recencyHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.recencyHours = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationJoinReasonComponents deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationJoinReasonComponentsBuilder();
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
