// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FetchLogEntryTriggerEnum _$fetchLogEntryTriggerEnum_SCHEDULED =
    const FetchLogEntryTriggerEnum._('SCHEDULED');
const FetchLogEntryTriggerEnum _$fetchLogEntryTriggerEnum_MANUAL =
    const FetchLogEntryTriggerEnum._('MANUAL');
const FetchLogEntryTriggerEnum _$fetchLogEntryTriggerEnum_STREAM =
    const FetchLogEntryTriggerEnum._('STREAM');
const FetchLogEntryTriggerEnum _$fetchLogEntryTriggerEnum_PUSH =
    const FetchLogEntryTriggerEnum._('PUSH');

FetchLogEntryTriggerEnum _$fetchLogEntryTriggerEnumValueOf(String name) {
  switch (name) {
    case 'SCHEDULED':
      return _$fetchLogEntryTriggerEnum_SCHEDULED;
    case 'MANUAL':
      return _$fetchLogEntryTriggerEnum_MANUAL;
    case 'STREAM':
      return _$fetchLogEntryTriggerEnum_STREAM;
    case 'PUSH':
      return _$fetchLogEntryTriggerEnum_PUSH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FetchLogEntryTriggerEnum> _$fetchLogEntryTriggerEnumValues =
    BuiltSet<FetchLogEntryTriggerEnum>(const <FetchLogEntryTriggerEnum>[
      _$fetchLogEntryTriggerEnum_SCHEDULED,
      _$fetchLogEntryTriggerEnum_MANUAL,
      _$fetchLogEntryTriggerEnum_STREAM,
      _$fetchLogEntryTriggerEnum_PUSH,
    ]);

const FetchLogEntryStatusEnum _$fetchLogEntryStatusEnum_OK =
    const FetchLogEntryStatusEnum._('OK');
const FetchLogEntryStatusEnum _$fetchLogEntryStatusEnum_NOT_MODIFIED =
    const FetchLogEntryStatusEnum._('NOT_MODIFIED');
const FetchLogEntryStatusEnum _$fetchLogEntryStatusEnum_FAILED =
    const FetchLogEntryStatusEnum._('FAILED');
const FetchLogEntryStatusEnum _$fetchLogEntryStatusEnum_REFUSED =
    const FetchLogEntryStatusEnum._('REFUSED');
const FetchLogEntryStatusEnum _$fetchLogEntryStatusEnum_DISCARDED =
    const FetchLogEntryStatusEnum._('DISCARDED');

FetchLogEntryStatusEnum _$fetchLogEntryStatusEnumValueOf(String name) {
  switch (name) {
    case 'OK':
      return _$fetchLogEntryStatusEnum_OK;
    case 'NOT_MODIFIED':
      return _$fetchLogEntryStatusEnum_NOT_MODIFIED;
    case 'FAILED':
      return _$fetchLogEntryStatusEnum_FAILED;
    case 'REFUSED':
      return _$fetchLogEntryStatusEnum_REFUSED;
    case 'DISCARDED':
      return _$fetchLogEntryStatusEnum_DISCARDED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FetchLogEntryStatusEnum> _$fetchLogEntryStatusEnumValues =
    BuiltSet<FetchLogEntryStatusEnum>(const <FetchLogEntryStatusEnum>[
      _$fetchLogEntryStatusEnum_OK,
      _$fetchLogEntryStatusEnum_NOT_MODIFIED,
      _$fetchLogEntryStatusEnum_FAILED,
      _$fetchLogEntryStatusEnum_REFUSED,
      _$fetchLogEntryStatusEnum_DISCARDED,
    ]);

Serializer<FetchLogEntryTriggerEnum> _$fetchLogEntryTriggerEnumSerializer =
    _$FetchLogEntryTriggerEnumSerializer();
Serializer<FetchLogEntryStatusEnum> _$fetchLogEntryStatusEnumSerializer =
    _$FetchLogEntryStatusEnumSerializer();

class _$FetchLogEntryTriggerEnumSerializer
    implements PrimitiveSerializer<FetchLogEntryTriggerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SCHEDULED': 'SCHEDULED',
    'MANUAL': 'MANUAL',
    'STREAM': 'STREAM',
    'PUSH': 'PUSH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SCHEDULED': 'SCHEDULED',
    'MANUAL': 'MANUAL',
    'STREAM': 'STREAM',
    'PUSH': 'PUSH',
  };

  @override
  final Iterable<Type> types = const <Type>[FetchLogEntryTriggerEnum];
  @override
  final String wireName = 'FetchLogEntryTriggerEnum';

  @override
  Object serialize(
    Serializers serializers,
    FetchLogEntryTriggerEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FetchLogEntryTriggerEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FetchLogEntryTriggerEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FetchLogEntryStatusEnumSerializer
    implements PrimitiveSerializer<FetchLogEntryStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'OK': 'OK',
    'NOT_MODIFIED': 'NOT_MODIFIED',
    'FAILED': 'FAILED',
    'REFUSED': 'REFUSED',
    'DISCARDED': 'DISCARDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OK': 'OK',
    'NOT_MODIFIED': 'NOT_MODIFIED',
    'FAILED': 'FAILED',
    'REFUSED': 'REFUSED',
    'DISCARDED': 'DISCARDED',
  };

  @override
  final Iterable<Type> types = const <Type>[FetchLogEntryStatusEnum];
  @override
  final String wireName = 'FetchLogEntryStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    FetchLogEntryStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FetchLogEntryStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FetchLogEntryStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FetchLogEntry extends FetchLogEntry {
  @override
  final int id;
  @override
  final FetchLogEntryTriggerEnum trigger;
  @override
  final FetchLogEntryStatusEnum status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? receivedAt;
  @override
  final DateTime? ingestedAt;
  @override
  final int? httpStatus;
  @override
  final int? requestCount;
  @override
  final String? urlRedacted;
  @override
  final String? etag;
  @override
  final int? bytes;
  @override
  final String? bodySha256;
  @override
  final String? adapterVersion;
  @override
  final String? licence;
  @override
  final String? principal;
  @override
  final int? recordsSeen;
  @override
  final int? rejected;
  @override
  final int? late_;
  @override
  final int? skipped;
  @override
  final int? versionsWritten;
  @override
  final int? liveUpdates;
  @override
  final int? touches;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final Coverage? coverage;
  @override
  final String? error;
  @override
  final String? runId;

  factory _$FetchLogEntry([void Function(FetchLogEntryBuilder)? updates]) =>
      (FetchLogEntryBuilder()..update(updates))._build();

  _$FetchLogEntry._({
    required this.id,
    required this.trigger,
    required this.status,
    required this.startedAt,
    this.receivedAt,
    this.ingestedAt,
    this.httpStatus,
    this.requestCount,
    this.urlRedacted,
    this.etag,
    this.bytes,
    this.bodySha256,
    this.adapterVersion,
    this.licence,
    this.principal,
    this.recordsSeen,
    this.rejected,
    this.late_,
    this.skipped,
    this.versionsWritten,
    this.liveUpdates,
    this.touches,
    this.fromSeq,
    this.toSeq,
    this.coverage,
    this.error,
    this.runId,
  }) : super._();
  @override
  FetchLogEntry rebuild(void Function(FetchLogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchLogEntryBuilder toBuilder() => FetchLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchLogEntry &&
        id == other.id &&
        trigger == other.trigger &&
        status == other.status &&
        startedAt == other.startedAt &&
        receivedAt == other.receivedAt &&
        ingestedAt == other.ingestedAt &&
        httpStatus == other.httpStatus &&
        requestCount == other.requestCount &&
        urlRedacted == other.urlRedacted &&
        etag == other.etag &&
        bytes == other.bytes &&
        bodySha256 == other.bodySha256 &&
        adapterVersion == other.adapterVersion &&
        licence == other.licence &&
        principal == other.principal &&
        recordsSeen == other.recordsSeen &&
        rejected == other.rejected &&
        late_ == other.late_ &&
        skipped == other.skipped &&
        versionsWritten == other.versionsWritten &&
        liveUpdates == other.liveUpdates &&
        touches == other.touches &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        coverage == other.coverage &&
        error == other.error &&
        runId == other.runId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jc(_$hash, ingestedAt.hashCode);
    _$hash = $jc(_$hash, httpStatus.hashCode);
    _$hash = $jc(_$hash, requestCount.hashCode);
    _$hash = $jc(_$hash, urlRedacted.hashCode);
    _$hash = $jc(_$hash, etag.hashCode);
    _$hash = $jc(_$hash, bytes.hashCode);
    _$hash = $jc(_$hash, bodySha256.hashCode);
    _$hash = $jc(_$hash, adapterVersion.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, recordsSeen.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jc(_$hash, late_.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, versionsWritten.hashCode);
    _$hash = $jc(_$hash, liveUpdates.hashCode);
    _$hash = $jc(_$hash, touches.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, coverage.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, runId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FetchLogEntry')
          ..add('id', id)
          ..add('trigger', trigger)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('receivedAt', receivedAt)
          ..add('ingestedAt', ingestedAt)
          ..add('httpStatus', httpStatus)
          ..add('requestCount', requestCount)
          ..add('urlRedacted', urlRedacted)
          ..add('etag', etag)
          ..add('bytes', bytes)
          ..add('bodySha256', bodySha256)
          ..add('adapterVersion', adapterVersion)
          ..add('licence', licence)
          ..add('principal', principal)
          ..add('recordsSeen', recordsSeen)
          ..add('rejected', rejected)
          ..add('late_', late_)
          ..add('skipped', skipped)
          ..add('versionsWritten', versionsWritten)
          ..add('liveUpdates', liveUpdates)
          ..add('touches', touches)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('coverage', coverage)
          ..add('error', error)
          ..add('runId', runId))
        .toString();
  }
}

class FetchLogEntryBuilder
    implements Builder<FetchLogEntry, FetchLogEntryBuilder> {
  _$FetchLogEntry? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  FetchLogEntryTriggerEnum? _trigger;
  FetchLogEntryTriggerEnum? get trigger => _$this._trigger;
  set trigger(FetchLogEntryTriggerEnum? trigger) => _$this._trigger = trigger;

  FetchLogEntryStatusEnum? _status;
  FetchLogEntryStatusEnum? get status => _$this._status;
  set status(FetchLogEntryStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  DateTime? _ingestedAt;
  DateTime? get ingestedAt => _$this._ingestedAt;
  set ingestedAt(DateTime? ingestedAt) => _$this._ingestedAt = ingestedAt;

  int? _httpStatus;
  int? get httpStatus => _$this._httpStatus;
  set httpStatus(int? httpStatus) => _$this._httpStatus = httpStatus;

  int? _requestCount;
  int? get requestCount => _$this._requestCount;
  set requestCount(int? requestCount) => _$this._requestCount = requestCount;

  String? _urlRedacted;
  String? get urlRedacted => _$this._urlRedacted;
  set urlRedacted(String? urlRedacted) => _$this._urlRedacted = urlRedacted;

  String? _etag;
  String? get etag => _$this._etag;
  set etag(String? etag) => _$this._etag = etag;

  int? _bytes;
  int? get bytes => _$this._bytes;
  set bytes(int? bytes) => _$this._bytes = bytes;

  String? _bodySha256;
  String? get bodySha256 => _$this._bodySha256;
  set bodySha256(String? bodySha256) => _$this._bodySha256 = bodySha256;

  String? _adapterVersion;
  String? get adapterVersion => _$this._adapterVersion;
  set adapterVersion(String? adapterVersion) =>
      _$this._adapterVersion = adapterVersion;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  int? _recordsSeen;
  int? get recordsSeen => _$this._recordsSeen;
  set recordsSeen(int? recordsSeen) => _$this._recordsSeen = recordsSeen;

  int? _rejected;
  int? get rejected => _$this._rejected;
  set rejected(int? rejected) => _$this._rejected = rejected;

  int? _late_;
  int? get late_ => _$this._late_;
  set late_(int? late_) => _$this._late_ = late_;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  int? _versionsWritten;
  int? get versionsWritten => _$this._versionsWritten;
  set versionsWritten(int? versionsWritten) =>
      _$this._versionsWritten = versionsWritten;

  int? _liveUpdates;
  int? get liveUpdates => _$this._liveUpdates;
  set liveUpdates(int? liveUpdates) => _$this._liveUpdates = liveUpdates;

  int? _touches;
  int? get touches => _$this._touches;
  set touches(int? touches) => _$this._touches = touches;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  CoverageBuilder? _coverage;
  CoverageBuilder get coverage => _$this._coverage ??= CoverageBuilder();
  set coverage(CoverageBuilder? coverage) => _$this._coverage = coverage;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _runId;
  String? get runId => _$this._runId;
  set runId(String? runId) => _$this._runId = runId;

  FetchLogEntryBuilder() {
    FetchLogEntry._defaults(this);
  }

  FetchLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _trigger = $v.trigger;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _receivedAt = $v.receivedAt;
      _ingestedAt = $v.ingestedAt;
      _httpStatus = $v.httpStatus;
      _requestCount = $v.requestCount;
      _urlRedacted = $v.urlRedacted;
      _etag = $v.etag;
      _bytes = $v.bytes;
      _bodySha256 = $v.bodySha256;
      _adapterVersion = $v.adapterVersion;
      _licence = $v.licence;
      _principal = $v.principal;
      _recordsSeen = $v.recordsSeen;
      _rejected = $v.rejected;
      _late_ = $v.late_;
      _skipped = $v.skipped;
      _versionsWritten = $v.versionsWritten;
      _liveUpdates = $v.liveUpdates;
      _touches = $v.touches;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _coverage = $v.coverage?.toBuilder();
      _error = $v.error;
      _runId = $v.runId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchLogEntry other) {
    _$v = other as _$FetchLogEntry;
  }

  @override
  void update(void Function(FetchLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FetchLogEntry build() => _build();

  _$FetchLogEntry _build() {
    _$FetchLogEntry _$result;
    try {
      _$result =
          _$v ??
          _$FetchLogEntry._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'FetchLogEntry',
              'id',
            ),
            trigger: BuiltValueNullFieldError.checkNotNull(
              trigger,
              r'FetchLogEntry',
              'trigger',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'FetchLogEntry',
              'status',
            ),
            startedAt: BuiltValueNullFieldError.checkNotNull(
              startedAt,
              r'FetchLogEntry',
              'startedAt',
            ),
            receivedAt: receivedAt,
            ingestedAt: ingestedAt,
            httpStatus: httpStatus,
            requestCount: requestCount,
            urlRedacted: urlRedacted,
            etag: etag,
            bytes: bytes,
            bodySha256: bodySha256,
            adapterVersion: adapterVersion,
            licence: licence,
            principal: principal,
            recordsSeen: recordsSeen,
            rejected: rejected,
            late_: late_,
            skipped: skipped,
            versionsWritten: versionsWritten,
            liveUpdates: liveUpdates,
            touches: touches,
            fromSeq: fromSeq,
            toSeq: toSeq,
            coverage: _coverage?.build(),
            error: error,
            runId: runId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverage';
        _coverage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FetchLogEntry',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
