//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_observation_evidence_fetch_log_ranges_inner.g.dart';

/// fetch_log id range per source
///
/// Properties:
/// * [sourceId]
/// * [fromId]
/// * [toId]
@BuiltValue()
abstract class AnomalyObservationEvidenceFetchLogRangesInner
    implements
        Built<
          AnomalyObservationEvidenceFetchLogRangesInner,
          AnomalyObservationEvidenceFetchLogRangesInnerBuilder
        > {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'fromId')
  int get fromId;

  @BuiltValueField(wireName: r'toId')
  int get toId;

  AnomalyObservationEvidenceFetchLogRangesInner._();

  factory AnomalyObservationEvidenceFetchLogRangesInner([
    void updates(AnomalyObservationEvidenceFetchLogRangesInnerBuilder b),
  ]) = _$AnomalyObservationEvidenceFetchLogRangesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    AnomalyObservationEvidenceFetchLogRangesInnerBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyObservationEvidenceFetchLogRangesInner>
  get serializer => _$AnomalyObservationEvidenceFetchLogRangesInnerSerializer();
}

class _$AnomalyObservationEvidenceFetchLogRangesInnerSerializer
    implements
        PrimitiveSerializer<AnomalyObservationEvidenceFetchLogRangesInner> {
  @override
  final Iterable<Type> types = const [
    AnomalyObservationEvidenceFetchLogRangesInner,
    _$AnomalyObservationEvidenceFetchLogRangesInner,
  ];

  @override
  final String wireName = r'AnomalyObservationEvidenceFetchLogRangesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyObservationEvidenceFetchLogRangesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'fromId';
    yield serializers.serialize(
      object.fromId,
      specifiedType: const FullType(int),
    );
    yield r'toId';
    yield serializers.serialize(
      object.toId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyObservationEvidenceFetchLogRangesInner object, {
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
    required AnomalyObservationEvidenceFetchLogRangesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'fromId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromId = valueDes;
          break;
        case r'toId':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyObservationEvidenceFetchLogRangesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyObservationEvidenceFetchLogRangesInnerBuilder();
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
