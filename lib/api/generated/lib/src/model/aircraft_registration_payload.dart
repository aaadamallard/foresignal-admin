//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aircraft_registration_payload.g.dart';

/// Payload of `faa-registry` records (kind `aircraft-registration`). Allowlisted fields only: owner names and addresses are never stored.
///
/// Properties:
/// * [nNumber]
/// * [serial]
/// * [mfrMdlCode]
/// * [manufacturer]
/// * [model]
/// * [typeAircraft]
/// * [typeEngine]
/// * [engines]
/// * [seats]
/// * [weightClass]
/// * [yearMfr]
/// * [registrantType] - Decoded registrant type (individual, partnership, corporation, co-owned, government, llc, non-citizen-corporation, non-citizen-co-owned)
/// * [certIssueDate]
/// * [airworthinessDate]
/// * [expirationDate]
/// * [statusCode]
/// * [modeSHex] - Lowercase ICAO 24-bit hex
/// * [fractionalOwner]
/// * [kitMfr]
/// * [kitModel]
/// * [name] - Registrant name, present only when the source param `nonIndividualOwnerNames` is on and the registrant is a corporation, government, LLC or non-citizen corporation
@BuiltValue()
abstract class AircraftRegistrationPayload
    implements
        Built<AircraftRegistrationPayload, AircraftRegistrationPayloadBuilder> {
  @BuiltValueField(wireName: r'nNumber')
  String get nNumber;

  @BuiltValueField(wireName: r'serial')
  String? get serial;

  @BuiltValueField(wireName: r'mfrMdlCode')
  String? get mfrMdlCode;

  @BuiltValueField(wireName: r'manufacturer')
  String? get manufacturer;

  @BuiltValueField(wireName: r'model')
  String? get model;

  @BuiltValueField(wireName: r'typeAircraft')
  String? get typeAircraft;

  @BuiltValueField(wireName: r'typeEngine')
  String? get typeEngine;

  @BuiltValueField(wireName: r'engines')
  int? get engines;

  @BuiltValueField(wireName: r'seats')
  int? get seats;

  @BuiltValueField(wireName: r'weightClass')
  String? get weightClass;

  @BuiltValueField(wireName: r'yearMfr')
  int? get yearMfr;

  /// Decoded registrant type (individual, partnership, corporation, co-owned, government, llc, non-citizen-corporation, non-citizen-co-owned)
  @BuiltValueField(wireName: r'registrantType')
  String? get registrantType;

  @BuiltValueField(wireName: r'certIssueDate')
  Date? get certIssueDate;

  @BuiltValueField(wireName: r'airworthinessDate')
  Date? get airworthinessDate;

  @BuiltValueField(wireName: r'expirationDate')
  Date? get expirationDate;

  @BuiltValueField(wireName: r'statusCode')
  String? get statusCode;

  /// Lowercase ICAO 24-bit hex
  @BuiltValueField(wireName: r'modeSHex')
  String? get modeSHex;

  @BuiltValueField(wireName: r'fractionalOwner')
  bool? get fractionalOwner;

  @BuiltValueField(wireName: r'kitMfr')
  String? get kitMfr;

  @BuiltValueField(wireName: r'kitModel')
  String? get kitModel;

  /// Registrant name, present only when the source param `nonIndividualOwnerNames` is on and the registrant is a corporation, government, LLC or non-citizen corporation
  @BuiltValueField(wireName: r'name')
  String? get name;

  AircraftRegistrationPayload._();

  factory AircraftRegistrationPayload([
    void updates(AircraftRegistrationPayloadBuilder b),
  ]) = _$AircraftRegistrationPayload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AircraftRegistrationPayloadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AircraftRegistrationPayload> get serializer =>
      _$AircraftRegistrationPayloadSerializer();
}

class _$AircraftRegistrationPayloadSerializer
    implements PrimitiveSerializer<AircraftRegistrationPayload> {
  @override
  final Iterable<Type> types = const [
    AircraftRegistrationPayload,
    _$AircraftRegistrationPayload,
  ];

  @override
  final String wireName = r'AircraftRegistrationPayload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AircraftRegistrationPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nNumber';
    yield serializers.serialize(
      object.nNumber,
      specifiedType: const FullType(String),
    );
    if (object.serial != null) {
      yield r'serial';
      yield serializers.serialize(
        object.serial,
        specifiedType: const FullType(String),
      );
    }
    if (object.mfrMdlCode != null) {
      yield r'mfrMdlCode';
      yield serializers.serialize(
        object.mfrMdlCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.manufacturer != null) {
      yield r'manufacturer';
      yield serializers.serialize(
        object.manufacturer,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.model != null) {
      yield r'model';
      yield serializers.serialize(
        object.model,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeAircraft != null) {
      yield r'typeAircraft';
      yield serializers.serialize(
        object.typeAircraft,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.typeEngine != null) {
      yield r'typeEngine';
      yield serializers.serialize(
        object.typeEngine,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.engines != null) {
      yield r'engines';
      yield serializers.serialize(
        object.engines,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.seats != null) {
      yield r'seats';
      yield serializers.serialize(
        object.seats,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.weightClass != null) {
      yield r'weightClass';
      yield serializers.serialize(
        object.weightClass,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.yearMfr != null) {
      yield r'yearMfr';
      yield serializers.serialize(
        object.yearMfr,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.registrantType != null) {
      yield r'registrantType';
      yield serializers.serialize(
        object.registrantType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.certIssueDate != null) {
      yield r'certIssueDate';
      yield serializers.serialize(
        object.certIssueDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.airworthinessDate != null) {
      yield r'airworthinessDate';
      yield serializers.serialize(
        object.airworthinessDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.expirationDate != null) {
      yield r'expirationDate';
      yield serializers.serialize(
        object.expirationDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.modeSHex != null) {
      yield r'modeSHex';
      yield serializers.serialize(
        object.modeSHex,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fractionalOwner != null) {
      yield r'fractionalOwner';
      yield serializers.serialize(
        object.fractionalOwner,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.kitMfr != null) {
      yield r'kitMfr';
      yield serializers.serialize(
        object.kitMfr,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.kitModel != null) {
      yield r'kitModel';
      yield serializers.serialize(
        object.kitModel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AircraftRegistrationPayload object, {
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
    required AircraftRegistrationPayloadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.nNumber = valueDes;
          break;
        case r'serial':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serial = valueDes;
          break;
        case r'mfrMdlCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mfrMdlCode = valueDes;
          break;
        case r'manufacturer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manufacturer = valueDes;
          break;
        case r'model':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.model = valueDes;
          break;
        case r'typeAircraft':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.typeAircraft = valueDes;
          break;
        case r'typeEngine':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.typeEngine = valueDes;
          break;
        case r'engines':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.engines = valueDes;
          break;
        case r'seats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seats = valueDes;
          break;
        case r'weightClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.weightClass = valueDes;
          break;
        case r'yearMfr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.yearMfr = valueDes;
          break;
        case r'registrantType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.registrantType = valueDes;
          break;
        case r'certIssueDate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.certIssueDate = valueDes;
          break;
        case r'airworthinessDate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.airworthinessDate = valueDes;
          break;
        case r'expirationDate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Date),
                  )
                  as Date?;
          if (valueDes == null) continue;
          result.expirationDate = valueDes;
          break;
        case r'statusCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusCode = valueDes;
          break;
        case r'modeSHex':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.modeSHex = valueDes;
          break;
        case r'fractionalOwner':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.fractionalOwner = valueDes;
          break;
        case r'kitMfr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kitMfr = valueDes;
          break;
        case r'kitModel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kitModel = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AircraftRegistrationPayload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AircraftRegistrationPayloadBuilder();
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
