//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/anomaly_observation_evidence_fetch_log_ranges_inner.dart';
import 'package:foresignal_api/src/model/anomaly_observation_evidence_samples_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation_evidence.g.dart';

/// Sample evidence refs and fetch_log ranges
///
/// Properties:
/// * [samples]
/// * [fetchLogRanges]
@BuiltValue()
abstract class AnomalyObservationEvidence
    implements
        Built<AnomalyObservationEvidence, AnomalyObservationEvidenceBuilder> {
  @BuiltValueField(wireName: r'samples')
  BuiltList<AnomalyObservationEvidenceSamplesInner>? get samples;

  @BuiltValueField(wireName: r'fetchLogRanges')
  BuiltList<AnomalyObservationEvidenceFetchLogRangesInner>? get fetchLogRanges;

  AnomalyObservationEvidence._();

  factory AnomalyObservationEvidence([
    void updates(AnomalyObservationEvidenceBuilder b),
  ]) = _$AnomalyObservationEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyObservationEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservationEvidence> get serializer =>
      _$AnomalyObservationEvidenceSerializer();
}

class _$AnomalyObservationEvidenceSerializer
    implements PrimitiveSerializer<AnomalyObservationEvidence> {
  @override
  final Iterable<Type> types = const [
    AnomalyObservationEvidence,
    _$AnomalyObservationEvidence,
  ];

  @override
  final String wireName = r'AnomalyObservationEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservationEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.samples != null) {
      yield r'samples';
      yield serializers.serialize(
        object.samples,
        specifiedType: const FullType(BuiltList, [
          FullType(AnomalyObservationEvidenceSamplesInner),
        ]),
      );
    }
    if (object.fetchLogRanges != null) {
      yield r'fetchLogRanges';
      yield serializers.serialize(
        object.fetchLogRanges,
        specifiedType: const FullType(BuiltList, [
          FullType(AnomalyObservationEvidenceFetchLogRangesInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationEvidence object, {
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
    required AnomalyObservationEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'samples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnomalyObservationEvidenceSamplesInner),
                    ]),
                  )
                  as BuiltList<AnomalyObservationEvidenceSamplesInner>?;
          if (valueDes == null) continue;
          result.samples.replace(valueDes);
          break;
        case r'fetchLogRanges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnomalyObservationEvidenceFetchLogRangesInner),
                    ]),
                  )
                  as BuiltList<AnomalyObservationEvidenceFetchLogRangesInner>?;
          if (valueDes == null) continue;
          result.fetchLogRanges.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservationEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationEvidenceBuilder();
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
