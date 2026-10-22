//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ach_matrix_hypotheses_inner.g.dart';

/// Matrix column
///
/// Properties:
/// * [id] - ULID identifier
/// * [label]
/// * [probability]
/// * [estimativeTerm]
/// * [inconsistencyScore] - −Σ w·inc (I = 1, II = 2)
@BuiltValue()
abstract class AchMatrixHypothesesInner
    implements
        Built<AchMatrixHypothesesInner, AchMatrixHypothesesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'probability')
  num get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  /// −Σ w·inc (I = 1, II = 2)
  @BuiltValueField(wireName: r'inconsistencyScore')
  num get inconsistencyScore;

  AchMatrixHypothesesInner._();

  factory AchMatrixHypothesesInner([
    void updates(AchMatrixHypothesesInnerBuilder b),
  ]) = _$AchMatrixHypothesesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AchMatrixHypothesesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AchMatrixHypothesesInner> get serializer =>
      _$AchMatrixHypothesesInnerSerializer();
}

class _$AchMatrixHypothesesInnerSerializer
    implements PrimitiveSerializer<AchMatrixHypothesesInner> {
  @override
  final Iterable<Type> types = const [
    AchMatrixHypothesesInner,
    _$AchMatrixHypothesesInner,
  ];

  @override
  final String wireName = r'AchMatrixHypothesesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AchMatrixHypothesesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'probability';
    yield serializers.serialize(
      object.probability,
      specifiedType: const FullType(num),
    );
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType(IcdTerm),
      );
    }
    yield r'inconsistencyScore';
    yield serializers.serialize(
      object.inconsistencyScore,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AchMatrixHypothesesInner object, {
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
    required AchMatrixHypothesesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        case r'inconsistencyScore':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.inconsistencyScore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AchMatrixHypothesesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AchMatrixHypothesesInnerBuilder();
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
