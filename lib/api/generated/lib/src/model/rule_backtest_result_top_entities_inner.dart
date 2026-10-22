//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rule_backtest_result_top_entities_inner.g.dart';

/// Entity with the most hits
///
/// Properties:
/// * [sourceId]
/// * [externalId]
/// * [entityId]
/// * [count]
@BuiltValue()
abstract class RuleBacktestResultTopEntitiesInner
    implements
        Built<
          RuleBacktestResultTopEntitiesInner,
          RuleBacktestResultTopEntitiesInnerBuilder
        > {
  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String? get externalId;

  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  @BuiltValueField(wireName: r'count')
  int get count;

  RuleBacktestResultTopEntitiesInner._();

  factory RuleBacktestResultTopEntitiesInner([
    void updates(RuleBacktestResultTopEntitiesInnerBuilder b),
  ]) = _$RuleBacktestResultTopEntitiesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RuleBacktestResultTopEntitiesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RuleBacktestResultTopEntitiesInner> get serializer =>
      _$RuleBacktestResultTopEntitiesInnerSerializer();
}

class _$RuleBacktestResultTopEntitiesInnerSerializer
    implements PrimitiveSerializer<RuleBacktestResultTopEntitiesInner> {
  @override
  final Iterable<Type> types = const [
    RuleBacktestResultTopEntitiesInner,
    _$RuleBacktestResultTopEntitiesInner,
  ];

  @override
  final String wireName = r'RuleBacktestResultTopEntitiesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RuleBacktestResultTopEntitiesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.externalId != null) {
      yield r'externalId';
      yield serializers.serialize(
        object.externalId,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RuleBacktestResultTopEntitiesInner object, {
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
    required RuleBacktestResultTopEntitiesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.externalId = valueDes;
          break;
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'count':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RuleBacktestResultTopEntitiesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RuleBacktestResultTopEntitiesInnerBuilder();
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
