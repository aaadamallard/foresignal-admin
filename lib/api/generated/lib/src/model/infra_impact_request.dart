//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/infra_impact_request_record.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_request.g.dart';

/// Affected-dependents query: exactly one of geometry, eventId or record
///
/// Properties:
/// * [geometry]
/// * [eventId] - ULID identifier
/// * [record]
/// * [depth]
/// * [minLabel]
/// * [types]
@BuiltValue()
abstract class InfraImpactRequest
    implements Built<InfraImpactRequest, InfraImpactRequestBuilder> {
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// ULID identifier
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  @BuiltValueField(wireName: r'record')
  InfraImpactRequestRecord? get record;

  @BuiltValueField(wireName: r'depth')
  int? get depth;

  @BuiltValueField(wireName: r'minLabel')
  InfraImpactRequestMinLabelEnum? get minLabel;
  // enum minLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'types')
  BuiltList<InfraImpactRequestTypesEnum>? get types;
  // enum typesEnum {  power.generation,  power.nuclear,  power.substation,  power.line,  telecom.datacentre,  telecom.ixp,  telecom.exchange,  telecom.cable,  telecom.landing,  transport.airport,  transport.port,  health.hospital,  water.treatment,  space.spaceport,  };

  InfraImpactRequest._();

  factory InfraImpactRequest([void updates(InfraImpactRequestBuilder b)]) =
      _$InfraImpactRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactRequest> get serializer =>
      _$InfraImpactRequestSerializer();
}

class _$InfraImpactRequestSerializer
    implements PrimitiveSerializer<InfraImpactRequest> {
  @override
  final Iterable<Type> types = const [InfraImpactRequest, _$InfraImpactRequest];

  @override
  final String wireName = r'InfraImpactRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType(Geometry),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType(String),
      );
    }
    if (object.record != null) {
      yield r'record';
      yield serializers.serialize(
        object.record,
        specifiedType: const FullType(InfraImpactRequestRecord),
      );
    }
    if (object.depth != null) {
      yield r'depth';
      yield serializers.serialize(
        object.depth,
        specifiedType: const FullType(int),
      );
    }
    if (object.minLabel != null) {
      yield r'minLabel';
      yield serializers.serialize(
        object.minLabel,
        specifiedType: const FullType(InfraImpactRequestMinLabelEnum),
      );
    }
    if (object.types != null) {
      yield r'types';
      yield serializers.serialize(
        object.types,
        specifiedType: const FullType(BuiltList, [
          FullType(InfraImpactRequestTypesEnum),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactRequest object, {
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
    required InfraImpactRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'eventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      InfraImpactRequestRecord,
                    ),
                  )
                  as InfraImpactRequestRecord?;
          if (valueDes == null) continue;
          result.record.replace(valueDes);
          break;
        case r'depth':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.depth = valueDes;
          break;
        case r'minLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      InfraImpactRequestMinLabelEnum,
                    ),
                  )
                  as InfraImpactRequestMinLabelEnum?;
          if (valueDes == null) continue;
          result.minLabel = valueDes;
          break;
        case r'types':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(InfraImpactRequestTypesEnum),
                    ]),
                  )
                  as BuiltList<InfraImpactRequestTypesEnum>?;
          if (valueDes == null) continue;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactRequestBuilder();
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

class InfraImpactRequestMinLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const InfraImpactRequestMinLabelEnum confirmed =
      _$infraImpactRequestMinLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const InfraImpactRequestMinLabelEnum likely =
      _$infraImpactRequestMinLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const InfraImpactRequestMinLabelEnum possible =
      _$infraImpactRequestMinLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const InfraImpactRequestMinLabelEnum speculative =
      _$infraImpactRequestMinLabelEnum_speculative;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InfraImpactRequestMinLabelEnum unknownDefaultOpenApi =
      _$infraImpactRequestMinLabelEnum_unknownDefaultOpenApi;

  static Serializer<InfraImpactRequestMinLabelEnum> get serializer =>
      _$infraImpactRequestMinLabelEnumSerializer;

  const InfraImpactRequestMinLabelEnum._(String name) : super(name);

  static BuiltSet<InfraImpactRequestMinLabelEnum> get values =>
      _$infraImpactRequestMinLabelEnumValues;
  static InfraImpactRequestMinLabelEnum valueOf(String name) =>
      _$infraImpactRequestMinLabelEnumValueOf(name);
}

class InfraImpactRequestTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'power.generation')
  static const InfraImpactRequestTypesEnum powerPeriodGeneration =
      _$infraImpactRequestTypesEnum_powerPeriodGeneration;
  @BuiltValueEnumConst(wireName: r'power.nuclear')
  static const InfraImpactRequestTypesEnum powerPeriodNuclear =
      _$infraImpactRequestTypesEnum_powerPeriodNuclear;
  @BuiltValueEnumConst(wireName: r'power.substation')
  static const InfraImpactRequestTypesEnum powerPeriodSubstation =
      _$infraImpactRequestTypesEnum_powerPeriodSubstation;
  @BuiltValueEnumConst(wireName: r'power.line')
  static const InfraImpactRequestTypesEnum powerPeriodLine =
      _$infraImpactRequestTypesEnum_powerPeriodLine;
  @BuiltValueEnumConst(wireName: r'telecom.datacentre')
  static const InfraImpactRequestTypesEnum telecomPeriodDatacentre =
      _$infraImpactRequestTypesEnum_telecomPeriodDatacentre;
  @BuiltValueEnumConst(wireName: r'telecom.ixp')
  static const InfraImpactRequestTypesEnum telecomPeriodIxp =
      _$infraImpactRequestTypesEnum_telecomPeriodIxp;
  @BuiltValueEnumConst(wireName: r'telecom.exchange')
  static const InfraImpactRequestTypesEnum telecomPeriodExchange =
      _$infraImpactRequestTypesEnum_telecomPeriodExchange;
  @BuiltValueEnumConst(wireName: r'telecom.cable')
  static const InfraImpactRequestTypesEnum telecomPeriodCable =
      _$infraImpactRequestTypesEnum_telecomPeriodCable;
  @BuiltValueEnumConst(wireName: r'telecom.landing')
  static const InfraImpactRequestTypesEnum telecomPeriodLanding =
      _$infraImpactRequestTypesEnum_telecomPeriodLanding;
  @BuiltValueEnumConst(wireName: r'transport.airport')
  static const InfraImpactRequestTypesEnum transportPeriodAirport =
      _$infraImpactRequestTypesEnum_transportPeriodAirport;
  @BuiltValueEnumConst(wireName: r'transport.port')
  static const InfraImpactRequestTypesEnum transportPeriodPort =
      _$infraImpactRequestTypesEnum_transportPeriodPort;
  @BuiltValueEnumConst(wireName: r'health.hospital')
  static const InfraImpactRequestTypesEnum healthPeriodHospital =
      _$infraImpactRequestTypesEnum_healthPeriodHospital;
  @BuiltValueEnumConst(wireName: r'water.treatment')
  static const InfraImpactRequestTypesEnum waterPeriodTreatment =
      _$infraImpactRequestTypesEnum_waterPeriodTreatment;
  @BuiltValueEnumConst(wireName: r'space.spaceport')
  static const InfraImpactRequestTypesEnum spacePeriodSpaceport =
      _$infraImpactRequestTypesEnum_spacePeriodSpaceport;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const InfraImpactRequestTypesEnum unknownDefaultOpenApi =
      _$infraImpactRequestTypesEnum_unknownDefaultOpenApi;

  static Serializer<InfraImpactRequestTypesEnum> get serializer =>
      _$infraImpactRequestTypesEnumSerializer;

  const InfraImpactRequestTypesEnum._(String name) : super(name);

  static BuiltSet<InfraImpactRequestTypesEnum> get values =>
      _$infraImpactRequestTypesEnumValues;
  static InfraImpactRequestTypesEnum valueOf(String name) =>
      _$infraImpactRequestTypesEnumValueOf(name);
}
