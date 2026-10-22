//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/rule_backtest_result_overlap.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/rule_backtest_result_per_day_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_variants_inner.g.dart';

/// Result of one variant
///
/// Properties:
/// * [index]
/// * [patch_]
/// * [wouldFire]
/// * [perDay]
/// * [overlap]
@BuiltValue()
abstract class RuleBacktestResultVariantsInner
    implements
        Built<
          RuleBacktestResultVariantsInner,
          RuleBacktestResultVariantsInnerBuilder
        > {
  @BuiltValueField(wireName: r'index')
  int get index;

  @BuiltValueField(wireName: r'patch')
  BuiltMap<String, JsonObject?> get patch_;

  @BuiltValueField(wireName: r'wouldFire')
  int get wouldFire;

  @BuiltValueField(wireName: r'perDay')
  BuiltList<RuleBacktestResultPerDayInner>? get perDay;

  @BuiltValueField(wireName: r'overlap')
  RuleBacktestResultOverlap? get overlap;

  RuleBacktestResultVariantsInner._();

  factory RuleBacktestResultVariantsInner([
    void updates(RuleBacktestResultVariantsInnerBuilder b),
  ]) = _$RuleBacktestResultVariantsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultVariantsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultVariantsInner> get serializer =>
      _$RuleBacktestResultVariantsInnerSerializer();
}

class _$RuleBacktestResultVariantsInnerSerializer
    implements PrimitiveSerializer<RuleBacktestResultVariantsInner> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultVariantsInner,
    _$RuleBacktestResultVariantsInner,
  ];

  @override
  final String wireName = r'RuleBacktestResultVariantsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultVariantsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    yield r'patch';
    yield serializers.serialize(
      object.patch_,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    yield r'wouldFire';
    yield serializers.serialize(
      object.wouldFire,
      specifiedType: const FullType(int),
    );
    if (object.perDay != null) {
      yield r'perDay';
      yield serializers.serialize(
        object.perDay,
        specifiedType: const FullType(BuiltList, [
          FullType(RuleBacktestResultPerDayInner),
        ]),
      );
    }
    if (object.overlap != null) {
      yield r'overlap';
      yield serializers.serialize(
        object.overlap,
        specifiedType: const FullType(RuleBacktestResultOverlap),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultVariantsInner object, {
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
    required RuleBacktestResultVariantsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.index = valueDes;
          break;
        case r'patch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.patch_.replace(valueDes);
          break;
        case r'wouldFire':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.wouldFire = valueDes;
          break;
        case r'perDay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RuleBacktestResultPerDayInner),
                    ]),
                  )
                  as BuiltList<RuleBacktestResultPerDayInner>?;
          if (valueDes == null) continue;
          result.perDay.replace(valueDes);
          break;
        case r'overlap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultOverlap,
                    ),
                  )
                  as RuleBacktestResultOverlap?;
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
  RuleBacktestResultVariantsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultVariantsInnerBuilder();
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
