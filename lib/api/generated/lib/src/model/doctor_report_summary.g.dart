// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorReportSummaryStatusEnum _$doctorReportSummaryStatusEnum_OK =
    const DoctorReportSummaryStatusEnum._('OK');
const DoctorReportSummaryStatusEnum
    _$doctorReportSummaryStatusEnum_DEGRADED_INFO =
    const DoctorReportSummaryStatusEnum._('DEGRADED_INFO');
const DoctorReportSummaryStatusEnum _$doctorReportSummaryStatusEnum_BROKEN =
    const DoctorReportSummaryStatusEnum._('BROKEN');

DoctorReportSummaryStatusEnum _$doctorReportSummaryStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'OK':
      return _$doctorReportSummaryStatusEnum_OK;
    case 'DEGRADED_INFO':
      return _$doctorReportSummaryStatusEnum_DEGRADED_INFO;
    case 'BROKEN':
      return _$doctorReportSummaryStatusEnum_BROKEN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportSummaryStatusEnum>
    _$doctorReportSummaryStatusEnumValues = BuiltSet<
        DoctorReportSummaryStatusEnum>(const <DoctorReportSummaryStatusEnum>[
  _$doctorReportSummaryStatusEnum_OK,
  _$doctorReportSummaryStatusEnum_DEGRADED_INFO,
  _$doctorReportSummaryStatusEnum_BROKEN,
]);

Serializer<DoctorReportSummaryStatusEnum>
    _$doctorReportSummaryStatusEnumSerializer =
    _$DoctorReportSummaryStatusEnumSerializer();

class _$DoctorReportSummaryStatusEnumSerializer
    implements PrimitiveSerializer<DoctorReportSummaryStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OK': 'OK',
    'DEGRADED_INFO': 'DEGRADED_INFO',
    'BROKEN': 'BROKEN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OK': 'OK',
    'DEGRADED_INFO': 'DEGRADED_INFO',
    'BROKEN': 'BROKEN',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorReportSummaryStatusEnum];
  @override
  final String wireName = 'DoctorReportSummaryStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DoctorReportSummaryStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DoctorReportSummaryStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DoctorReportSummaryStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DoctorReportSummary extends DoctorReportSummary {
  @override
  final String id;
  @override
  final DoctorReportSummaryStatusEnum status;
  @override
  final DoctorReportSummaryTopFinding? topFinding;
  @override
  final DateTime createdAt;

  factory _$DoctorReportSummary(
          [void Function(DoctorReportSummaryBuilder)? updates]) =>
      (DoctorReportSummaryBuilder()..update(updates))._build();

  _$DoctorReportSummary._(
      {required this.id,
      required this.status,
      this.topFinding,
      required this.createdAt})
      : super._();
  @override
  DoctorReportSummary rebuild(
          void Function(DoctorReportSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportSummaryBuilder toBuilder() =>
      DoctorReportSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportSummary &&
        id == other.id &&
        status == other.status &&
        topFinding == other.topFinding &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, topFinding.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReportSummary')
          ..add('id', id)
          ..add('status', status)
          ..add('topFinding', topFinding)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class DoctorReportSummaryBuilder
    implements Builder<DoctorReportSummary, DoctorReportSummaryBuilder> {
  _$DoctorReportSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DoctorReportSummaryStatusEnum? _status;
  DoctorReportSummaryStatusEnum? get status => _$this._status;
  set status(DoctorReportSummaryStatusEnum? status) => _$this._status = status;

  DoctorReportSummaryTopFindingBuilder? _topFinding;
  DoctorReportSummaryTopFindingBuilder get topFinding =>
      _$this._topFinding ??= DoctorReportSummaryTopFindingBuilder();
  set topFinding(DoctorReportSummaryTopFindingBuilder? topFinding) =>
      _$this._topFinding = topFinding;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DoctorReportSummaryBuilder() {
    DoctorReportSummary._defaults(this);
  }

  DoctorReportSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _topFinding = $v.topFinding?.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportSummary other) {
    _$v = other as _$DoctorReportSummary;
  }

  @override
  void update(void Function(DoctorReportSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportSummary build() => _build();

  _$DoctorReportSummary _build() {
    _$DoctorReportSummary _$result;
    try {
      _$result = _$v ??
          _$DoctorReportSummary._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DoctorReportSummary', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DoctorReportSummary', 'status'),
            topFinding: _topFinding?.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'DoctorReportSummary', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topFinding';
        _topFinding?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DoctorReportSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
