//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'digest_alerts_by_rule_inner.g.dart';

/// Counts per rule
///
/// Properties:
/// * [ruleId]
/// * [ruleName]
/// * [count]
@BuiltValue()
abstract class DigestAlertsByRuleInner
    implements Built<DigestAlertsByRuleInner, DigestAlertsByRuleInnerBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'ruleName')
  String? get ruleName;

  @BuiltValueField(wireName: r'count')
  int get count;

  DigestAlertsByRuleInner._();

  factory DigestAlertsByRuleInner([
    void updates(DigestAlertsByRuleInnerBuilder b),
  ]) = _$DigestAlertsByRuleInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DigestAlertsByRuleInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DigestAlertsByRuleInner> get serializer =>
      _$DigestAlertsByRuleInnerSerializer();
}

class _$DigestAlertsByRuleInnerSerializer
    implements PrimitiveSerializer<DigestAlertsByRuleInner> {
  @override
  final Iterable<Type> types = const [
    DigestAlertsByRuleInner,
    _$DigestAlertsByRuleInner,
  ];

  @override
  final String wireName = r'DigestAlertsByRuleInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DigestAlertsByRuleInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    if (object.ruleName != null) {
      yield r'ruleName';
      yield serializers.serialize(
        object.ruleName,
        specifiedType: const FullType(String),
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
    DigestAlertsByRuleInner object, {
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
    required DigestAlertsByRuleInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'ruleName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ruleName = valueDes;
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
  DigestAlertsByRuleInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DigestAlertsByRuleInnerBuilder();
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
