// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aircraft_registration_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AircraftRegistrationPayload extends AircraftRegistrationPayload {
  @override
  final String nNumber;
  @override
  final String? serial;
  @override
  final String? mfrMdlCode;
  @override
  final String? manufacturer;
  @override
  final String? model;
  @override
  final String? typeAircraft;
  @override
  final String? typeEngine;
  @override
  final int? engines;
  @override
  final int? seats;
  @override
  final String? weightClass;
  @override
  final int? yearMfr;
  @override
  final String? registrantType;
  @override
  final Date? certIssueDate;
  @override
  final Date? airworthinessDate;
  @override
  final Date? expirationDate;
  @override
  final String? statusCode;
  @override
  final String? modeSHex;
  @override
  final bool? fractionalOwner;
  @override
  final String? kitMfr;
  @override
  final String? kitModel;
  @override
  final String? name;

  factory _$AircraftRegistrationPayload([
    void Function(AircraftRegistrationPayloadBuilder)? updates,
  ]) => (AircraftRegistrationPayloadBuilder()..update(updates))._build();

  _$AircraftRegistrationPayload._({
    required this.nNumber,
    this.serial,
    this.mfrMdlCode,
    this.manufacturer,
    this.model,
    this.typeAircraft,
    this.typeEngine,
    this.engines,
    this.seats,
    this.weightClass,
    this.yearMfr,
    this.registrantType,
    this.certIssueDate,
    this.airworthinessDate,
    this.expirationDate,
    this.statusCode,
    this.modeSHex,
    this.fractionalOwner,
    this.kitMfr,
    this.kitModel,
    this.name,
  }) : super._();
  @override
  AircraftRegistrationPayload rebuild(
    void Function(AircraftRegistrationPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AircraftRegistrationPayloadBuilder toBuilder() =>
      AircraftRegistrationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AircraftRegistrationPayload &&
        nNumber == other.nNumber &&
        serial == other.serial &&
        mfrMdlCode == other.mfrMdlCode &&
        manufacturer == other.manufacturer &&
        model == other.model &&
        typeAircraft == other.typeAircraft &&
        typeEngine == other.typeEngine &&
        engines == other.engines &&
        seats == other.seats &&
        weightClass == other.weightClass &&
        yearMfr == other.yearMfr &&
        registrantType == other.registrantType &&
        certIssueDate == other.certIssueDate &&
        airworthinessDate == other.airworthinessDate &&
        expirationDate == other.expirationDate &&
        statusCode == other.statusCode &&
        modeSHex == other.modeSHex &&
        fractionalOwner == other.fractionalOwner &&
        kitMfr == other.kitMfr &&
        kitModel == other.kitModel &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nNumber.hashCode);
    _$hash = $jc(_$hash, serial.hashCode);
    _$hash = $jc(_$hash, mfrMdlCode.hashCode);
    _$hash = $jc(_$hash, manufacturer.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, typeAircraft.hashCode);
    _$hash = $jc(_$hash, typeEngine.hashCode);
    _$hash = $jc(_$hash, engines.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jc(_$hash, weightClass.hashCode);
    _$hash = $jc(_$hash, yearMfr.hashCode);
    _$hash = $jc(_$hash, registrantType.hashCode);
    _$hash = $jc(_$hash, certIssueDate.hashCode);
    _$hash = $jc(_$hash, airworthinessDate.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, modeSHex.hashCode);
    _$hash = $jc(_$hash, fractionalOwner.hashCode);
    _$hash = $jc(_$hash, kitMfr.hashCode);
    _$hash = $jc(_$hash, kitModel.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AircraftRegistrationPayload')
          ..add('nNumber', nNumber)
          ..add('serial', serial)
          ..add('mfrMdlCode', mfrMdlCode)
          ..add('manufacturer', manufacturer)
          ..add('model', model)
          ..add('typeAircraft', typeAircraft)
          ..add('typeEngine', typeEngine)
          ..add('engines', engines)
          ..add('seats', seats)
          ..add('weightClass', weightClass)
          ..add('yearMfr', yearMfr)
          ..add('registrantType', registrantType)
          ..add('certIssueDate', certIssueDate)
          ..add('airworthinessDate', airworthinessDate)
          ..add('expirationDate', expirationDate)
          ..add('statusCode', statusCode)
          ..add('modeSHex', modeSHex)
          ..add('fractionalOwner', fractionalOwner)
          ..add('kitMfr', kitMfr)
          ..add('kitModel', kitModel)
          ..add('name', name))
        .toString();
  }
}

class AircraftRegistrationPayloadBuilder
    implements
        Builder<
          AircraftRegistrationPayload,
          AircraftRegistrationPayloadBuilder
        > {
  _$AircraftRegistrationPayload? _$v;

  String? _nNumber;
  String? get nNumber => _$this._nNumber;
  set nNumber(String? nNumber) => _$this._nNumber = nNumber;

  String? _serial;
  String? get serial => _$this._serial;
  set serial(String? serial) => _$this._serial = serial;

  String? _mfrMdlCode;
  String? get mfrMdlCode => _$this._mfrMdlCode;
  set mfrMdlCode(String? mfrMdlCode) => _$this._mfrMdlCode = mfrMdlCode;

  String? _manufacturer;
  String? get manufacturer => _$this._manufacturer;
  set manufacturer(String? manufacturer) => _$this._manufacturer = manufacturer;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _typeAircraft;
  String? get typeAircraft => _$this._typeAircraft;
  set typeAircraft(String? typeAircraft) => _$this._typeAircraft = typeAircraft;

  String? _typeEngine;
  String? get typeEngine => _$this._typeEngine;
  set typeEngine(String? typeEngine) => _$this._typeEngine = typeEngine;

  int? _engines;
  int? get engines => _$this._engines;
  set engines(int? engines) => _$this._engines = engines;

  int? _seats;
  int? get seats => _$this._seats;
  set seats(int? seats) => _$this._seats = seats;

  String? _weightClass;
  String? get weightClass => _$this._weightClass;
  set weightClass(String? weightClass) => _$this._weightClass = weightClass;

  int? _yearMfr;
  int? get yearMfr => _$this._yearMfr;
  set yearMfr(int? yearMfr) => _$this._yearMfr = yearMfr;

  String? _registrantType;
  String? get registrantType => _$this._registrantType;
  set registrantType(String? registrantType) =>
      _$this._registrantType = registrantType;

  Date? _certIssueDate;
  Date? get certIssueDate => _$this._certIssueDate;
  set certIssueDate(Date? certIssueDate) =>
      _$this._certIssueDate = certIssueDate;

  Date? _airworthinessDate;
  Date? get airworthinessDate => _$this._airworthinessDate;
  set airworthinessDate(Date? airworthinessDate) =>
      _$this._airworthinessDate = airworthinessDate;

  Date? _expirationDate;
  Date? get expirationDate => _$this._expirationDate;
  set expirationDate(Date? expirationDate) =>
      _$this._expirationDate = expirationDate;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  String? _modeSHex;
  String? get modeSHex => _$this._modeSHex;
  set modeSHex(String? modeSHex) => _$this._modeSHex = modeSHex;

  bool? _fractionalOwner;
  bool? get fractionalOwner => _$this._fractionalOwner;
  set fractionalOwner(bool? fractionalOwner) =>
      _$this._fractionalOwner = fractionalOwner;

  String? _kitMfr;
  String? get kitMfr => _$this._kitMfr;
  set kitMfr(String? kitMfr) => _$this._kitMfr = kitMfr;

  String? _kitModel;
  String? get kitModel => _$this._kitModel;
  set kitModel(String? kitModel) => _$this._kitModel = kitModel;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AircraftRegistrationPayloadBuilder() {
    AircraftRegistrationPayload._defaults(this);
  }

  AircraftRegistrationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nNumber = $v.nNumber;
      _serial = $v.serial;
      _mfrMdlCode = $v.mfrMdlCode;
      _manufacturer = $v.manufacturer;
      _model = $v.model;
      _typeAircraft = $v.typeAircraft;
      _typeEngine = $v.typeEngine;
      _engines = $v.engines;
      _seats = $v.seats;
      _weightClass = $v.weightClass;
      _yearMfr = $v.yearMfr;
      _registrantType = $v.registrantType;
      _certIssueDate = $v.certIssueDate;
      _airworthinessDate = $v.airworthinessDate;
      _expirationDate = $v.expirationDate;
      _statusCode = $v.statusCode;
      _modeSHex = $v.modeSHex;
      _fractionalOwner = $v.fractionalOwner;
      _kitMfr = $v.kitMfr;
      _kitModel = $v.kitModel;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AircraftRegistrationPayload other) {
    _$v = other as _$AircraftRegistrationPayload;
  }

  @override
  void update(void Function(AircraftRegistrationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AircraftRegistrationPayload build() => _build();

  _$AircraftRegistrationPayload _build() {
    final _$result =
        _$v ??
        _$AircraftRegistrationPayload._(
          nNumber: BuiltValueNullFieldError.checkNotNull(
            nNumber,
            r'AircraftRegistrationPayload',
            'nNumber',
          ),
          serial: serial,
          mfrMdlCode: mfrMdlCode,
          manufacturer: manufacturer,
          model: model,
          typeAircraft: typeAircraft,
          typeEngine: typeEngine,
          engines: engines,
          seats: seats,
          weightClass: weightClass,
          yearMfr: yearMfr,
          registrantType: registrantType,
          certIssueDate: certIssueDate,
          airworthinessDate: airworthinessDate,
          expirationDate: expirationDate,
          statusCode: statusCode,
          modeSHex: modeSHex,
          fractionalOwner: fractionalOwner,
          kitMfr: kitMfr,
          kitModel: kitModel,
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
