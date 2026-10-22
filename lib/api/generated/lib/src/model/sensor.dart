//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/object_envelope_links.dart';
import 'package:foresignal_api/src/model/provenance.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/object_action.dart';
import 'package:foresignal_api/src/model/object_envelope_time.dart';
import 'package:foresignal_api/src/model/sensor_capabilities.dart';
import 'package:foresignal_api/src/model/sensor_passes_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sensor.g.dart';

/// Sensor envelope: something that can observe an area in a window (no tasking)
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [type]
/// * [title]
/// * [summary]
/// * [textOrigin]
/// * [status]
/// * [severity]
/// * [time]
/// * [geometry]
/// * [bbox]
/// * [private]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [tags]
/// * [provenance]
/// * [links]
/// * [actions]
/// * [sensorKind]
/// * [pDetect]
/// * [method]
/// * [families]
/// * [rangeKm]
/// * [passes]
/// * [capabilities]
/// * [footprint]
/// * [acquiredAt]
@BuiltValue()
abstract class Sensor implements Built<Sensor, SensorBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'textOrigin')
  SensorTextOriginEnum? get textOrigin;
  // enum textOriginEnum {  deterministic,  llm,  };

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'severity')
  String? get severity;

  @BuiltValueField(wireName: r'time')
  ObjectEnvelopeTime? get time;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'provenance')
  Provenance? get provenance;

  @BuiltValueField(wireName: r'links')
  ObjectEnvelopeLinks? get links;

  @BuiltValueField(wireName: r'actions')
  BuiltList<ObjectAction>? get actions;

  @BuiltValueField(wireName: r'sensorKind')
  SensorSensorKindEnum get sensorKind;
  // enum sensorKindEnum {  source,  receiver,  station,  satellite,  scene,  raster-product,  };

  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  @BuiltValueField(wireName: r'method')
  String? get method;

  @BuiltValueField(wireName: r'families')
  BuiltList<String>? get families;

  @BuiltValueField(wireName: r'rangeKm')
  num? get rangeKm;

  @BuiltValueField(wireName: r'passes')
  BuiltList<SensorPassesInner>? get passes;

  @BuiltValueField(wireName: r'capabilities')
  SensorCapabilities? get capabilities;

  @BuiltValueField(wireName: r'footprint')
  Geometry? get footprint;

  @BuiltValueField(wireName: r'acquiredAt')
  DateTime? get acquiredAt;

  Sensor._();

  factory Sensor([void updates(SensorBuilder b)]) = _$Sensor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SensorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Sensor> get serializer => _$SensorSerializer();
}

class _$SensorSerializer implements PrimitiveSerializer<Sensor> {
  @override
  final Iterable<Type> types = const [Sensor, _$Sensor];

  @override
  final String wireName = r'Sensor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Sensor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.textOrigin != null) {
      yield r'textOrigin';
      yield serializers.serialize(
        object.textOrigin,
        specifiedType: const FullType(SensorTextOriginEnum),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.severity != null) {
      yield r'severity';
      yield serializers.serialize(
        object.severity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(ObjectEnvelopeTime),
      );
    }
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.provenance != null) {
      yield r'provenance';
      yield serializers.serialize(
        object.provenance,
        specifiedType: const FullType(Provenance),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ObjectEnvelopeLinks),
      );
    }
    if (object.actions != null) {
      yield r'actions';
      yield serializers.serialize(
        object.actions,
        specifiedType: const FullType(BuiltList, [FullType(ObjectAction)]),
      );
    }
    yield r'sensorKind';
    yield serializers.serialize(
      object.sensorKind,
      specifiedType: const FullType(SensorSensorKindEnum),
    );
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.families != null) {
      yield r'families';
      yield serializers.serialize(
        object.families,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.rangeKm != null) {
      yield r'rangeKm';
      yield serializers.serialize(
        object.rangeKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.passes != null) {
      yield r'passes';
      yield serializers.serialize(
        object.passes,
        specifiedType: const FullType(BuiltList, [FullType(SensorPassesInner)]),
      );
    }
    if (object.capabilities != null) {
      yield r'capabilities';
      yield serializers.serialize(
        object.capabilities,
        specifiedType: const FullType.nullable(SensorCapabilities),
      );
    }
    if (object.footprint != null) {
      yield r'footprint';
      yield serializers.serialize(
        object.footprint,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    if (object.acquiredAt != null) {
      yield r'acquiredAt';
      yield serializers.serialize(
        object.acquiredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Sensor object, {
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
    required SensorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'textOrigin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SensorTextOriginEnum,
                    ),
                  )
                  as SensorTextOriginEnum?;
          if (valueDes == null) continue;
          result.textOrigin = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'severity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.severity = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ObjectEnvelopeTime),
                  )
                  as ObjectEnvelopeTime?;
          if (valueDes == null) continue;
          result.time.replace(valueDes);
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'provenance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Provenance),
                  )
                  as Provenance?;
          if (valueDes == null) continue;
          result.provenance.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ObjectEnvelopeLinks),
                  )
                  as ObjectEnvelopeLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'actions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectAction),
                    ]),
                  )
                  as BuiltList<ObjectAction>?;
          if (valueDes == null) continue;
          result.actions.replace(valueDes);
          break;
        case r'sensorKind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SensorSensorKindEnum),
                  )
                  as SensorSensorKindEnum;
          result.sensorKind = valueDes;
          break;
        case r'pDetect':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'families':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.families.replace(valueDes);
          break;
        case r'rangeKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rangeKm = valueDes;
          break;
        case r'passes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SensorPassesInner),
                    ]),
                  )
                  as BuiltList<SensorPassesInner>?;
          if (valueDes == null) continue;
          result.passes.replace(valueDes);
          break;
        case r'capabilities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SensorCapabilities),
                  )
                  as SensorCapabilities?;
          if (valueDes == null) continue;
          result.capabilities.replace(valueDes);
          break;
        case r'footprint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.footprint.replace(valueDes);
          break;
        case r'acquiredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.acquiredAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Sensor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SensorBuilder();
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

class SensorTextOriginEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'deterministic')
  static const SensorTextOriginEnum deterministic =
      _$sensorTextOriginEnum_deterministic;
  @BuiltValueEnumConst(wireName: r'llm')
  static const SensorTextOriginEnum llm = _$sensorTextOriginEnum_llm;

  static Serializer<SensorTextOriginEnum> get serializer =>
      _$sensorTextOriginEnumSerializer;

  const SensorTextOriginEnum._(String name) : super(name);

  static BuiltSet<SensorTextOriginEnum> get values =>
      _$sensorTextOriginEnumValues;
  static SensorTextOriginEnum valueOf(String name) =>
      _$sensorTextOriginEnumValueOf(name);
}

class SensorSensorKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'source')
  static const SensorSensorKindEnum source_ = _$sensorSensorKindEnum_source_;
  @BuiltValueEnumConst(wireName: r'receiver')
  static const SensorSensorKindEnum receiver = _$sensorSensorKindEnum_receiver;
  @BuiltValueEnumConst(wireName: r'station')
  static const SensorSensorKindEnum station = _$sensorSensorKindEnum_station;
  @BuiltValueEnumConst(wireName: r'satellite')
  static const SensorSensorKindEnum satellite =
      _$sensorSensorKindEnum_satellite;
  @BuiltValueEnumConst(wireName: r'scene')
  static const SensorSensorKindEnum scene = _$sensorSensorKindEnum_scene;
  @BuiltValueEnumConst(wireName: r'raster-product')
  static const SensorSensorKindEnum rasterProduct =
      _$sensorSensorKindEnum_rasterProduct;

  static Serializer<SensorSensorKindEnum> get serializer =>
      _$sensorSensorKindEnumSerializer;

  const SensorSensorKindEnum._(String name) : super(name);

  static BuiltSet<SensorSensorKindEnum> get values =>
      _$sensorSensorKindEnumValues;
  static SensorSensorKindEnum valueOf(String name) =>
      _$sensorSensorKindEnumValueOf(name);
}
