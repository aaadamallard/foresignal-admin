//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/regional_index_def_skill.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'index_weights_proposed_event.g.dart';

/// SSE payload for `index.weights_proposed` (topic `analytics`)
///
/// Properties:
/// * [indexId]
/// * [fitId] - ULID identifier
/// * [weightsVersion]
/// * [proposedWeights]
/// * [skill]
/// * [autoApplied]
@BuiltValue()
abstract class IndexWeightsProposedEvent
    implements
        Built<IndexWeightsProposedEvent, IndexWeightsProposedEventBuilder> {
  @BuiltValueField(wireName: r'indexId')
  String get indexId;

  /// ULID identifier
  @BuiltValueField(wireName: r'fitId')
  String get fitId;

  @BuiltValueField(wireName: r'weightsVersion')
  int get weightsVersion;

  @BuiltValueField(wireName: r'proposedWeights')
  BuiltMap<String, num> get proposedWeights;

  @BuiltValueField(wireName: r'skill')
  RegionalIndexDefSkill? get skill;

  @BuiltValueField(wireName: r'autoApplied')
  bool? get autoApplied;

  IndexWeightsProposedEvent._();

  factory IndexWeightsProposedEvent(
          [void updates(IndexWeightsProposedEventBuilder b)]) =
      _$IndexWeightsProposedEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndexWeightsProposedEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndexWeightsProposedEvent> get serializer =>
      _$IndexWeightsProposedEventSerializer();
}

class _$IndexWeightsProposedEventSerializer
    implements PrimitiveSerializer<IndexWeightsProposedEvent> {
  @override
  final Iterable<Type> types = const [
    IndexWeightsProposedEvent,
    _$IndexWeightsProposedEvent
  ];

  @override
  final String wireName = r'IndexWeightsProposedEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndexWeightsProposedEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'indexId';
    yield serializers.serialize(
      object.indexId,
      specifiedType: const FullType(String),
    );
    yield r'fitId';
    yield serializers.serialize(
      object.fitId,
      specifiedType: const FullType(String),
    );
    yield r'weightsVersion';
    yield serializers.serialize(
      object.weightsVersion,
      specifiedType: const FullType(int),
    );
    yield r'proposedWeights';
    yield serializers.serialize(
      object.proposedWeights,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(num)]),
    );
    if (object.skill != null) {
      yield r'skill';
      yield serializers.serialize(
        object.skill,
        specifiedType: const FullType.nullable(RegionalIndexDefSkill),
      );
    }
    if (object.autoApplied != null) {
      yield r'autoApplied';
      yield serializers.serialize(
        object.autoApplied,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndexWeightsProposedEvent object, {
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
    required IndexWeightsProposedEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indexId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.indexId = valueDes;
          break;
        case r'fitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fitId = valueDes;
          break;
        case r'weightsVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.weightsVersion = valueDes;
          break;
        case r'proposedWeights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(num)]),
          ) as BuiltMap<String, num>;
          result.proposedWeights.replace(valueDes);
          break;
        case r'skill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RegionalIndexDefSkill),
          ) as RegionalIndexDefSkill?;
          if (valueDes == null) continue;
          result.skill.replace(valueDes);
          break;
        case r'autoApplied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.autoApplied = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndexWeightsProposedEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndexWeightsProposedEventBuilder();
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
