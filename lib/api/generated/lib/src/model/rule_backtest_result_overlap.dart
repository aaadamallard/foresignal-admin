//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_overlap.g.dart';

/// Overlap with what really happened
///
/// Properties:
/// * [both]
/// * [onlyBacktest]
/// * [onlyActual]
@BuiltValue()
abstract class RuleBacktestResultOverlap
    implements
        Built<RuleBacktestResultOverlap, RuleBacktestResultOverlapBuilder> {
  @BuiltValueField(wireName: r'both')
  int? get both;

  @BuiltValueField(wireName: r'onlyBacktest')
  int? get onlyBacktest;

  @BuiltValueField(wireName: r'onlyActual')
  int? get onlyActual;

  RuleBacktestResultOverlap._();

  factory RuleBacktestResultOverlap([
    void updates(RuleBacktestResultOverlapBuilder b),
  ]) = _$RuleBacktestResultOverlap;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultOverlapBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultOverlap> get serializer =>
      _$RuleBacktestResultOverlapSerializer();
}

class _$RuleBacktestResultOverlapSerializer
    implements PrimitiveSerializer<RuleBacktestResultOverlap> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultOverlap,
    _$RuleBacktestResultOverlap,
  ];

  @override
  final String wireName = r'RuleBacktestResultOverlap';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultOverlap object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.both != null) {
      yield r'both';
      yield serializers.serialize(
        object.both,
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
    RuleBacktestResultOverlap object, {
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
    required RuleBacktestResultOverlapBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'both':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.both = valueDes;
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
  RuleBacktestResultOverlap deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultOverlapBuilder();
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
