//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation_evidence_samples_inner.g.dart';

/// Sample record version
///
/// Properties:
/// * [source_]
/// * [externalId]
/// * [seq]
@BuiltValue()
abstract class AnomalyObservationEvidenceSamplesInner
    implements
        Built<
          AnomalyObservationEvidenceSamplesInner,
          AnomalyObservationEvidenceSamplesInnerBuilder
        > {
  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'seq')
  int get seq;

  AnomalyObservationEvidenceSamplesInner._();

  factory AnomalyObservationEvidenceSamplesInner([
    void updates(AnomalyObservationEvidenceSamplesInnerBuilder b),
  ]) = _$AnomalyObservationEvidenceSamplesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyObservationEvidenceSamplesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservationEvidenceSamplesInner> get serializer =>
      _$AnomalyObservationEvidenceSamplesInnerSerializer();
}

class _$AnomalyObservationEvidenceSamplesInnerSerializer
    implements PrimitiveSerializer<AnomalyObservationEvidenceSamplesInner> {
  @override
  final Iterable<Type> types = const [
    AnomalyObservationEvidenceSamplesInner,
    _$AnomalyObservationEvidenceSamplesInner,
  ];

  @override
  final String wireName = r'AnomalyObservationEvidenceSamplesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservationEvidenceSamplesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationEvidenceSamplesInner object, {
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
    required AnomalyObservationEvidenceSamplesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservationEvidenceSamplesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationEvidenceSamplesInnerBuilder();
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
