// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_run.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BriefingRunStatusEnum _$briefingRunStatusEnum_running =
    const BriefingRunStatusEnum._('running');
const BriefingRunStatusEnum _$briefingRunStatusEnum_succeeded =
    const BriefingRunStatusEnum._('succeeded');
const BriefingRunStatusEnum _$briefingRunStatusEnum_fallback =
    const BriefingRunStatusEnum._('fallback');
const BriefingRunStatusEnum _$briefingRunStatusEnum_failed =
    const BriefingRunStatusEnum._('failed');

BriefingRunStatusEnum _$briefingRunStatusEnumValueOf(String name) {
  switch (name) {
    case 'running':
      return _$briefingRunStatusEnum_running;
    case 'succeeded':
      return _$briefingRunStatusEnum_succeeded;
    case 'fallback':
      return _$briefingRunStatusEnum_fallback;
    case 'failed':
      return _$briefingRunStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BriefingRunStatusEnum> _$briefingRunStatusEnumValues =
    BuiltSet<BriefingRunStatusEnum>(const <BriefingRunStatusEnum>[
  _$briefingRunStatusEnum_running,
  _$briefingRunStatusEnum_succeeded,
  _$briefingRunStatusEnum_fallback,
  _$briefingRunStatusEnum_failed,
]);

const BriefingRunModeEnum _$briefingRunModeEnum_digest =
    const BriefingRunModeEnum._('digest');
const BriefingRunModeEnum _$briefingRunModeEnum_llm =
    const BriefingRunModeEnum._('llm');

BriefingRunModeEnum _$briefingRunModeEnumValueOf(String name) {
  switch (name) {
    case 'digest':
      return _$briefingRunModeEnum_digest;
    case 'llm':
      return _$briefingRunModeEnum_llm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BriefingRunModeEnum> _$briefingRunModeEnumValues =
    BuiltSet<BriefingRunModeEnum>(const <BriefingRunModeEnum>[
  _$briefingRunModeEnum_digest,
  _$briefingRunModeEnum_llm,
]);

Serializer<BriefingRunStatusEnum> _$briefingRunStatusEnumSerializer =
    _$BriefingRunStatusEnumSerializer();
Serializer<BriefingRunModeEnum> _$briefingRunModeEnumSerializer =
    _$BriefingRunModeEnumSerializer();

class _$BriefingRunStatusEnumSerializer
    implements PrimitiveSerializer<BriefingRunStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'running': 'running',
    'succeeded': 'succeeded',
    'fallback': 'fallback',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'running': 'running',
    'succeeded': 'succeeded',
    'fallback': 'fallback',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingRunStatusEnum];
  @override
  final String wireName = 'BriefingRunStatusEnum';

  @override
  Object serialize(Serializers serializers, BriefingRunStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BriefingRunStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BriefingRunStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BriefingRunModeEnumSerializer
    implements PrimitiveSerializer<BriefingRunModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'digest': 'digest',
    'llm': 'llm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'digest': 'digest',
    'llm': 'llm',
  };

  @override
  final Iterable<Type> types = const <Type>[BriefingRunModeEnum];
  @override
  final String wireName = 'BriefingRunModeEnum';

  @override
  Object serialize(Serializers serializers, BriefingRunModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BriefingRunModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BriefingRunModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BriefingRun extends BriefingRun {
  @override
  final String? id;
  @override
  final String? briefingId;
  @override
  final BriefingRunStatusEnum status;
  @override
  final DateTime startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final DateTime periodFrom;
  @override
  final DateTime periodTo;
  @override
  final BriefingRunModeEnum? mode;
  @override
  final String contentMarkdown;
  @override
  final BuiltList<AskCitation>? citations;
  @override
  final DigestStats? stats;
  @override
  final String? error;
  @override
  final BuiltMap<String, JsonObject?>? usage;
  @override
  final int? deliveries;
  @override
  final BuiltList<String>? warnings;
  @override
  final String? signature;
  @override
  final BriefingRunAudio? audio;

  factory _$BriefingRun([void Function(BriefingRunBuilder)? updates]) =>
      (BriefingRunBuilder()..update(updates))._build();

  _$BriefingRun._(
      {this.id,
      this.briefingId,
      required this.status,
      required this.startedAt,
      this.finishedAt,
      required this.periodFrom,
      required this.periodTo,
      this.mode,
      required this.contentMarkdown,
      this.citations,
      this.stats,
      this.error,
      this.usage,
      this.deliveries,
      this.warnings,
      this.signature,
      this.audio})
      : super._();
  @override
  BriefingRun rebuild(void Function(BriefingRunBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingRunBuilder toBuilder() => BriefingRunBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingRun &&
        id == other.id &&
        briefingId == other.briefingId &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        periodFrom == other.periodFrom &&
        periodTo == other.periodTo &&
        mode == other.mode &&
        contentMarkdown == other.contentMarkdown &&
        citations == other.citations &&
        stats == other.stats &&
        error == other.error &&
        usage == other.usage &&
        deliveries == other.deliveries &&
        warnings == other.warnings &&
        signature == other.signature &&
        audio == other.audio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, briefingId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, periodFrom.hashCode);
    _$hash = $jc(_$hash, periodTo.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, contentMarkdown.hashCode);
    _$hash = $jc(_$hash, citations.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, deliveries.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, audio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingRun')
          ..add('id', id)
          ..add('briefingId', briefingId)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('periodFrom', periodFrom)
          ..add('periodTo', periodTo)
          ..add('mode', mode)
          ..add('contentMarkdown', contentMarkdown)
          ..add('citations', citations)
          ..add('stats', stats)
          ..add('error', error)
          ..add('usage', usage)
          ..add('deliveries', deliveries)
          ..add('warnings', warnings)
          ..add('signature', signature)
          ..add('audio', audio))
        .toString();
  }
}

class BriefingRunBuilder implements Builder<BriefingRun, BriefingRunBuilder> {
  _$BriefingRun? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _briefingId;
  String? get briefingId => _$this._briefingId;
  set briefingId(String? briefingId) => _$this._briefingId = briefingId;

  BriefingRunStatusEnum? _status;
  BriefingRunStatusEnum? get status => _$this._status;
  set status(BriefingRunStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  DateTime? _periodFrom;
  DateTime? get periodFrom => _$this._periodFrom;
  set periodFrom(DateTime? periodFrom) => _$this._periodFrom = periodFrom;

  DateTime? _periodTo;
  DateTime? get periodTo => _$this._periodTo;
  set periodTo(DateTime? periodTo) => _$this._periodTo = periodTo;

  BriefingRunModeEnum? _mode;
  BriefingRunModeEnum? get mode => _$this._mode;
  set mode(BriefingRunModeEnum? mode) => _$this._mode = mode;

  String? _contentMarkdown;
  String? get contentMarkdown => _$this._contentMarkdown;
  set contentMarkdown(String? contentMarkdown) =>
      _$this._contentMarkdown = contentMarkdown;

  ListBuilder<AskCitation>? _citations;
  ListBuilder<AskCitation> get citations =>
      _$this._citations ??= ListBuilder<AskCitation>();
  set citations(ListBuilder<AskCitation>? citations) =>
      _$this._citations = citations;

  DigestStatsBuilder? _stats;
  DigestStatsBuilder get stats => _$this._stats ??= DigestStatsBuilder();
  set stats(DigestStatsBuilder? stats) => _$this._stats = stats;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  MapBuilder<String, JsonObject?>? _usage;
  MapBuilder<String, JsonObject?> get usage =>
      _$this._usage ??= MapBuilder<String, JsonObject?>();
  set usage(MapBuilder<String, JsonObject?>? usage) => _$this._usage = usage;

  int? _deliveries;
  int? get deliveries => _$this._deliveries;
  set deliveries(int? deliveries) => _$this._deliveries = deliveries;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  BriefingRunAudioBuilder? _audio;
  BriefingRunAudioBuilder get audio =>
      _$this._audio ??= BriefingRunAudioBuilder();
  set audio(BriefingRunAudioBuilder? audio) => _$this._audio = audio;

  BriefingRunBuilder() {
    BriefingRun._defaults(this);
  }

  BriefingRunBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _briefingId = $v.briefingId;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _periodFrom = $v.periodFrom;
      _periodTo = $v.periodTo;
      _mode = $v.mode;
      _contentMarkdown = $v.contentMarkdown;
      _citations = $v.citations?.toBuilder();
      _stats = $v.stats?.toBuilder();
      _error = $v.error;
      _usage = $v.usage?.toBuilder();
      _deliveries = $v.deliveries;
      _warnings = $v.warnings?.toBuilder();
      _signature = $v.signature;
      _audio = $v.audio?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingRun other) {
    _$v = other as _$BriefingRun;
  }

  @override
  void update(void Function(BriefingRunBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingRun build() => _build();

  _$BriefingRun _build() {
    _$BriefingRun _$result;
    try {
      _$result = _$v ??
          _$BriefingRun._(
            id: id,
            briefingId: briefingId,
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'BriefingRun', 'status'),
            startedAt: BuiltValueNullFieldError.checkNotNull(
                startedAt, r'BriefingRun', 'startedAt'),
            finishedAt: finishedAt,
            periodFrom: BuiltValueNullFieldError.checkNotNull(
                periodFrom, r'BriefingRun', 'periodFrom'),
            periodTo: BuiltValueNullFieldError.checkNotNull(
                periodTo, r'BriefingRun', 'periodTo'),
            mode: mode,
            contentMarkdown: BuiltValueNullFieldError.checkNotNull(
                contentMarkdown, r'BriefingRun', 'contentMarkdown'),
            citations: _citations?.build(),
            stats: _stats?.build(),
            error: error,
            usage: _usage?.build(),
            deliveries: deliveries,
            warnings: _warnings?.build(),
            signature: signature,
            audio: _audio?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'citations';
        _citations?.build();
        _$failedField = 'stats';
        _stats?.build();

        _$failedField = 'usage';
        _usage?.build();

        _$failedField = 'warnings';
        _warnings?.build();

        _$failedField = 'audio';
        _audio?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BriefingRun', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
