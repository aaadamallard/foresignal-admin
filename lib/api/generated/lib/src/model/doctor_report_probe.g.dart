// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_report_probe.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorReportProbeSkipReasonEnum _$doctorReportProbeSkipReasonEnum_budget =
    const DoctorReportProbeSkipReasonEnum._('budget');
const DoctorReportProbeSkipReasonEnum
    _$doctorReportProbeSkipReasonEnum_backoff =
    const DoctorReportProbeSkipReasonEnum._('backoff');
const DoctorReportProbeSkipReasonEnum
    _$doctorReportProbeSkipReasonEnum_noUpstream =
    const DoctorReportProbeSkipReasonEnum._('noUpstream');
const DoctorReportProbeSkipReasonEnum
    _$doctorReportProbeSkipReasonEnum_notRequested =
    const DoctorReportProbeSkipReasonEnum._('notRequested');

DoctorReportProbeSkipReasonEnum _$doctorReportProbeSkipReasonEnumValueOf(
    String name) {
  switch (name) {
    case 'budget':
      return _$doctorReportProbeSkipReasonEnum_budget;
    case 'backoff':
      return _$doctorReportProbeSkipReasonEnum_backoff;
    case 'noUpstream':
      return _$doctorReportProbeSkipReasonEnum_noUpstream;
    case 'notRequested':
      return _$doctorReportProbeSkipReasonEnum_notRequested;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorReportProbeSkipReasonEnum>
    _$doctorReportProbeSkipReasonEnumValues = BuiltSet<
        DoctorReportProbeSkipReasonEnum>(const <DoctorReportProbeSkipReasonEnum>[
  _$doctorReportProbeSkipReasonEnum_budget,
  _$doctorReportProbeSkipReasonEnum_backoff,
  _$doctorReportProbeSkipReasonEnum_noUpstream,
  _$doctorReportProbeSkipReasonEnum_notRequested,
]);

Serializer<DoctorReportProbeSkipReasonEnum>
    _$doctorReportProbeSkipReasonEnumSerializer =
    _$DoctorReportProbeSkipReasonEnumSerializer();

class _$DoctorReportProbeSkipReasonEnumSerializer
    implements PrimitiveSerializer<DoctorReportProbeSkipReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'budget': 'budget',
    'backoff': 'backoff',
    'noUpstream': 'no-upstream',
    'notRequested': 'not-requested',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'budget': 'budget',
    'backoff': 'backoff',
    'no-upstream': 'noUpstream',
    'not-requested': 'notRequested',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorReportProbeSkipReasonEnum];
  @override
  final String wireName = 'DoctorReportProbeSkipReasonEnum';

  @override
  Object serialize(
          Serializers serializers, DoctorReportProbeSkipReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DoctorReportProbeSkipReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DoctorReportProbeSkipReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DoctorReportProbe extends DoctorReportProbe {
  @override
  final bool skipped;
  @override
  final String? status;
  @override
  final int? httpStatus;
  @override
  final String? contentType;
  @override
  final int? bytes;
  @override
  final String? url;
  @override
  final int? durationMs;
  @override
  final DoctorReportProbeSkipReasonEnum? skipReason;
  @override
  final int? records;
  @override
  final int? requests;
  @override
  final String? error;

  factory _$DoctorReportProbe(
          [void Function(DoctorReportProbeBuilder)? updates]) =>
      (DoctorReportProbeBuilder()..update(updates))._build();

  _$DoctorReportProbe._(
      {required this.skipped,
      this.status,
      this.httpStatus,
      this.contentType,
      this.bytes,
      this.url,
      this.durationMs,
      this.skipReason,
      this.records,
      this.requests,
      this.error})
      : super._();
  @override
  DoctorReportProbe rebuild(void Function(DoctorReportProbeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorReportProbeBuilder toBuilder() =>
      DoctorReportProbeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorReportProbe &&
        skipped == other.skipped &&
        status == other.status &&
        httpStatus == other.httpStatus &&
        contentType == other.contentType &&
        bytes == other.bytes &&
        url == other.url &&
        durationMs == other.durationMs &&
        skipReason == other.skipReason &&
        records == other.records &&
        requests == other.requests &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, httpStatus.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jc(_$hash, skipReason.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorReportProbe')
          ..add('skipped', skipped)
          ..add('status', status)
          ..add('httpStatus', httpStatus)
          ..add('contentType', contentType)
          ..add('bytes', bytes)
          ..add('url', url)
          ..add('durationMs', durationMs)
          ..add('skipReason', skipReason)
          ..add('records', records)
          ..add('requests', requests)
          ..add('error', error))
        .toString();
  }
}

class DoctorReportProbeBuilder
    implements Builder<DoctorReportProbe, DoctorReportProbeBuilder> {
  _$DoctorReportProbe? _$v;

  bool? _skipped;
  bool? get skipped => _$this._skipped;
  set skipped(bool? skipped) => _$this._skipped = skipped;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _httpStatus;
  int? get httpStatus => _$this._httpStatus;
  set httpStatus(int? httpStatus) => _$this._httpStatus = httpStatus;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  DoctorReportProbeSkipReasonEnum? _skipReason;
  DoctorReportProbeSkipReasonEnum? get skipReason => _$this._skipReason;
  set skipReason(DoctorReportProbeSkipReasonEnum? skipReason) =>
      _$this._skipReason = skipReason;

  int? _records;
  int? get records => _$this._records;
  set records(int? records) => _$this._records = records;

  int? _requests;
  int? get requests => _$this._requests;
  set requests(int? requests) => _$this._requests = requests;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DoctorReportProbeBuilder() {
    DoctorReportProbe._defaults(this);
  }

  DoctorReportProbeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _skipped = $v.skipped;
      _status = $v.status;
      _httpStatus = $v.httpStatus;
      _contentType = $v.contentType;
      _bytes = $v.bytes;
      _url = $v.url;
      _durationMs = $v.durationMs;
      _skipReason = $v.skipReason;
      _records = $v.records;
      _requests = $v.requests;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorReportProbe other) {
    _$v = other as _$DoctorReportProbe;
  }

  @override
  void update(void Function(DoctorReportProbeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorReportProbe build() => _build();

  _$DoctorReportProbe _build() {
    final _$result = _$v ??
        _$DoctorReportProbe._(
          skipped: BuiltValueNullFieldError.checkNotNull(
              skipped, r'DoctorReportProbe', 'skipped'),
          status: status,
          httpStatus: httpStatus,
          contentType: contentType,
          bytes: bytes,
          url: url,
          durationMs: durationMs,
          skipReason: skipReason,
          records: records,
          requests: requests,
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
