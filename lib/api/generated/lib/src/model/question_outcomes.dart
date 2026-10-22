//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_outcomes.g.dart';

/// Outcome space: labels for multiple/ordered questions, unit and bounds for numeric
///
/// Properties:
/// * [labels] - Multiple (unordered) or ordered labels, in order
/// * [unit]
/// * [lower]
/// * [upper]
@BuiltValue()
abstract class QuestionOutcomes
    implements Built<QuestionOutcomes, QuestionOutcomesBuilder> {
  /// Multiple (unordered) or ordered labels, in order
  @BuiltValueField(wireName: r'labels')
  BuiltList<String>? get labels;

  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'lower')
  num? get lower;

  @BuiltValueField(wireName: r'upper')
  num? get upper;

  QuestionOutcomes._();

  factory QuestionOutcomes([void updates(QuestionOutcomesBuilder b)]) =
      _$QuestionOutcomes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionOutcomesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionOutcomes> get serializer =>
      _$QuestionOutcomesSerializer();
}

class _$QuestionOutcomesSerializer
    implements PrimitiveSerializer<QuestionOutcomes> {
  @override
  final Iterable<Type> types = const [QuestionOutcomes, _$QuestionOutcomes];

  @override
  final String wireName = r'QuestionOutcomes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionOutcomes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.labels != null) {
      yield r'labels';
      yield serializers.serialize(
        object.labels,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lower != null) {
      yield r'lower';
      yield serializers.serialize(
        object.lower,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.upper != null) {
      yield r'upper';
      yield serializers.serialize(
        object.upper,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionOutcomes object, {
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
    required QuestionOutcomesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'labels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.labels.replace(valueDes);
          break;
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.unit = valueDes;
          break;
        case r'lower':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.upper = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionOutcomes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionOutcomesBuilder();
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
