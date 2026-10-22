//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'problem_references.g.dart';

/// PLACE_IN_USE (036): the rules, views and briefings that reference the place
///
/// Properties:
/// * [rules]
/// * [views]
/// * [briefings]
@BuiltValue()
abstract class ProblemReferences
    implements Built<ProblemReferences, ProblemReferencesBuilder> {
  @BuiltValueField(wireName: r'rules')
  BuiltList<String>? get rules;

  @BuiltValueField(wireName: r'views')
  BuiltList<String>? get views;

  @BuiltValueField(wireName: r'briefings')
  BuiltList<String>? get briefings;

  ProblemReferences._();

  factory ProblemReferences([void updates(ProblemReferencesBuilder b)]) =
      _$ProblemReferences;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProblemReferencesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProblemReferences> get serializer =>
      _$ProblemReferencesSerializer();
}

class _$ProblemReferencesSerializer
    implements PrimitiveSerializer<ProblemReferences> {
  @override
  final Iterable<Type> types = const [ProblemReferences, _$ProblemReferences];

  @override
  final String wireName = r'ProblemReferences';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProblemReferences object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.views != null) {
      yield r'views';
      yield serializers.serialize(
        object.views,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.briefings != null) {
      yield r'briefings';
      yield serializers.serialize(
        object.briefings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProblemReferences object, {
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
    required ProblemReferencesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rules':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.rules.replace(valueDes);
          break;
        case r'views':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.views.replace(valueDes);
          break;
        case r'briefings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.briefings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProblemReferences deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProblemReferencesBuilder();
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
