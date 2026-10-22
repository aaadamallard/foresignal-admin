//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/infra_rules_rules_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_rules.g.dart';

/// Dependency rules (versioned resource) with operator overrides stored in `app_setting['infra.rules']`
///
/// Properties:
/// * [version]
/// * [rules]
@BuiltValue()
abstract class InfraRules implements Built<InfraRules, InfraRulesBuilder> {
  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'rules')
  BuiltList<InfraRulesRulesInner> get rules;

  InfraRules._();

  factory InfraRules([void updates(InfraRulesBuilder b)]) = _$InfraRules;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraRulesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraRules> get serializer => _$InfraRulesSerializer();
}

class _$InfraRulesSerializer implements PrimitiveSerializer<InfraRules> {
  @override
  final Iterable<Type> types = const [InfraRules, _$InfraRules];

  @override
  final String wireName = r'InfraRules';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraRules object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType:
          const FullType(BuiltList, [FullType(InfraRulesRulesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraRules object, {
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
    required InfraRulesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(InfraRulesRulesInner)]),
          ) as BuiltList<InfraRulesRulesInner>;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraRules deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraRulesBuilder();
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
