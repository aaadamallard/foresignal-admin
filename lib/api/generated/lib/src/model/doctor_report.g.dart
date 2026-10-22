// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorReportTriggerEnum _$doctorReportTriggerEnum_MANUAL =
    const DoctorReportTriggerEnum._('MANUAL');
const DoctorReportTriggerEnum _$doctorReportTriggerEnum_AUTO =
    const DoctorReportTriggerEnum._('AUTO');
const DoctorReportTriggerEnum _$doctorReportTriggerEnum_MCP =
    const DoctorReportTriggerEnum._('MCP');

DoctorReportTriggerEnum _$doctorReportTriggerEnumValueOf(String name) {
  switch (name) {
    case 'MANUAL':
      return _$doctorReportTriggerEnum_MANUAL;
    case 'AUTO':
      return _$doctorReportTriggerEnum_AUTO;
    case 'MCP':
      return _$doctorReportTriggerEnum_MCP;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportTriggerEnum> _$doctorReportTriggerEnumValues =
    BuiltSet<DoctorReportTriggerEnum>(const <DoctorReportTriggerEnum>[
  _$doctorReportTriggerEnum_MANUAL,
  _$doctorReportTriggerEnum_AUTO,
  _$doctorReportTriggerEnum_MCP,
]);

const DoctorReportStatusEnum _$doctorReportStatusEnum_OK =
    const DoctorReportStatusEnum._('OK');
const DoctorReportStatusEnum _$doctorReportStatusEnum_DEGRADED_INFO =
    const DoctorReportStatusEnum._('DEGRADED_INFO');
const DoctorReportStatusEnum _$doctorReportStatusEnum_BROKEN =
    const DoctorReportStatusEnum._('BROKEN');

DoctorReportStatusEnum _$doctorReportStatusEnumValueOf(String name) {
  switch (name) {
    case 'OK':
      return _$doctorReportStatusEnum_OK;
    case 'DEGRADED_INFO':
      return _$doctorReportStatusEnum_DEGRADED_INFO;
    case 'BROKEN':
      return _$doctorReportStatusEnum_BROKEN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportStatusEnum> _$doctorReportStatusEnumValues =
    BuiltSet<DoctorReportStatusEnum>(const <DoctorReportStatusEnum>[
  _$doctorReportStatusEnum_OK,
  _$doctorReportStatusEnum_DEGRADED_INFO,
  _$doctorReportStatusEnum_BROKEN,
]);

Serializer<DoctorReportTriggerEnum> _$doctorReportTriggerEnumSerializer =
    _$DoctorReportTriggerEnumSerializer();
Serializer<DoctorReportStatusEnum> _$doctorReportStatusEnumSerializer =
    _$DoctorReportStatusEnumSerializer();

class _$DoctorReportTriggerEnumSerializer
    implements PrimitiveSerializer<DoctorReportTriggerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MANUAL': 'MANUAL',
    'AUTO': 'AUTO',
    'MCP': 'MCP',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MANUAL': 'MANUAL',
    'AUTO': 'AUTO',
    'MCP': 'MCP',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorReportTriggerEnum];
  @override
  final String wireName = 'DoctorReportTriggerEnum';

  @override
  Object serialize(Serializers serializers, DoctorReportTriggerEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DoctorReportTriggerEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DoctorReportTriggerEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DoctorReportStatusEnumSerializer
    implements PrimitiveSerializer<DoctorReportStatusEnum> {
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
  final Iterable<Type> types = const <Type>[DoctorReportStatusEnum];
  @override
  final String wireName = 'DoctorReportStatusEnum';

  @override
  Object serialize(Serializers serializers, DoctorReportStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DoctorReportStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DoctorReportStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DoctorReport extends DoctorReport {
  @override
  final String id;
  @override
  final String sourceId;
  @override
  final DateTime createdAt;
  @override
  final DoctorReportTriggerEnum trigger;
  @override
  final DoctorReportStatusEnum status;
  @override
  final BuiltList<DoctorFinding> findings;
  @override
  final StructureDiff? diff;
  @override
  final DoctorReportProbe? probe;
  @override
  final DoctorReportFixture? fixture;
  @override
  final DoctorReportLlm? llm;
  @override
  final String? adapterVersion;

  factory _$DoctorReport([void Function(DoctorReportBuilder)? updates]) =>
      (DoctorReportBuilder()..update(updates))._build();

  _$DoctorReport._(
      {required this.id,
      required this.sourceId,
      required this.createdAt,
      required this.trigger,
      required this.status,
      required this.findings,
      this.diff,
      this.probe,
      this.fixture,
      this.llm,
      this.adapterVersion})
      : super._();
  @override
  DoctorReport rebuild(void Function(DoctorReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportBuilder toBuilder() => DoctorReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReport &&
        id == other.id &&
        sourceId == other.sourceId &&
        createdAt == other.createdAt &&
        trigger == other.trigger &&
        status == other.status &&
        findings == other.findings &&
        diff == other.diff &&
        probe == other.probe &&
        fixture == other.fixture &&
        llm == other.llm &&
        adapterVersion == other.adapterVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, findings.hashCode);
    _$hash = $jc(_$hash, diff.hashCode);
    _$hash = $jc(_$hash, probe.hashCode);
    _$hash = $jc(_$hash, fixture.hashCode);
    _$hash = $jc(_$hash, llm.hashCode);
    _$hash = $jc(_$hash, adapterVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReport')
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('createdAt', createdAt)
          ..add('trigger', trigger)
          ..add('status', status)
          ..add('findings', findings)
          ..add('diff', diff)
          ..add('probe', probe)
          ..add('fixture', fixture)
          ..add('llm', llm)
          ..add('adapterVersion', adapterVersion))
        .toString();
  }
}

class DoctorReportBuilder
    implements Builder<DoctorReport, DoctorReportBuilder> {
  _$DoctorReport? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DoctorReportTriggerEnum? _trigger;
  DoctorReportTriggerEnum? get trigger => _$this._trigger;
  set trigger(DoctorReportTriggerEnum? trigger) => _$this._trigger = trigger;

  DoctorReportStatusEnum? _status;
  DoctorReportStatusEnum? get status => _$this._status;
  set status(DoctorReportStatusEnum? status) => _$this._status = status;

  ListBuilder<DoctorFinding>? _findings;
  ListBuilder<DoctorFinding> get findings =>
      _$this._findings ??= ListBuilder<DoctorFinding>();
  set findings(ListBuilder<DoctorFinding>? findings) =>
      _$this._findings = findings;

  StructureDiffBuilder? _diff;
  StructureDiffBuilder get diff => _$this._diff ??= StructureDiffBuilder();
  set diff(StructureDiffBuilder? diff) => _$this._diff = diff;

  DoctorReportProbeBuilder? _probe;
  DoctorReportProbeBuilder get probe =>
      _$this._probe ??= DoctorReportProbeBuilder();
  set probe(DoctorReportProbeBuilder? probe) => _$this._probe = probe;

  DoctorReportFixtureBuilder? _fixture;
  DoctorReportFixtureBuilder get fixture =>
      _$this._fixture ??= DoctorReportFixtureBuilder();
  set fixture(DoctorReportFixtureBuilder? fixture) => _$this._fixture = fixture;

  DoctorReportLlmBuilder? _llm;
  DoctorReportLlmBuilder get llm => _$this._llm ??= DoctorReportLlmBuilder();
  set llm(DoctorReportLlmBuilder? llm) => _$this._llm = llm;

  String? _adapterVersion;
  String? get adapterVersion => _$this._adapterVersion;
  set adapterVersion(String? adapterVersion) =>
      _$this._adapterVersion = adapterVersion;

  DoctorReportBuilder() {
    DoctorReport._defaults(this);
  }

  DoctorReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sourceId = $v.sourceId;
      _createdAt = $v.createdAt;
      _trigger = $v.trigger;
      _status = $v.status;
      _findings = $v.findings.toBuilder();
      _diff = $v.diff?.toBuilder();
      _probe = $v.probe?.toBuilder();
      _fixture = $v.fixture?.toBuilder();
      _llm = $v.llm?.toBuilder();
      _adapterVersion = $v.adapterVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReport other) {
    _$v = other as _$DoctorReport;
  }

  @override
  void update(void Function(DoctorReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReport build() => _build();

  _$DoctorReport _build() {
    _$DoctorReport _$result;
    try {
      _$result = _$v ??
          _$DoctorReport._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DoctorReport', 'id'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'DoctorReport', 'sourceId'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'DoctorReport', 'createdAt'),
            trigger: BuiltValueNullFieldError.checkNotNull(
                trigger, r'DoctorReport', 'trigger'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DoctorReport', 'status'),
            findings: findings.build(),
            diff: _diff?.build(),
            probe: _probe?.build(),
            fixture: _fixture?.build(),
            llm: _llm?.build(),
            adapterVersion: adapterVersion,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'findings';
        findings.build();
        _$failedField = 'diff';
        _diff?.build();
        _$failedField = 'probe';
        _probe?.build();
        _$failedField = 'fixture';
        _fixture?.build();
        _$failedField = 'llm';
        _llm?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DoctorReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
