// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_import.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReferenceImportDatasetEnum _$referenceImportDatasetEnum_ucdpGed =
    const ReferenceImportDatasetEnum._('ucdpGed');
const ReferenceImportDatasetEnum _$referenceImportDatasetEnum_acled =
    const ReferenceImportDatasetEnum._('acled');
const ReferenceImportDatasetEnum _$referenceImportDatasetEnum_usgsComcat =
    const ReferenceImportDatasetEnum._('usgsComcat');
const ReferenceImportDatasetEnum _$referenceImportDatasetEnum_gdacs =
    const ReferenceImportDatasetEnum._('gdacs');

ReferenceImportDatasetEnum _$referenceImportDatasetEnumValueOf(String name) {
  switch (name) {
    case 'ucdpGed':
      return _$referenceImportDatasetEnum_ucdpGed;
    case 'acled':
      return _$referenceImportDatasetEnum_acled;
    case 'usgsComcat':
      return _$referenceImportDatasetEnum_usgsComcat;
    case 'gdacs':
      return _$referenceImportDatasetEnum_gdacs;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceImportDatasetEnum> _$referenceImportDatasetEnumValues =
    BuiltSet<ReferenceImportDatasetEnum>(const <ReferenceImportDatasetEnum>[
  _$referenceImportDatasetEnum_ucdpGed,
  _$referenceImportDatasetEnum_acled,
  _$referenceImportDatasetEnum_usgsComcat,
  _$referenceImportDatasetEnum_gdacs,
]);

const ReferenceImportStatusEnum _$referenceImportStatusEnum_queued =
    const ReferenceImportStatusEnum._('queued');
const ReferenceImportStatusEnum _$referenceImportStatusEnum_running =
    const ReferenceImportStatusEnum._('running');
const ReferenceImportStatusEnum _$referenceImportStatusEnum_done =
    const ReferenceImportStatusEnum._('done');
const ReferenceImportStatusEnum _$referenceImportStatusEnum_failed =
    const ReferenceImportStatusEnum._('failed');
const ReferenceImportStatusEnum _$referenceImportStatusEnum_skipped =
    const ReferenceImportStatusEnum._('skipped');
const ReferenceImportStatusEnum _$referenceImportStatusEnum_cancelled =
    const ReferenceImportStatusEnum._('cancelled');

ReferenceImportStatusEnum _$referenceImportStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$referenceImportStatusEnum_queued;
    case 'running':
      return _$referenceImportStatusEnum_running;
    case 'done':
      return _$referenceImportStatusEnum_done;
    case 'failed':
      return _$referenceImportStatusEnum_failed;
    case 'skipped':
      return _$referenceImportStatusEnum_skipped;
    case 'cancelled':
      return _$referenceImportStatusEnum_cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceImportStatusEnum> _$referenceImportStatusEnumValues =
    BuiltSet<ReferenceImportStatusEnum>(const <ReferenceImportStatusEnum>[
  _$referenceImportStatusEnum_queued,
  _$referenceImportStatusEnum_running,
  _$referenceImportStatusEnum_done,
  _$referenceImportStatusEnum_failed,
  _$referenceImportStatusEnum_skipped,
  _$referenceImportStatusEnum_cancelled,
]);

const ReferenceImportEgressEnum _$referenceImportEgressEnum_OPEN =
    const ReferenceImportEgressEnum._('OPEN');
const ReferenceImportEgressEnum _$referenceImportEgressEnum_LOCAL_ONLY =
    const ReferenceImportEgressEnum._('LOCAL_ONLY');

ReferenceImportEgressEnum _$referenceImportEgressEnumValueOf(String name) {
  switch (name) {
    case 'OPEN':
      return _$referenceImportEgressEnum_OPEN;
    case 'LOCAL_ONLY':
      return _$referenceImportEgressEnum_LOCAL_ONLY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceImportEgressEnum> _$referenceImportEgressEnumValues =
    BuiltSet<ReferenceImportEgressEnum>(const <ReferenceImportEgressEnum>[
  _$referenceImportEgressEnum_OPEN,
  _$referenceImportEgressEnum_LOCAL_ONLY,
]);

Serializer<ReferenceImportDatasetEnum> _$referenceImportDatasetEnumSerializer =
    _$ReferenceImportDatasetEnumSerializer();
Serializer<ReferenceImportStatusEnum> _$referenceImportStatusEnumSerializer =
    _$ReferenceImportStatusEnumSerializer();
Serializer<ReferenceImportEgressEnum> _$referenceImportEgressEnumSerializer =
    _$ReferenceImportEgressEnumSerializer();

class _$ReferenceImportDatasetEnumSerializer
    implements PrimitiveSerializer<ReferenceImportDatasetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ucdpGed': 'ucdp-ged',
    'acled': 'acled',
    'usgsComcat': 'usgs-comcat',
    'gdacs': 'gdacs',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ucdp-ged': 'ucdpGed',
    'acled': 'acled',
    'usgs-comcat': 'usgsComcat',
    'gdacs': 'gdacs',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceImportDatasetEnum];
  @override
  final String wireName = 'ReferenceImportDatasetEnum';

  @override
  Object serialize(Serializers serializers, ReferenceImportDatasetEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReferenceImportDatasetEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReferenceImportDatasetEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReferenceImportStatusEnumSerializer
    implements PrimitiveSerializer<ReferenceImportStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'skipped': 'skipped',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'skipped': 'skipped',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceImportStatusEnum];
  @override
  final String wireName = 'ReferenceImportStatusEnum';

  @override
  Object serialize(Serializers serializers, ReferenceImportStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReferenceImportStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReferenceImportStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReferenceImportEgressEnumSerializer
    implements PrimitiveSerializer<ReferenceImportEgressEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN': 'OPEN',
    'LOCAL_ONLY': 'LOCAL_ONLY',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceImportEgressEnum];
  @override
  final String wireName = 'ReferenceImportEgressEnum';

  @override
  Object serialize(Serializers serializers, ReferenceImportEgressEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReferenceImportEgressEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReferenceImportEgressEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReferenceImport extends ReferenceImport {
  @override
  final String id;
  @override
  final ReferenceImportDatasetEnum dataset;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final ReferenceImportStatusEnum status;
  @override
  final String? statusReason;
  @override
  final num? progress;
  @override
  final String? fileSha256;
  @override
  final int rowsRead;
  @override
  final int rowsWritten;
  @override
  final Date? periodFrom;
  @override
  final Date? periodTo;
  @override
  final String licence;
  @override
  final ReferenceImportEgressEnum egress;
  @override
  final String? jobId;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? error;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;

  factory _$ReferenceImport([void Function(ReferenceImportBuilder)? updates]) =>
      (ReferenceImportBuilder()..update(updates))._build();

  _$ReferenceImport._(
      {required this.id,
      required this.dataset,
      this.params,
      required this.status,
      this.statusReason,
      this.progress,
      this.fileSha256,
      required this.rowsRead,
      required this.rowsWritten,
      this.periodFrom,
      this.periodTo,
      required this.licence,
      required this.egress,
      this.jobId,
      this.startedAt,
      this.finishedAt,
      this.error,
      required this.createdBy,
      required this.createdAt})
      : super._();
  @override
  ReferenceImport rebuild(void Function(ReferenceImportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceImportBuilder toBuilder() => ReferenceImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceImport &&
        id == other.id &&
        dataset == other.dataset &&
        params == other.params &&
        status == other.status &&
        statusReason == other.statusReason &&
        progress == other.progress &&
        fileSha256 == other.fileSha256 &&
        rowsRead == other.rowsRead &&
        rowsWritten == other.rowsWritten &&
        periodFrom == other.periodFrom &&
        periodTo == other.periodTo &&
        licence == other.licence &&
        egress == other.egress &&
        jobId == other.jobId &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        error == other.error &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dataset.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusReason.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, fileSha256.hashCode);
    _$hash = $jc(_$hash, rowsRead.hashCode);
    _$hash = $jc(_$hash, rowsWritten.hashCode);
    _$hash = $jc(_$hash, periodFrom.hashCode);
    _$hash = $jc(_$hash, periodTo.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceImport')
          ..add('id', id)
          ..add('dataset', dataset)
          ..add('params', params)
          ..add('status', status)
          ..add('statusReason', statusReason)
          ..add('progress', progress)
          ..add('fileSha256', fileSha256)
          ..add('rowsRead', rowsRead)
          ..add('rowsWritten', rowsWritten)
          ..add('periodFrom', periodFrom)
          ..add('periodTo', periodTo)
          ..add('licence', licence)
          ..add('egress', egress)
          ..add('jobId', jobId)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('error', error)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ReferenceImportBuilder
    implements Builder<ReferenceImport, ReferenceImportBuilder> {
  _$ReferenceImport? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ReferenceImportDatasetEnum? _dataset;
  ReferenceImportDatasetEnum? get dataset => _$this._dataset;
  set dataset(ReferenceImportDatasetEnum? dataset) => _$this._dataset = dataset;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  ReferenceImportStatusEnum? _status;
  ReferenceImportStatusEnum? get status => _$this._status;
  set status(ReferenceImportStatusEnum? status) => _$this._status = status;

  String? _statusReason;
  String? get statusReason => _$this._statusReason;
  set statusReason(String? statusReason) => _$this._statusReason = statusReason;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  String? _fileSha256;
  String? get fileSha256 => _$this._fileSha256;
  set fileSha256(String? fileSha256) => _$this._fileSha256 = fileSha256;

  int? _rowsRead;
  int? get rowsRead => _$this._rowsRead;
  set rowsRead(int? rowsRead) => _$this._rowsRead = rowsRead;

  int? _rowsWritten;
  int? get rowsWritten => _$this._rowsWritten;
  set rowsWritten(int? rowsWritten) => _$this._rowsWritten = rowsWritten;

  Date? _periodFrom;
  Date? get periodFrom => _$this._periodFrom;
  set periodFrom(Date? periodFrom) => _$this._periodFrom = periodFrom;

  Date? _periodTo;
  Date? get periodTo => _$this._periodTo;
  set periodTo(Date? periodTo) => _$this._periodTo = periodTo;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  ReferenceImportEgressEnum? _egress;
  ReferenceImportEgressEnum? get egress => _$this._egress;
  set egress(ReferenceImportEgressEnum? egress) => _$this._egress = egress;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ReferenceImportBuilder() {
    ReferenceImport._defaults(this);
  }

  ReferenceImportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dataset = $v.dataset;
      _params = $v.params?.toBuilder();
      _status = $v.status;
      _statusReason = $v.statusReason;
      _progress = $v.progress;
      _fileSha256 = $v.fileSha256;
      _rowsRead = $v.rowsRead;
      _rowsWritten = $v.rowsWritten;
      _periodFrom = $v.periodFrom;
      _periodTo = $v.periodTo;
      _licence = $v.licence;
      _egress = $v.egress;
      _jobId = $v.jobId;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _error = $v.error;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceImport other) {
    _$v = other as _$ReferenceImport;
  }

  @override
  void update(void Function(ReferenceImportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceImport build() => _build();

  _$ReferenceImport _build() {
    _$ReferenceImport _$result;
    try {
      _$result = _$v ??
          _$ReferenceImport._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ReferenceImport', 'id'),
            dataset: BuiltValueNullFieldError.checkNotNull(
                dataset, r'ReferenceImport', 'dataset'),
            params: _params?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ReferenceImport', 'status'),
            statusReason: statusReason,
            progress: progress,
            fileSha256: fileSha256,
            rowsRead: BuiltValueNullFieldError.checkNotNull(
                rowsRead, r'ReferenceImport', 'rowsRead'),
            rowsWritten: BuiltValueNullFieldError.checkNotNull(
                rowsWritten, r'ReferenceImport', 'rowsWritten'),
            periodFrom: periodFrom,
            periodTo: periodTo,
            licence: BuiltValueNullFieldError.checkNotNull(
                licence, r'ReferenceImport', 'licence'),
            egress: BuiltValueNullFieldError.checkNotNull(
                egress, r'ReferenceImport', 'egress'),
            jobId: jobId,
            startedAt: startedAt,
            finishedAt: finishedAt,
            error: error,
            createdBy: BuiltValueNullFieldError.checkNotNull(
                createdBy, r'ReferenceImport', 'createdBy'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ReferenceImport', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ReferenceImport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
