//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recipe_backtest_result_overlap.g.dart';

/// Overlap with real events in range (matched by shared members)
///
/// Properties:
/// * [matched]
/// * [onlyBacktest]
/// * [onlyActual]
@BuiltValue()
abstract class RecipeBacktestResultOverlap
    implements
        Built<RecipeBacktestResultOverlap, RecipeBacktestResultOverlapBuilder> {
  @BuiltValueField(wireName: r'matched')
  int? get matched;

  @BuiltValueField(wireName: r'onlyBacktest')
  int? get onlyBacktest;

  @BuiltValueField(wireName: r'onlyActual')
  int? get onlyActual;

  RecipeBacktestResultOverlap._();

  factory RecipeBacktestResultOverlap([
    void updates(RecipeBacktestResultOverlapBuilder b),
  ]) = _$RecipeBacktestResultOverlap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecipeBacktestResultOverlapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecipeBacktestResultOverlap> get serializer =>
      _$RecipeBacktestResultOverlapSerializer();
}

class _$RecipeBacktestResultOverlapSerializer
    implements PrimitiveSerializer<RecipeBacktestResultOverlap> {
  @override
  final Iterable<Type> types = const [
    RecipeBacktestResultOverlap,
    _$RecipeBacktestResultOverlap,
  ];

  @override
  final String wireName = r'RecipeBacktestResultOverlap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecipeBacktestResultOverlap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matched != null) {
      yield r'matched';
      yield serializers.serialize(
        object.matched,
        specifiedType: const FullType(int),
      );
    }
    if (object.onlyBacktest != null) {
      yield r'onlyBacktest';
      yield serializers.serialize(
        object.onlyBacktest,
        specifiedType: const FullType(int),
      );
    }
    if (object.onlyActual != null) {
      yield r'onlyActual';
      yield serializers.serialize(
        object.onlyActual,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecipeBacktestResultOverlap object, {
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
    required RecipeBacktestResultOverlapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matched':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.matched = valueDes;
          break;
        case r'onlyBacktest':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.onlyBacktest = valueDes;
          break;
        case r'onlyActual':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.onlyActual = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecipeBacktestResultOverlap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecipeBacktestResultOverlapBuilder();
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
