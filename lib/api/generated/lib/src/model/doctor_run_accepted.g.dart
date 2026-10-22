// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_run_accepted.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorRunAcceptedStatusEnum _$doctorRunAcceptedStatusEnum_running =
    const DoctorRunAcceptedStatusEnum._('running');

DoctorRunAcceptedStatusEnum _$doctorRunAcceptedStatusEnumValueOf(String name) {
  switch (name) {
    case 'running':
      return _$doctorRunAcceptedStatusEnum_running;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorRunAcceptedStatusEnum>
    _$doctorRunAcceptedStatusEnumValues =
    BuiltSet<DoctorRunAcceptedStatusEnum>(const <DoctorRunAcceptedStatusEnum>[
  _$doctorRunAcceptedStatusEnum_running,
]);

Serializer<DoctorRunAcceptedStatusEnum>
    _$doctorRunAcceptedStatusEnumSerializer =
    _$DoctorRunAcceptedStatusEnumSerializer();

class _$DoctorRunAcceptedStatusEnumSerializer
    implements PrimitiveSerializer<DoctorRunAcceptedStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorRunAcceptedStatusEnum];
  @override
  final String wireName = 'DoctorRunAcceptedStatusEnum';

  @override
  Object serialize(Serializers serializers, DoctorRunAcceptedStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DoctorRunAcceptedStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DoctorRunAcceptedStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DoctorRunAccepted extends DoctorRunAccepted {
  @override
  final String reportId;
  @override
  final DoctorRunAcceptedStatusEnum status;
  @override
  final String location;

  factory _$DoctorRunAccepted(
          [void Function(DoctorRunAcceptedBuilder)? updates]) =>
      (DoctorRunAcceptedBuilder()..update(updates))._build();

  _$DoctorRunAccepted._(
      {required this.reportId, required this.status, required this.location})
      : super._();
  @override
  DoctorRunAccepted rebuild(void Function(DoctorRunAcceptedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorRunAcceptedBuilder toBuilder() =>
      DoctorRunAcceptedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorRunAccepted &&
        reportId == other.reportId &&
        status == other.status &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorRunAccepted')
          ..add('reportId', reportId)
          ..add('status', status)
          ..add('location', location))
        .toString();
  }
}

class DoctorRunAcceptedBuilder
    implements Builder<DoctorRunAccepted, DoctorRunAcceptedBuilder> {
  _$DoctorRunAccepted? _$v;

  String? _reportId;
  String? get reportId => _$this._reportId;
  set reportId(String? reportId) => _$this._reportId = reportId;

  DoctorRunAcceptedStatusEnum? _status;
  DoctorRunAcceptedStatusEnum? get status => _$this._status;
  set status(DoctorRunAcceptedStatusEnum? status) => _$this._status = status;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DoctorRunAcceptedBuilder() {
    DoctorRunAccepted._defaults(this);
  }

  DoctorRunAcceptedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _status = $v.status;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorRunAccepted other) {
    _$v = other as _$DoctorRunAccepted;
  }

  @override
  void update(void Function(DoctorRunAcceptedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorRunAccepted build() => _build();

  _$DoctorRunAccepted _build() {
    final _$result = _$v ??
        _$DoctorRunAccepted._(
          reportId: BuiltValueNullFieldError.checkNotNull(
              reportId, r'DoctorRunAccepted', 'reportId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'DoctorRunAccepted', 'status'),
          location: BuiltValueNullFieldError.checkNotNull(
              location, r'DoctorRunAccepted', 'location'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
