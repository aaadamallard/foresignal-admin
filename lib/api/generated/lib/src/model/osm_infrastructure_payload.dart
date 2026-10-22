//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osm_infrastructure_payload.g.dart';

/// Payload of `osm-infrastructure` records (allowlisted tags only; ODbL-1.0)
///
/// Properties:
/// * [name]
/// * [operator_]
/// * [voltageKv]
/// * [capacityMw]
/// * [beds]
/// * [emergency]
/// * [iata]
/// * [icao]
/// * [ref]
/// * [osmType]
/// * [osmVersion]
@BuiltValue()
abstract class OsmInfrastructurePayload
    implements
        Built<OsmInfrastructurePayload, OsmInfrastructurePayloadBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  @BuiltValueField(wireName: r'voltageKv')
  num? get voltageKv;

  @BuiltValueField(wireName: r'capacityMw')
  num? get capacityMw;

  @BuiltValueField(wireName: r'beds')
  int? get beds;

  @BuiltValueField(wireName: r'emergency')
  String? get emergency;

  @BuiltValueField(wireName: r'iata')
  String? get iata;

  @BuiltValueField(wireName: r'icao')
  String? get icao;

  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'osmType')
  OsmInfrastructurePayloadOsmTypeEnum? get osmType;
  // enum osmTypeEnum {  node,  way,  relation,  };

  @BuiltValueField(wireName: r'osmVersion')
  int? get osmVersion;

  OsmInfrastructurePayload._();

  factory OsmInfrastructurePayload(
          [void updates(OsmInfrastructurePayloadBuilder b)]) =
      _$OsmInfrastructurePayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsmInfrastructurePayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsmInfrastructurePayload> get serializer =>
      _$OsmInfrastructurePayloadSerializer();
}

class _$OsmInfrastructurePayloadSerializer
    implements PrimitiveSerializer<OsmInfrastructurePayload> {
  @override
  final Iterable<Type> types = const [
    OsmInfrastructurePayload,
    _$OsmInfrastructurePayload
  ];

  @override
  final String wireName = r'OsmInfrastructurePayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsmInfrastructurePayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.voltageKv != null) {
      yield r'voltageKv';
      yield serializers.serialize(
        object.voltageKv,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.capacityMw != null) {
      yield r'capacityMw';
      yield serializers.serialize(
        object.capacityMw,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.beds != null) {
      yield r'beds';
      yield serializers.serialize(
        object.beds,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.emergency != null) {
      yield r'emergency';
      yield serializers.serialize(
        object.emergency,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.iata != null) {
      yield r'iata';
      yield serializers.serialize(
        object.iata,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.icao != null) {
      yield r'icao';
      yield serializers.serialize(
        object.icao,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.osmType != null) {
      yield r'osmType';
      yield serializers.serialize(
        object.osmType,
        specifiedType:
            const FullType.nullable(OsmInfrastructurePayloadOsmTypeEnum),
      );
    }
    if (object.osmVersion != null) {
      yield r'osmVersion';
      yield serializers.serialize(
        object.osmVersion,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OsmInfrastructurePayload object, {
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
    required OsmInfrastructurePayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operator_ = valueDes;
          break;
        case r'voltageKv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.voltageKv = valueDes;
          break;
        case r'capacityMw':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.capacityMw = valueDes;
          break;
        case r'beds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.beds = valueDes;
          break;
        case r'emergency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emergency = valueDes;
          break;
        case r'iata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.iata = valueDes;
          break;
        case r'icao':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.icao = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'osmType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(OsmInfrastructurePayloadOsmTypeEnum),
          ) as OsmInfrastructurePayloadOsmTypeEnum?;
          if (valueDes == null) continue;
          result.osmType = valueDes;
          break;
        case r'osmVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.osmVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsmInfrastructurePayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsmInfrastructurePayloadBuilder();
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

class OsmInfrastructurePayloadOsmTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'node')
  static const OsmInfrastructurePayloadOsmTypeEnum node =
      _$osmInfrastructurePayloadOsmTypeEnum_node;
  @BuiltValueEnumConst(wireName: r'way')
  static const OsmInfrastructurePayloadOsmTypeEnum way =
      _$osmInfrastructurePayloadOsmTypeEnum_way;
  @BuiltValueEnumConst(wireName: r'relation')
  static const OsmInfrastructurePayloadOsmTypeEnum relation =
      _$osmInfrastructurePayloadOsmTypeEnum_relation;

  static Serializer<OsmInfrastructurePayloadOsmTypeEnum> get serializer =>
      _$osmInfrastructurePayloadOsmTypeEnumSerializer;

  const OsmInfrastructurePayloadOsmTypeEnum._(String name) : super(name);

  static BuiltSet<OsmInfrastructurePayloadOsmTypeEnum> get values =>
      _$osmInfrastructurePayloadOsmTypeEnumValues;
  static OsmInfrastructurePayloadOsmTypeEnum valueOf(String name) =>
      _$osmInfrastructurePayloadOsmTypeEnumValueOf(name);
}
