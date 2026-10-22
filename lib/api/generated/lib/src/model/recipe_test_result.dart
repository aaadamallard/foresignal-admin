//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/intelligence_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_test_result.g.dart';

/// Would-be events from an in-memory dry run (larger runs are 103 backtests)
///
/// Properties:
/// * [recipeId]
/// * [recipeVersion]
/// * [fromSeq]
/// * [toSeq]
/// * [events]
/// * [truncated]
@BuiltValue()
abstract class RecipeTestResult
    implements Built<RecipeTestResult, RecipeTestResultBuilder> {
  @BuiltValueField(wireName: r'recipeId')
  String get recipeId;

  @BuiltValueField(wireName: r'recipeVersion')
  int? get recipeVersion;

  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  @BuiltValueField(wireName: r'events')
  BuiltList<IntelligenceEvent> get events;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  RecipeTestResult._();

  factory RecipeTestResult([void updates(RecipeTestResultBuilder b)]) =
      _$RecipeTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeTestResult> get serializer =>
      _$RecipeTestResultSerializer();
}

class _$RecipeTestResultSerializer
    implements PrimitiveSerializer<RecipeTestResult> {
  @override
  final Iterable<Type> types = const [RecipeTestResult, _$RecipeTestResult];

  @override
  final String wireName = r'RecipeTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'recipeId';
    yield serializers.serialize(
      object.recipeId,
      specifiedType: const FullType(String),
    );
    if (object.recipeVersion != null) {
      yield r'recipeVersion';
      yield serializers.serialize(
        object.recipeVersion,
        specifiedType: const FullType(int),
      );
    }
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(BuiltList, [FullType(IntelligenceEvent)]),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeTestResult object, {
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
    required RecipeTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recipeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.recipeId = valueDes;
          break;
        case r'recipeVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.recipeVersion = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toSeq = valueDes;
          break;
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(IntelligenceEvent),
                    ]),
                  )
                  as BuiltList<IntelligenceEvent>;
          result.events.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecipeTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeTestResultBuilder();
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
