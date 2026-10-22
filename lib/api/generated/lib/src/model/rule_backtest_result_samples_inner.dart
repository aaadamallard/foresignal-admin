//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_samples_inner.g.dart';

/// Sample hit
///
/// Properties:
/// * [seq]
/// * [source_]
/// * [externalId]
/// * [observedAt]
/// * [edge]
@BuiltValue()
abstract class RuleBacktestResultSamplesInner
    implements
        Built<
          RuleBacktestResultSamplesInner,
          RuleBacktestResultSamplesInnerBuilder
        > {
  @BuiltValueField(wireName: r'seq')
  int get seq;

  @BuiltValueField(wireName: r'source')
  String get source_;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'edge')
  RuleBacktestResultSamplesInnerEdgeEnum? get edge;
  // enum edgeEnum {  match,  enter,  exit,  window,  };

  RuleBacktestResultSamplesInner._();

  factory RuleBacktestResultSamplesInner([
    void updates(RuleBacktestResultSamplesInnerBuilder b),
  ]) = _$RuleBacktestResultSamplesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultSamplesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultSamplesInner> get serializer =>
      _$RuleBacktestResultSamplesInnerSerializer();
}

class _$RuleBacktestResultSamplesInnerSerializer
    implements PrimitiveSerializer<RuleBacktestResultSamplesInner> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultSamplesInner,
    _$RuleBacktestResultSamplesInner,
  ];

  @override
  final String wireName = r'RuleBacktestResultSamplesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultSamplesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.edge != null) {
      yield r'edge';
      yield serializers.serialize(
        object.edge,
        specifiedType: const FullType(RuleBacktestResultSamplesInnerEdgeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultSamplesInner object, {
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
    required RuleBacktestResultSamplesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.source_ = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'edge':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RuleBacktestResultSamplesInnerEdgeEnum,
                    ),
                  )
                  as RuleBacktestResultSamplesInnerEdgeEnum?;
          if (valueDes == null) continue;
          result.edge = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultSamplesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultSamplesInnerBuilder();
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

class RuleBacktestResultSamplesInnerEdgeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'match')
  static const RuleBacktestResultSamplesInnerEdgeEnum match =
      _$ruleBacktestResultSamplesInnerEdgeEnum_match;
  @BuiltValueEnumConst(wireName: r'enter')
  static const RuleBacktestResultSamplesInnerEdgeEnum enter =
      _$ruleBacktestResultSamplesInnerEdgeEnum_enter;
  @BuiltValueEnumConst(wireName: r'exit')
  static const RuleBacktestResultSamplesInnerEdgeEnum exit =
      _$ruleBacktestResultSamplesInnerEdgeEnum_exit;
  @BuiltValueEnumConst(wireName: r'window')
  static const RuleBacktestResultSamplesInnerEdgeEnum window =
      _$ruleBacktestResultSamplesInnerEdgeEnum_window;

  static Serializer<RuleBacktestResultSamplesInnerEdgeEnum> get serializer =>
      _$ruleBacktestResultSamplesInnerEdgeEnumSerializer;

  const RuleBacktestResultSamplesInnerEdgeEnum._(String name) : super(name);

  static BuiltSet<RuleBacktestResultSamplesInnerEdgeEnum> get values =>
      _$ruleBacktestResultSamplesInnerEdgeEnumValues;
  static RuleBacktestResultSamplesInnerEdgeEnum valueOf(String name) =>
      _$ruleBacktestResultSamplesInnerEdgeEnumValueOf(name);
}
