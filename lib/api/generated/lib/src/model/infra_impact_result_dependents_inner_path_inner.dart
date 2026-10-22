//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_result_dependents_inner_path_inner.g.dart';

/// Edge on the path
///
/// Properties:
/// * [edgeId]
/// * [relation]
/// * [method]
/// * [label]
@BuiltValue()
abstract class InfraImpactResultDependentsInnerPathInner
    implements
        Built<InfraImpactResultDependentsInnerPathInner,
            InfraImpactResultDependentsInnerPathInnerBuilder> {
  @BuiltValueField(wireName: r'edgeId')
  int get edgeId;

  @BuiltValueField(wireName: r'relation')
  InfraImpactResultDependentsInnerPathInnerRelationEnum get relation;
  // enum relationEnum {  supplies_power,  transmits_power,  lands_at,  interconnects,  hosts,  serves,  };

  @BuiltValueField(wireName: r'method')
  InfraImpactResultDependentsInnerPathInnerMethodEnum get method;
  // enum methodEnum {  declared,  topological,  proximity,  inferred,  };

  @BuiltValueField(wireName: r'label')
  InfraImpactResultDependentsInnerPathInnerLabelEnum get label;
  // enum labelEnum {  confirmed,  likely,  possible,  speculative,  };

  InfraImpactResultDependentsInnerPathInner._();

  factory InfraImpactResultDependentsInnerPathInner(
          [void updates(InfraImpactResultDependentsInnerPathInnerBuilder b)]) =
      _$InfraImpactResultDependentsInnerPathInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactResultDependentsInnerPathInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactResultDependentsInnerPathInner> get serializer =>
      _$InfraImpactResultDependentsInnerPathInnerSerializer();
}

class _$InfraImpactResultDependentsInnerPathInnerSerializer
    implements PrimitiveSerializer<InfraImpactResultDependentsInnerPathInner> {
  @override
  final Iterable<Type> types = const [
    InfraImpactResultDependentsInnerPathInner,
    _$InfraImpactResultDependentsInnerPathInner
  ];

  @override
  final String wireName = r'InfraImpactResultDependentsInnerPathInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactResultDependentsInnerPathInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'edgeId';
    yield serializers.serialize(
      object.edgeId,
      specifiedType: const FullType(int),
    );
    yield r'relation';
    yield serializers.serialize(
      object.relation,
      specifiedType:
          const FullType(InfraImpactResultDependentsInnerPathInnerRelationEnum),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType:
          const FullType(InfraImpactResultDependentsInnerPathInnerMethodEnum),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType:
          const FullType(InfraImpactResultDependentsInnerPathInnerLabelEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactResultDependentsInnerPathInner object, {
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
    required InfraImpactResultDependentsInnerPathInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'edgeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.edgeId = valueDes;
          break;
        case r'relation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InfraImpactResultDependentsInnerPathInnerRelationEnum),
          ) as InfraImpactResultDependentsInnerPathInnerRelationEnum;
          result.relation = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InfraImpactResultDependentsInnerPathInnerMethodEnum),
          ) as InfraImpactResultDependentsInnerPathInnerMethodEnum;
          result.method = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InfraImpactResultDependentsInnerPathInnerLabelEnum),
          ) as InfraImpactResultDependentsInnerPathInnerLabelEnum;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactResultDependentsInnerPathInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactResultDependentsInnerPathInnerBuilder();
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

class InfraImpactResultDependentsInnerPathInnerRelationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supplies_power')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum
      suppliesPower =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_suppliesPower;
  @BuiltValueEnumConst(wireName: r'transmits_power')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum
      transmitsPower =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_transmitsPower;
  @BuiltValueEnumConst(wireName: r'lands_at')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum landsAt =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_landsAt;
  @BuiltValueEnumConst(wireName: r'interconnects')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum
      interconnects =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_interconnects;
  @BuiltValueEnumConst(wireName: r'hosts')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum hosts =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_hosts;
  @BuiltValueEnumConst(wireName: r'serves')
  static const InfraImpactResultDependentsInnerPathInnerRelationEnum serves =
      _$infraImpactResultDependentsInnerPathInnerRelationEnum_serves;

  static Serializer<InfraImpactResultDependentsInnerPathInnerRelationEnum>
      get serializer =>
          _$infraImpactResultDependentsInnerPathInnerRelationEnumSerializer;

  const InfraImpactResultDependentsInnerPathInnerRelationEnum._(String name)
      : super(name);

  static BuiltSet<InfraImpactResultDependentsInnerPathInnerRelationEnum>
      get values =>
          _$infraImpactResultDependentsInnerPathInnerRelationEnumValues;
  static InfraImpactResultDependentsInnerPathInnerRelationEnum valueOf(
          String name) =>
      _$infraImpactResultDependentsInnerPathInnerRelationEnumValueOf(name);
}

class InfraImpactResultDependentsInnerPathInnerMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'declared')
  static const InfraImpactResultDependentsInnerPathInnerMethodEnum declared =
      _$infraImpactResultDependentsInnerPathInnerMethodEnum_declared;
  @BuiltValueEnumConst(wireName: r'topological')
  static const InfraImpactResultDependentsInnerPathInnerMethodEnum topological =
      _$infraImpactResultDependentsInnerPathInnerMethodEnum_topological;
  @BuiltValueEnumConst(wireName: r'proximity')
  static const InfraImpactResultDependentsInnerPathInnerMethodEnum proximity =
      _$infraImpactResultDependentsInnerPathInnerMethodEnum_proximity;
  @BuiltValueEnumConst(wireName: r'inferred')
  static const InfraImpactResultDependentsInnerPathInnerMethodEnum inferred =
      _$infraImpactResultDependentsInnerPathInnerMethodEnum_inferred;

  static Serializer<InfraImpactResultDependentsInnerPathInnerMethodEnum>
      get serializer =>
          _$infraImpactResultDependentsInnerPathInnerMethodEnumSerializer;

  const InfraImpactResultDependentsInnerPathInnerMethodEnum._(String name)
      : super(name);

  static BuiltSet<InfraImpactResultDependentsInnerPathInnerMethodEnum>
      get values => _$infraImpactResultDependentsInnerPathInnerMethodEnumValues;
  static InfraImpactResultDependentsInnerPathInnerMethodEnum valueOf(
          String name) =>
      _$infraImpactResultDependentsInnerPathInnerMethodEnumValueOf(name);
}

class InfraImpactResultDependentsInnerPathInnerLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const InfraImpactResultDependentsInnerPathInnerLabelEnum confirmed =
      _$infraImpactResultDependentsInnerPathInnerLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const InfraImpactResultDependentsInnerPathInnerLabelEnum likely =
      _$infraImpactResultDependentsInnerPathInnerLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const InfraImpactResultDependentsInnerPathInnerLabelEnum possible =
      _$infraImpactResultDependentsInnerPathInnerLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const InfraImpactResultDependentsInnerPathInnerLabelEnum speculative =
      _$infraImpactResultDependentsInnerPathInnerLabelEnum_speculative;

  static Serializer<InfraImpactResultDependentsInnerPathInnerLabelEnum>
      get serializer =>
          _$infraImpactResultDependentsInnerPathInnerLabelEnumSerializer;

  const InfraImpactResultDependentsInnerPathInnerLabelEnum._(String name)
      : super(name);

  static BuiltSet<InfraImpactResultDependentsInnerPathInnerLabelEnum>
      get values => _$infraImpactResultDependentsInnerPathInnerLabelEnumValues;
  static InfraImpactResultDependentsInnerPathInnerLabelEnum valueOf(
          String name) =>
      _$infraImpactResultDependentsInnerPathInnerLabelEnumValueOf(name);
}
