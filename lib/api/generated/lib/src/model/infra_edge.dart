//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/infra_edge_evidence.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_edge.g.dart';

/// A typed dependency edge that states how it is known: method, label (proximity never better than possible), rule version, parameters and evidence
///
/// Properties:
/// * [id]
/// * [fromNode]
/// * [toNode]
/// * [relation]
/// * [method]
/// * [label]
/// * [score]
/// * [ruleId]
/// * [ruleVersion]
/// * [params] - Rule parameters used
/// * [evidence]
/// * [licence] - Most restrictive input licence (ODbL-1.0 for OSM-derived edges)
/// * [builtAt]
@BuiltValue()
abstract class InfraEdge implements Built<InfraEdge, InfraEdgeBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'fromNode')
  int get fromNode;

  @BuiltValueField(wireName: r'toNode')
  int get toNode;

  @BuiltValueField(wireName: r'relation')
  InfraEdgeRelationEnum get relation;
  // enum relationEnum {  supplies_power,  transmits_power,  lands_at,  interconnects,  hosts,  serves,  };

  @BuiltValueField(wireName: r'method')
  InfraEdgeMethodEnum get method;
  // enum methodEnum {  declared,  topological,  proximity,  inferred,  };

  @BuiltValueField(wireName: r'label')
  InfraEdgeLabelEnum get label;
  // enum labelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'score')
  num get score;

  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'ruleVersion')
  String get ruleVersion;

  /// Rule parameters used
  @BuiltValueField(wireName: r'params')
  BuiltMap<String, JsonObject?>? get params;

  @BuiltValueField(wireName: r'evidence')
  InfraEdgeEvidence? get evidence;

  /// Most restrictive input licence (ODbL-1.0 for OSM-derived edges)
  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'builtAt')
  DateTime? get builtAt;

  InfraEdge._();

  factory InfraEdge([void updates(InfraEdgeBuilder b)]) = _$InfraEdge;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraEdgeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraEdge> get serializer => _$InfraEdgeSerializer();
}

class _$InfraEdgeSerializer implements PrimitiveSerializer<InfraEdge> {
  @override
  final Iterable<Type> types = const [InfraEdge, _$InfraEdge];

  @override
  final String wireName = r'InfraEdge';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraEdge object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'fromNode';
    yield serializers.serialize(
      object.fromNode,
      specifiedType: const FullType(int),
    );
    yield r'toNode';
    yield serializers.serialize(
      object.toNode,
      specifiedType: const FullType(int),
    );
    yield r'relation';
    yield serializers.serialize(
      object.relation,
      specifiedType: const FullType(InfraEdgeRelationEnum),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(InfraEdgeMethodEnum),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(InfraEdgeLabelEnum),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'ruleVersion';
    yield serializers.serialize(
      object.ruleVersion,
      specifiedType: const FullType(String),
    );
    if (object.params != null) {
      yield r'params';
      yield serializers.serialize(
        object.params,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.evidence != null) {
      yield r'evidence';
      yield serializers.serialize(
        object.evidence,
        specifiedType: const FullType(InfraEdgeEvidence),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    if (object.builtAt != null) {
      yield r'builtAt';
      yield serializers.serialize(
        object.builtAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraEdge object, {
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
    required InfraEdgeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'fromNode':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromNode = valueDes;
          break;
        case r'toNode':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toNode = valueDes;
          break;
        case r'relation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraEdgeRelationEnum),
                  )
                  as InfraEdgeRelationEnum;
          result.relation = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraEdgeMethodEnum),
                  )
                  as InfraEdgeMethodEnum;
          result.method = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraEdgeLabelEnum),
                  )
                  as InfraEdgeLabelEnum;
          result.label = valueDes;
          break;
        case r'score':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.score = valueDes;
          break;
        case r'ruleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleId = valueDes;
          break;
        case r'ruleVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ruleVersion = valueDes;
          break;
        case r'params':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.params.replace(valueDes);
          break;
        case r'evidence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(InfraEdgeEvidence),
                  )
                  as InfraEdgeEvidence?;
          if (valueDes == null) continue;
          result.evidence.replace(valueDes);
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.licence = valueDes;
          break;
        case r'builtAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.builtAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraEdge deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraEdgeBuilder();
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

class InfraEdgeRelationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'supplies_power')
  static const InfraEdgeRelationEnum suppliesPower =
      _$infraEdgeRelationEnum_suppliesPower;
  @BuiltValueEnumConst(wireName: r'transmits_power')
  static const InfraEdgeRelationEnum transmitsPower =
      _$infraEdgeRelationEnum_transmitsPower;
  @BuiltValueEnumConst(wireName: r'lands_at')
  static const InfraEdgeRelationEnum landsAt = _$infraEdgeRelationEnum_landsAt;
  @BuiltValueEnumConst(wireName: r'interconnects')
  static const InfraEdgeRelationEnum interconnects =
      _$infraEdgeRelationEnum_interconnects;
  @BuiltValueEnumConst(wireName: r'hosts')
  static const InfraEdgeRelationEnum hosts = _$infraEdgeRelationEnum_hosts;
  @BuiltValueEnumConst(wireName: r'serves')
  static const InfraEdgeRelationEnum serves = _$infraEdgeRelationEnum_serves;

  static Serializer<InfraEdgeRelationEnum> get serializer =>
      _$infraEdgeRelationEnumSerializer;

  const InfraEdgeRelationEnum._(String name) : super(name);

  static BuiltSet<InfraEdgeRelationEnum> get values =>
      _$infraEdgeRelationEnumValues;
  static InfraEdgeRelationEnum valueOf(String name) =>
      _$infraEdgeRelationEnumValueOf(name);
}

class InfraEdgeMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'declared')
  static const InfraEdgeMethodEnum declared = _$infraEdgeMethodEnum_declared;
  @BuiltValueEnumConst(wireName: r'topological')
  static const InfraEdgeMethodEnum topological =
      _$infraEdgeMethodEnum_topological;
  @BuiltValueEnumConst(wireName: r'proximity')
  static const InfraEdgeMethodEnum proximity = _$infraEdgeMethodEnum_proximity;
  @BuiltValueEnumConst(wireName: r'inferred')
  static const InfraEdgeMethodEnum inferred = _$infraEdgeMethodEnum_inferred;

  static Serializer<InfraEdgeMethodEnum> get serializer =>
      _$infraEdgeMethodEnumSerializer;

  const InfraEdgeMethodEnum._(String name) : super(name);

  static BuiltSet<InfraEdgeMethodEnum> get values =>
      _$infraEdgeMethodEnumValues;
  static InfraEdgeMethodEnum valueOf(String name) =>
      _$infraEdgeMethodEnumValueOf(name);
}

class InfraEdgeLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const InfraEdgeLabelEnum confirmed = _$infraEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const InfraEdgeLabelEnum likely = _$infraEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const InfraEdgeLabelEnum possible = _$infraEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const InfraEdgeLabelEnum speculative =
      _$infraEdgeLabelEnum_speculative;

  static Serializer<InfraEdgeLabelEnum> get serializer =>
      _$infraEdgeLabelEnumSerializer;

  const InfraEdgeLabelEnum._(String name) : super(name);

  static BuiltSet<InfraEdgeLabelEnum> get values => _$infraEdgeLabelEnumValues;
  static InfraEdgeLabelEnum valueOf(String name) =>
      _$infraEdgeLabelEnumValueOf(name);
}
