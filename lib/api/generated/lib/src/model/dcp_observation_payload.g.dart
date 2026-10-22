// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dcp_observation_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DcpObservationPayload extends DcpObservationPayload {
  @override
  final String address;
  @override
  final String? name;
  @override
  final String? agency;
  @override
  final String? channel;
  @override
  final num? signalDbm;
  @override
  final num? frequencyOffsetHz;
  @override
  final String? failureCode;
  @override
  final String? dataAscii;
  @override
  final String? dataHex;
  @override
  final JsonObject? decoded;

  factory _$DcpObservationPayload(
          [void Function(DcpObservationPayloadBuilder)? updates]) =>
      (DcpObservationPayloadBuilder()..update(updates))._build();

  _$DcpObservationPayload._(
      {required this.address,
      this.name,
      this.agency,
      this.channel,
      this.signalDbm,
      this.frequencyOffsetHz,
      this.failureCode,
      this.dataAscii,
      this.dataHex,
      this.decoded})
      : super._();
  @override
  DcpObservationPayload rebuild(
          void Function(DcpObservationPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DcpObservationPayloadBuilder toBuilder() =>
      DcpObservationPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DcpObservationPayload &&
        address == other.address &&
        name == other.name &&
        agency == other.agency &&
        channel == other.channel &&
        signalDbm == other.signalDbm &&
        frequencyOffsetHz == other.frequencyOffsetHz &&
        failureCode == other.failureCode &&
        dataAscii == other.dataAscii &&
        dataHex == other.dataHex &&
        decoded == other.decoded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, agency.hashCode);
    _$hash = $jc(_$hash, channel.hashCode);
    _$hash = $jc(_$hash, signalDbm.hashCode);
    _$hash = $jc(_$hash, frequencyOffsetHz.hashCode);
    _$hash = $jc(_$hash, failureCode.hashCode);
    _$hash = $jc(_$hash, dataAscii.hashCode);
    _$hash = $jc(_$hash, dataHex.hashCode);
    _$hash = $jc(_$hash, decoded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DcpObservationPayload')
          ..add('address', address)
          ..add('name', name)
          ..add('agency', agency)
          ..add('channel', channel)
          ..add('signalDbm', signalDbm)
          ..add('frequencyOffsetHz', frequencyOffsetHz)
          ..add('failureCode', failureCode)
          ..add('dataAscii', dataAscii)
          ..add('dataHex', dataHex)
          ..add('decoded', decoded))
        .toString();
  }
}

class DcpObservationPayloadBuilder
    implements Builder<DcpObservationPayload, DcpObservationPayloadBuilder> {
  _$DcpObservationPayload? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _agency;
  String? get agency => _$this._agency;
  set agency(String? agency) => _$this._agency = agency;

  String? _channel;
  String? get channel => _$this._channel;
  set channel(String? channel) => _$this._channel = channel;

  num? _signalDbm;
  num? get signalDbm => _$this._signalDbm;
  set signalDbm(num? signalDbm) => _$this._signalDbm = signalDbm;

  num? _frequencyOffsetHz;
  num? get frequencyOffsetHz => _$this._frequencyOffsetHz;
  set frequencyOffsetHz(num? frequencyOffsetHz) =>
      _$this._frequencyOffsetHz = frequencyOffsetHz;

  String? _failureCode;
  String? get failureCode => _$this._failureCode;
  set failureCode(String? failureCode) => _$this._failureCode = failureCode;

  String? _dataAscii;
  String? get dataAscii => _$this._dataAscii;
  set dataAscii(String? dataAscii) => _$this._dataAscii = dataAscii;

  String? _dataHex;
  String? get dataHex => _$this._dataHex;
  set dataHex(String? dataHex) => _$this._dataHex = dataHex;

  JsonObject? _decoded;
  JsonObject? get decoded => _$this._decoded;
  set decoded(JsonObject? decoded) => _$this._decoded = decoded;

  DcpObservationPayloadBuilder() {
    DcpObservationPayload._defaults(this);
  }

  DcpObservationPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _name = $v.name;
      _agency = $v.agency;
      _channel = $v.channel;
      _signalDbm = $v.signalDbm;
      _frequencyOffsetHz = $v.frequencyOffsetHz;
      _failureCode = $v.failureCode;
      _dataAscii = $v.dataAscii;
      _dataHex = $v.dataHex;
      _decoded = $v.decoded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DcpObservationPayload other) {
    _$v = other as _$DcpObservationPayload;
  }

  @override
  void update(void Function(DcpObservationPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DcpObservationPayload build() => _build();

  _$DcpObservationPayload _build() {
    final _$result = _$v ??
        _$DcpObservationPayload._(
          address: BuiltValueNullFieldError.checkNotNull(
              address, r'DcpObservationPayload', 'address'),
          name: name,
          agency: agency,
          channel: channel,
          signalDbm: signalDbm,
          frequencyOffsetHz: frequencyOffsetHz,
          failureCode: failureCode,
          dataAscii: dataAscii,
          dataHex: dataHex,
          decoded: decoded,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
