//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_rules_rules_inner.g.dart';

/// One rule
///
/// Properties:
/// * [id]
/// * [enabled]
/// * [method]
/// * [relation]
/// * [label]
/// * [params] - Overridable parameters (radii, distances)
@BuiltValue()
abstract class InfraRulesRulesInner
    implements Built<InfraRulesRulesInner, InfraRulesRulesInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  InfraRulesRulesInnerIdEnum get id;
  // enum idEnum {  cable-landing,  ixp-facility,  line-substation,  plant-substation,  substation-critical-load,  airport-port-serves,  };

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'method')
  InfraRulesRulesInnerMethodEnum? get method;
  // enum methodEnum {  declared,  topological,  proximity,  inferred,  };

  @BuiltValueField(wireName: r'relation')
  InfraRulesRulesInnerRelationEnum? get relation;
  // enum relationEnum {  supplies_power,  transmits_power,  lands_at,  interconnects,  hosts,  serves,  };

  @BuiltValueField(wireName: r'label')
  InfraRulesRulesInnerLabelEnum? get label;
  // enum labelEnum {  confirmed,  likely,  possible,  speculative,  };

  /// Overridable parameters (radii, distances)
  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  InfraRulesRulesInner._();

  factory InfraRulesRulesInner([void updates(InfraRulesRulesInnerBuilder b)]) =
      _$InfraRulesRulesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraRulesRulesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraRulesRulesInner> get serializer =>
      _$InfraRulesRulesInnerSerializer();
}

class _$InfraRulesRulesInnerSerializer
    implements PrimitiveSerializer<InfraRulesRulesInner> {
  @override
  final Iterable<Type> types = const [
    InfraRulesRulesInner,
    _$InfraRulesRulesInner
  ];

  @override
  final String wireName = r'InfraRulesRulesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraRulesRulesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(InfraRulesRulesInnerIdEnum),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(InfraRulesRulesInnerMethodEnum),
      );
    }
    if (object.relation != null) {
      yield r'relation';
      yield serializers.serialize(
        object.relation,
        specifiedType: const FullType(InfraRulesRulesInnerRelationEnum),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(InfraRulesRulesInnerLabelEnum),
      );
    }
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraRulesRulesInner object, {
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
    required InfraRulesRulesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InfraRulesRulesInnerIdEnum),
          ) as InfraRulesRulesInnerIdEnum;
          result.id = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(InfraRulesRulesInnerMethodEnum),
          ) as InfraRulesRulesInnerMethodEnum?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'relation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(InfraRulesRulesInnerRelationEnum),
          ) as InfraRulesRulesInnerRelationEnum?;
          if (valueDes == null) continue;
          result.relation = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(InfraRulesRulesInnerLabelEnum),
          ) as InfraRulesRulesInnerLabelEnum?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'params':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraRulesRulesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraRulesRulesInnerBuilder();
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

class InfraRulesRulesInnerIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cable-landing')
  static const InfraRulesRulesInnerIdEnum cableLanding =
      _$infraRulesRulesInnerIdEnum_cableLanding;
  @BuiltValueEnumConst(wireName: r'ixp-facility')
  static const InfraRulesRulesInnerIdEnum ixpFacility =
      _$infraRulesRulesInnerIdEnum_ixpFacility;
  @BuiltValueEnumConst(wireName: r'line-substation')
  static const InfraRulesRulesInnerIdEnum lineSubstation =
      _$infraRulesRulesInnerIdEnum_lineSubstation;
  @BuiltValueEnumConst(wireName: r'plant-substation')
  static const InfraRulesRulesInnerIdEnum plantSubstation =
      _$infraRulesRulesInnerIdEnum_plantSubstation;
  @BuiltValueEnumConst(wireName: r'substation-critical-load')
  static const InfraRulesRulesInnerIdEnum substationCriticalLoad =
      _$infraRulesRulesInnerIdEnum_substationCriticalLoad;
  @BuiltValueEnumConst(wireName: r'airport-port-serves')
  static const InfraRulesRulesInnerIdEnum airportPortServes =
      _$infraRulesRulesInnerIdEnum_airportPortServes;

  static Serializer<InfraRulesRulesInnerIdEnum> get serializer =>
      _$infraRulesRulesInnerIdEnumSerializer;

  const InfraRulesRulesInnerIdEnum._(String name) : super(name);

  static BuiltSet<InfraRulesRulesInnerIdEnum> get values =>
      _$infraRulesRulesInnerIdEnumValues;
  static InfraRulesRulesInnerIdEnum valueOf(String name) =>
      _$infraRulesRulesInnerIdEnumValueOf(name);
}

class InfraRulesRulesInnerMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'declared')
  static const InfraRulesRulesInnerMethodEnum declared =
      _$infraRulesRulesInnerMethodEnum_declared;
  @BuiltValueEnumConst(wireName: r'topological')
  static const InfraRulesRulesInnerMethodEnum topological =
      _$infraRulesRulesInnerMethodEnum_topological;
  @BuiltValueEnumConst(wireName: r'proximity')
  static const InfraRulesRulesInnerMethodEnum proximity =
      _$infraRulesRulesInnerMethodEnum_proximity;
  @BuiltValueEnumConst(wireName: r'inferred')
  static const InfraRulesRulesInnerMethodEnum inferred =
      _$infraRulesRulesInnerMethodEnum_inferred;

  static Serializer<InfraRulesRulesInnerMethodEnum> get serializer =>
      _$infraRulesRulesInnerMethodEnumSerializer;

  const InfraRulesRulesInnerMethodEnum._(String name) : super(name);

  static BuiltSet<InfraRulesRulesInnerMethodEnum> get values =>
      _$infraRulesRulesInnerMethodEnumValues;
  static InfraRulesRulesInnerMethodEnum valueOf(String name) =>
      _$infraRulesRulesInnerMethodEnumValueOf(name);
}

class InfraRulesRulesInnerRelationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supplies_power')
  static const InfraRulesRulesInnerRelationEnum suppliesPower =
      _$infraRulesRulesInnerRelationEnum_suppliesPower;
  @BuiltValueEnumConst(wireName: r'transmits_power')
  static const InfraRulesRulesInnerRelationEnum transmitsPower =
      _$infraRulesRulesInnerRelationEnum_transmitsPower;
  @BuiltValueEnumConst(wireName: r'lands_at')
  static const InfraRulesRulesInnerRelationEnum landsAt =
      _$infraRulesRulesInnerRelationEnum_landsAt;
  @BuiltValueEnumConst(wireName: r'interconnects')
  static const InfraRulesRulesInnerRelationEnum interconnects =
      _$infraRulesRulesInnerRelationEnum_interconnects;
  @BuiltValueEnumConst(wireName: r'hosts')
  static const InfraRulesRulesInnerRelationEnum hosts =
      _$infraRulesRulesInnerRelationEnum_hosts;
  @BuiltValueEnumConst(wireName: r'serves')
  static const InfraRulesRulesInnerRelationEnum serves =
      _$infraRulesRulesInnerRelationEnum_serves;

  static Serializer<InfraRulesRulesInnerRelationEnum> get serializer =>
      _$infraRulesRulesInnerRelationEnumSerializer;

  const InfraRulesRulesInnerRelationEnum._(String name) : super(name);

  static BuiltSet<InfraRulesRulesInnerRelationEnum> get values =>
      _$infraRulesRulesInnerRelationEnumValues;
  static InfraRulesRulesInnerRelationEnum valueOf(String name) =>
      _$infraRulesRulesInnerRelationEnumValueOf(name);
}

class InfraRulesRulesInnerLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const InfraRulesRulesInnerLabelEnum confirmed =
      _$infraRulesRulesInnerLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const InfraRulesRulesInnerLabelEnum likely =
      _$infraRulesRulesInnerLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const InfraRulesRulesInnerLabelEnum possible =
      _$infraRulesRulesInnerLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const InfraRulesRulesInnerLabelEnum speculative =
      _$infraRulesRulesInnerLabelEnum_speculative;

  static Serializer<InfraRulesRulesInnerLabelEnum> get serializer =>
      _$infraRulesRulesInnerLabelEnumSerializer;

  const InfraRulesRulesInnerLabelEnum._(String name) : super(name);

  static BuiltSet<InfraRulesRulesInnerLabelEnum> get values =>
      _$infraRulesRulesInnerLabelEnumValues;
  static InfraRulesRulesInnerLabelEnum valueOf(String name) =>
      _$infraRulesRulesInnerLabelEnumValueOf(name);
}
