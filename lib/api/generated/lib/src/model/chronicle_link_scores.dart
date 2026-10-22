//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_link_scores_evidence.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_link_scores.g.dart';

/// Per key type overlap
///
/// Properties:
/// * [evidence]
/// * [entities]
/// * [areaTime]
/// * [topics]
@BuiltValue()
abstract class ChronicleLinkScores
    implements Built<ChronicleLinkScores, ChronicleLinkScoresBuilder> {
  @BuiltValueField(wireName: r'evidence')
  ChronicleLinkScoresEvidence? get evidence;

  @BuiltValueField(wireName: r'entities')
  ChronicleLinkScoresEvidence? get entities;

  @BuiltValueField(wireName: r'area-time')
  ChronicleLinkScoresEvidence? get areaTime;

  @BuiltValueField(wireName: r'topics')
  ChronicleLinkScoresEvidence? get topics;

  ChronicleLinkScores._();

  factory ChronicleLinkScores([void updates(ChronicleLinkScoresBuilder b)]) =
      _$ChronicleLinkScores;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLinkScoresBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLinkScores> get serializer =>
      _$ChronicleLinkScoresSerializer();
}

class _$ChronicleLinkScoresSerializer
    implements PrimitiveSerializer<ChronicleLinkScores> {
  @override
  final Iterable<Type> types = const [
    ChronicleLinkScores,
    _$ChronicleLinkScores,
  ];

  @override
  final String wireName = r'ChronicleLinkScores';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLinkScores object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType(ChronicleLinkScoresEvidence),
      );
    }
    if (object.entities != null) {
      yield r'entities';
      yield serializers.serialize(
        object.entities,
        specifiedType: const FullType(ChronicleLinkScoresEvidence),
      );
    }
    if (object.areaTime != null) {
      yield r'area-time';
      yield serializers.serialize(
        object.areaTime,
        specifiedType: const FullType(ChronicleLinkScoresEvidence),
      );
    }
    if (object.topics != null) {
      yield r'topics';
      yield serializers.serialize(
        object.topics,
        specifiedType: const FullType(ChronicleLinkScoresEvidence),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLinkScores object, {
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
    required ChronicleLinkScoresBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleLinkScoresEvidence,
                    ),
                  )
                  as ChronicleLinkScoresEvidence?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'entities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleLinkScoresEvidence,
                    ),
                  )
                  as ChronicleLinkScoresEvidence?;
          if (valueDes == null) continue;
          result.entities.replace(valueDes);
          break;
        case r'area-time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleLinkScoresEvidence,
                    ),
                  )
                  as ChronicleLinkScoresEvidence?;
          if (valueDes == null) continue;
          result.areaTime.replace(valueDes);
          break;
        case r'topics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleLinkScoresEvidence,
                    ),
                  )
                  as ChronicleLinkScoresEvidence?;
          if (valueDes == null) continue;
          result.topics.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLinkScores deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLinkScoresBuilder();
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
