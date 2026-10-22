//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_evaluation_profiles_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_evaluation.g.dart';

/// Per-profile evaluation aggregates since a time
///
/// Properties:
/// * [since]
/// * [profiles]
@BuiltValue()
abstract class AnalystEvaluation
    implements Built<AnalystEvaluation, AnalystEvaluationBuilder> {
  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'profiles')
  BuiltList<AnalystEvaluationProfilesInner> get profiles;

  AnalystEvaluation._();

  factory AnalystEvaluation([void updates(AnalystEvaluationBuilder b)]) =
      _$AnalystEvaluation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystEvaluationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystEvaluation> get serializer =>
      _$AnalystEvaluationSerializer();
}

class _$AnalystEvaluationSerializer
    implements PrimitiveSerializer<AnalystEvaluation> {
  @override
  final Iterable<Type> types = const [AnalystEvaluation, _$AnalystEvaluation];

  @override
  final String wireName = r'AnalystEvaluation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystEvaluation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'profiles';
    yield serializers.serialize(
      object.profiles,
      specifiedType: const FullType(BuiltList, [
        FullType(AnalystEvaluationProfilesInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystEvaluation object, {
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
    required AnalystEvaluationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'since':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.since = valueDes;
          break;
        case r'profiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AnalystEvaluationProfilesInner),
                    ]),
                  )
                  as BuiltList<AnalystEvaluationProfilesInner>;
          result.profiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystEvaluation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystEvaluationBuilder();
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
