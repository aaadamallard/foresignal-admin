//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_link_scores_evidence.g.dart';

/// Overlap estimate for one key type
///
/// Properties:
/// * [jaccard]
/// * [containment]
/// * [sharedEstimate]
@BuiltValue()
abstract class ChronicleLinkScoresEvidence
    implements
        Built<ChronicleLinkScoresEvidence, ChronicleLinkScoresEvidenceBuilder> {
  @BuiltValueField(wireName: r'jaccard')
  num? get jaccard;

  @BuiltValueField(wireName: r'containment')
  num? get containment;

  @BuiltValueField(wireName: r'sharedEstimate')
  num? get sharedEstimate;

  ChronicleLinkScoresEvidence._();

  factory ChronicleLinkScoresEvidence([
    void updates(ChronicleLinkScoresEvidenceBuilder b),
  ]) = _$ChronicleLinkScoresEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLinkScoresEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLinkScoresEvidence> get serializer =>
      _$ChronicleLinkScoresEvidenceSerializer();
}

class _$ChronicleLinkScoresEvidenceSerializer
    implements PrimitiveSerializer<ChronicleLinkScoresEvidence> {
  @override
  final Iterable<Type> types = const [
    ChronicleLinkScoresEvidence,
    _$ChronicleLinkScoresEvidence,
  ];

  @override
  final String wireName = r'ChronicleLinkScoresEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLinkScoresEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jaccard != null) {
      yield r'jaccard';
      yield serializers.serialize(
        object.jaccard,
        specifiedType: const FullType(num),
      );
    }
    if (object.containment != null) {
      yield r'containment';
      yield serializers.serialize(
        object.containment,
        specifiedType: const FullType(num),
      );
    }
    if (object.sharedEstimate != null) {
      yield r'sharedEstimate';
      yield serializers.serialize(
        object.sharedEstimate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLinkScoresEvidence object, {
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
    required ChronicleLinkScoresEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jaccard':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.jaccard = valueDes;
          break;
        case r'containment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.containment = valueDes;
          break;
        case r'sharedEstimate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.sharedEstimate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLinkScoresEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLinkScoresEvidenceBuilder();
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
