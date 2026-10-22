//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/infra_node_edges.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_node.g.dart';

/// A facility node: a view of a reference or OSM record, never edited by hand
///
/// Properties:
/// * [id]
/// * [sourceId]
/// * [externalId]
/// * [facilityType]
/// * [name]
/// * [geometry]
/// * [point]
/// * [attributes] - capacityMw, voltageKv, iata, beds, …
/// * [regionTags]
/// * [licence]
/// * [builtAt]
/// * [edges]
/// * [attribution] - e.g. © OpenStreetMap contributors
@BuiltValue()
abstract class InfraNode implements Built<InfraNode, InfraNodeBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'facilityType')
  InfraNodeFacilityTypeEnum get facilityType;
  // enum facilityTypeEnum {  power.generation,  power.nuclear,  power.substation,  power.line,  telecom.datacentre,  telecom.ixp,  telecom.exchange,  telecom.cable,  telecom.landing,  transport.airport,  transport.port,  health.hospital,  water.treatment,  space.spaceport,  };

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'geometry')
  Geometry get geometry;

  @BuiltValueField(wireName: r'point')
  Geometry? get point;

  /// capacityMw, voltageKv, iata, beds, …
  @BuiltValueField(wireName: r'attributes')
  BuiltMap<String, JsonObject?>? get attributes;

  @BuiltValueField(wireName: r'regionTags')
  BuiltList<String>? get regionTags;

  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'builtAt')
  DateTime? get builtAt;

  @BuiltValueField(wireName: r'edges')
  InfraNodeEdges? get edges;

  /// e.g. © OpenStreetMap contributors
  @BuiltValueField(wireName: r'attribution')
  BuiltList<String>? get attribution;

  InfraNode._();

  factory InfraNode([void updates(InfraNodeBuilder b)]) = _$InfraNode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraNodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraNode> get serializer => _$InfraNodeSerializer();
}

class _$InfraNodeSerializer implements PrimitiveSerializer<InfraNode> {
  @override
  final Iterable<Type> types = const [InfraNode, _$InfraNode];

  @override
  final String wireName = r'InfraNode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraNode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'facilityType';
    yield serializers.serialize(
      object.facilityType,
      specifiedType: const FullType(InfraNodeFacilityTypeEnum),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'geometry';
    yield serializers.serialize(
      object.geometry,
      specifiedType: const FullType(Geometry),
    );
    if (object.point != null) {
      yield r'point';
      yield serializers.serialize(
        object.point,
        specifiedType: const FullType(Geometry),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.regionTags != null) {
      yield r'regionTags';
      yield serializers.serialize(
        object.regionTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    if (object.edges != null) {
      yield r'edges';
      yield serializers.serialize(
        object.edges,
        specifiedType: const FullType.nullable(InfraNodeEdges),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraNode object, {
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
    required InfraNodeBuilder result,
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
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
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
        case r'facilityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraNodeFacilityTypeEnum),
                  )
                  as InfraNodeFacilityTypeEnum;
          result.facilityType = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Geometry),
                  )
                  as Geometry;
          result.geometry.replace(valueDes);
          break;
        case r'point':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.point.replace(valueDes);
          break;
        case r'attributes':
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
          result.attributes.replace(valueDes);
          break;
        case r'regionTags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionTags.replace(valueDes);
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
        case r'edges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(InfraNodeEdges),
                  )
                  as InfraNodeEdges?;
          if (valueDes == null) continue;
          result.edges.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraNode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraNodeBuilder();
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

class InfraNodeFacilityTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'power.generation')
  static const InfraNodeFacilityTypeEnum powerPeriodGeneration =
      _$infraNodeFacilityTypeEnum_powerPeriodGeneration;
  @BuiltValueEnumConst(wireName: r'power.nuclear')
  static const InfraNodeFacilityTypeEnum powerPeriodNuclear =
      _$infraNodeFacilityTypeEnum_powerPeriodNuclear;
  @BuiltValueEnumConst(wireName: r'power.substation')
  static const InfraNodeFacilityTypeEnum powerPeriodSubstation =
      _$infraNodeFacilityTypeEnum_powerPeriodSubstation;
  @BuiltValueEnumConst(wireName: r'power.line')
  static const InfraNodeFacilityTypeEnum powerPeriodLine =
      _$infraNodeFacilityTypeEnum_powerPeriodLine;
  @BuiltValueEnumConst(wireName: r'telecom.datacentre')
  static const InfraNodeFacilityTypeEnum telecomPeriodDatacentre =
      _$infraNodeFacilityTypeEnum_telecomPeriodDatacentre;
  @BuiltValueEnumConst(wireName: r'telecom.ixp')
  static const InfraNodeFacilityTypeEnum telecomPeriodIxp =
      _$infraNodeFacilityTypeEnum_telecomPeriodIxp;
  @BuiltValueEnumConst(wireName: r'telecom.exchange')
  static const InfraNodeFacilityTypeEnum telecomPeriodExchange =
      _$infraNodeFacilityTypeEnum_telecomPeriodExchange;
  @BuiltValueEnumConst(wireName: r'telecom.cable')
  static const InfraNodeFacilityTypeEnum telecomPeriodCable =
      _$infraNodeFacilityTypeEnum_telecomPeriodCable;
  @BuiltValueEnumConst(wireName: r'telecom.landing')
  static const InfraNodeFacilityTypeEnum telecomPeriodLanding =
      _$infraNodeFacilityTypeEnum_telecomPeriodLanding;
  @BuiltValueEnumConst(wireName: r'transport.airport')
  static const InfraNodeFacilityTypeEnum transportPeriodAirport =
      _$infraNodeFacilityTypeEnum_transportPeriodAirport;
  @BuiltValueEnumConst(wireName: r'transport.port')
  static const InfraNodeFacilityTypeEnum transportPeriodPort =
      _$infraNodeFacilityTypeEnum_transportPeriodPort;
  @BuiltValueEnumConst(wireName: r'health.hospital')
  static const InfraNodeFacilityTypeEnum healthPeriodHospital =
      _$infraNodeFacilityTypeEnum_healthPeriodHospital;
  @BuiltValueEnumConst(wireName: r'water.treatment')
  static const InfraNodeFacilityTypeEnum waterPeriodTreatment =
      _$infraNodeFacilityTypeEnum_waterPeriodTreatment;
  @BuiltValueEnumConst(wireName: r'space.spaceport')
  static const InfraNodeFacilityTypeEnum spacePeriodSpaceport =
      _$infraNodeFacilityTypeEnum_spacePeriodSpaceport;

  static Serializer<InfraNodeFacilityTypeEnum> get serializer =>
      _$infraNodeFacilityTypeEnumSerializer;

  const InfraNodeFacilityTypeEnum._(String name) : super(name);

  static BuiltSet<InfraNodeFacilityTypeEnum> get values =>
      _$infraNodeFacilityTypeEnumValues;
  static InfraNodeFacilityTypeEnum valueOf(String name) =>
      _$infraNodeFacilityTypeEnumValueOf(name);
}
