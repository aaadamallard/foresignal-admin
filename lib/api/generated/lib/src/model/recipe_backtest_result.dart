//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/recipe_backtest_result_overlap.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/recipe_backtest_result_events_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_backtest_result.g.dart';

/// Events a recipe would have formed over the range (dry run with simulated dedup and lifecycle)
///
/// Properties:
/// * [recipeId]
/// * [recipeVersion]
/// * [events]
/// * [countsByType]
/// * [overlap]
@BuiltValue()
abstract class RecipeBacktestResult
    implements Built<RecipeBacktestResult, RecipeBacktestResultBuilder> {
  @BuiltValueField(wireName: r'recipeId')
  String get recipeId;

  @BuiltValueField(wireName: r'recipeVersion')
  int? get recipeVersion;

  @BuiltValueField(wireName: r'events')
  BuiltList<RecipeBacktestResultEventsInner> get events;

  @BuiltValueField(wireName: r'countsByType')
  BuiltMap<String, int>? get countsByType;

  @BuiltValueField(wireName: r'overlap')
  RecipeBacktestResultOverlap? get overlap;

  RecipeBacktestResult._();

  factory RecipeBacktestResult([void updates(RecipeBacktestResultBuilder b)]) =
      _$RecipeBacktestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeBacktestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeBacktestResult> get serializer =>
      _$RecipeBacktestResultSerializer();
}

class _$RecipeBacktestResultSerializer
    implements PrimitiveSerializer<RecipeBacktestResult> {
  @override
  final Iterable<Type> types = const [
    RecipeBacktestResult,
    _$RecipeBacktestResult
  ];

  @override
  final String wireName = r'RecipeBacktestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeBacktestResult object, {
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
    yield r'events';
    yield serializers.serialize(
      object.events,
      specifiedType: const FullType(
          BuiltList, [FullType(RecipeBacktestResultEventsInner)]),
    );
    if (object.countsByType != null) {
      yield r'countsByType';
      yield serializers.serialize(
        object.countsByType,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.overlap != null) {
      yield r'overlap';
      yield serializers.serialize(
        object.overlap,
        specifiedType: const FullType(RecipeBacktestResultOverlap),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeBacktestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecipeBacktestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recipeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipeId = valueDes;
          break;
        case r'recipeVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.recipeVersion = valueDes;
          break;
        case r'events':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(RecipeBacktestResultEventsInner)]),
          ) as BuiltList<RecipeBacktestResultEventsInner>;
          result.events.replace(valueDes);
          break;
        case r'countsByType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.countsByType.replace(valueDes);
          break;
        case r'overlap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecipeBacktestResultOverlap),
          ) as RecipeBacktestResultOverlap?;
          if (valueDes == null) continue;
          result.overlap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecipeBacktestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeBacktestResultBuilder();
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
