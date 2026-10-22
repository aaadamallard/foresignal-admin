// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertSeverityEnum _$alertSeverityEnum_info =
    const AlertSeverityEnum._('info');
const AlertSeverityEnum _$alertSeverityEnum_warning =
    const AlertSeverityEnum._('warning');
const AlertSeverityEnum _$alertSeverityEnum_critical =
    const AlertSeverityEnum._('critical');

AlertSeverityEnum _$alertSeverityEnumValueOf(String name) {
  switch (name) {
    case 'info':
      return _$alertSeverityEnum_info;
    case 'warning':
      return _$alertSeverityEnum_warning;
    case 'critical':
      return _$alertSeverityEnum_critical;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertSeverityEnum> _$alertSeverityEnumValues =
    BuiltSet<AlertSeverityEnum>(const <AlertSeverityEnum>[
  _$alertSeverityEnum_info,
  _$alertSeverityEnum_warning,
  _$alertSeverityEnum_critical,
]);

const AlertStateEnum _$alertStateEnum_firing = const AlertStateEnum._('firing');
const AlertStateEnum _$alertStateEnum_acknowledged =
    const AlertStateEnum._('acknowledged');
const AlertStateEnum _$alertStateEnum_resolved =
    const AlertStateEnum._('resolved');

AlertStateEnum _$alertStateEnumValueOf(String name) {
  switch (name) {
    case 'firing':
      return _$alertStateEnum_firing;
    case 'acknowledged':
      return _$alertStateEnum_acknowledged;
    case 'resolved':
      return _$alertStateEnum_resolved;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertStateEnum> _$alertStateEnumValues =
    BuiltSet<AlertStateEnum>(const <AlertStateEnum>[
  _$alertStateEnum_firing,
  _$alertStateEnum_acknowledged,
  _$alertStateEnum_resolved,
]);

const AlertFeedbackEnum _$alertFeedbackEnum_useful =
    const AlertFeedbackEnum._('useful');
const AlertFeedbackEnum _$alertFeedbackEnum_noise =
    const AlertFeedbackEnum._('noise');
const AlertFeedbackEnum _$alertFeedbackEnum_late_ =
    const AlertFeedbackEnum._('late_');
const AlertFeedbackEnum _$alertFeedbackEnum_falsePositive =
    const AlertFeedbackEnum._('falsePositive');

AlertFeedbackEnum _$alertFeedbackEnumValueOf(String name) {
  switch (name) {
    case 'useful':
      return _$alertFeedbackEnum_useful;
    case 'noise':
      return _$alertFeedbackEnum_noise;
    case 'late_':
      return _$alertFeedbackEnum_late_;
    case 'falsePositive':
      return _$alertFeedbackEnum_falsePositive;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertFeedbackEnum> _$alertFeedbackEnumValues =
    BuiltSet<AlertFeedbackEnum>(const <AlertFeedbackEnum>[
  _$alertFeedbackEnum_useful,
  _$alertFeedbackEnum_noise,
  _$alertFeedbackEnum_late_,
  _$alertFeedbackEnum_falsePositive,
]);

const AlertSuppressedReasonEnum _$alertSuppressedReasonEnum_alertSnoozed =
    const AlertSuppressedReasonEnum._('alertSnoozed');
const AlertSuppressedReasonEnum _$alertSuppressedReasonEnum_ruleSnoozed =
    const AlertSuppressedReasonEnum._('ruleSnoozed');

AlertSuppressedReasonEnum _$alertSuppressedReasonEnumValueOf(String name) {
  switch (name) {
    case 'alertSnoozed':
      return _$alertSuppressedReasonEnum_alertSnoozed;
    case 'ruleSnoozed':
      return _$alertSuppressedReasonEnum_ruleSnoozed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertSuppressedReasonEnum> _$alertSuppressedReasonEnumValues =
    BuiltSet<AlertSuppressedReasonEnum>(const <AlertSuppressedReasonEnum>[
  _$alertSuppressedReasonEnum_alertSnoozed,
  _$alertSuppressedReasonEnum_ruleSnoozed,
]);

Serializer<AlertSeverityEnum> _$alertSeverityEnumSerializer =
    _$AlertSeverityEnumSerializer();
Serializer<AlertStateEnum> _$alertStateEnumSerializer =
    _$AlertStateEnumSerializer();
Serializer<AlertFeedbackEnum> _$alertFeedbackEnumSerializer =
    _$AlertFeedbackEnumSerializer();
Serializer<AlertSuppressedReasonEnum> _$alertSuppressedReasonEnumSerializer =
    _$AlertSuppressedReasonEnumSerializer();

class _$AlertSeverityEnumSerializer
    implements PrimitiveSerializer<AlertSeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'warning': 'warning',
    'critical': 'critical',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertSeverityEnum];
  @override
  final String wireName = 'AlertSeverityEnum';

  @override
  Object serialize(Serializers serializers, AlertSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertSeverityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertSeverityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlertStateEnumSerializer
    implements PrimitiveSerializer<AlertStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'firing': 'firing',
    'acknowledged': 'acknowledged',
    'resolved': 'resolved',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertStateEnum];
  @override
  final String wireName = 'AlertStateEnum';

  @override
  Object serialize(Serializers serializers, AlertStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlertFeedbackEnumSerializer
    implements PrimitiveSerializer<AlertFeedbackEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'useful': 'useful',
    'noise': 'noise',
    'late_': 'late',
    'falsePositive': 'false_positive',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'useful': 'useful',
    'noise': 'noise',
    'late': 'late_',
    'false_positive': 'falsePositive',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertFeedbackEnum];
  @override
  final String wireName = 'AlertFeedbackEnum';

  @override
  Object serialize(Serializers serializers, AlertFeedbackEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertFeedbackEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertFeedbackEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlertSuppressedReasonEnumSerializer
    implements PrimitiveSerializer<AlertSuppressedReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alertSnoozed': 'alert_snoozed',
    'ruleSnoozed': 'rule_snoozed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'alert_snoozed': 'alertSnoozed',
    'rule_snoozed': 'ruleSnoozed',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertSuppressedReasonEnum];
  @override
  final String wireName = 'AlertSuppressedReasonEnum';

  @override
  Object serialize(Serializers serializers, AlertSuppressedReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlertSuppressedReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlertSuppressedReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Alert extends Alert {
  @override
  final int id;
  @override
  final String ruleId;
  @override
  final String? ruleName;
  @override
  final int seq;
  @override
  final String source_;
  @override
  final String externalId;
  @override
  final String? kind;
  @override
  final DateTime firedAt;
  @override
  final String message;
  @override
  final DateTime? acknowledgedAt;
  @override
  final AlertSeverityEnum severity;
  @override
  final String? summary;
  @override
  final DateTime? enrichedAt;
  @override
  final Record? record;
  @override
  final int rev;
  @override
  final AlertStateEnum state;
  @override
  final DateTime? observedAt;
  @override
  final String? acknowledgedBy;
  @override
  final DateTime? resolvedAt;
  @override
  final String? resolvedBy;
  @override
  final int? resolvedSeq;
  @override
  final AlertFeedbackEnum? feedback;
  @override
  final DateTime? feedbackAt;
  @override
  final String? note;
  @override
  final DateTime? snoozedUntil;
  @override
  final bool? suppressed;
  @override
  final AlertSuppressedReasonEnum? suppressedReason;
  @override
  final BuiltList<String>? tags;
  @override
  final AlertRecordSnapshot? recordSnapshot;
  @override
  final BuiltList<AskCitation>? summaryCitations;
  @override
  final bool? sensitive;
  @override
  final RegionTags? region;
  @override
  final AlertContext? context;
  @override
  final bool? exercise;
  @override
  final String? exerciseRunId;
  @override
  final BuiltList<AlertSignal>? signals;

  factory _$Alert([void Function(AlertBuilder)? updates]) =>
      (AlertBuilder()..update(updates))._build();

  _$Alert._(
      {required this.id,
      required this.ruleId,
      this.ruleName,
      required this.seq,
      required this.source_,
      required this.externalId,
      this.kind,
      required this.firedAt,
      required this.message,
      this.acknowledgedAt,
      required this.severity,
      this.summary,
      this.enrichedAt,
      this.record,
      required this.rev,
      required this.state,
      this.observedAt,
      this.acknowledgedBy,
      this.resolvedAt,
      this.resolvedBy,
      this.resolvedSeq,
      this.feedback,
      this.feedbackAt,
      this.note,
      this.snoozedUntil,
      this.suppressed,
      this.suppressedReason,
      this.tags,
      this.recordSnapshot,
      this.summaryCitations,
      this.sensitive,
      this.region,
      this.context,
      this.exercise,
      this.exerciseRunId,
      this.signals})
      : super._();
  @override
  Alert rebuild(void Function(AlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertBuilder toBuilder() => AlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Alert &&
        id == other.id &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        seq == other.seq &&
        source_ == other.source_ &&
        externalId == other.externalId &&
        kind == other.kind &&
        firedAt == other.firedAt &&
        message == other.message &&
        acknowledgedAt == other.acknowledgedAt &&
        severity == other.severity &&
        summary == other.summary &&
        enrichedAt == other.enrichedAt &&
        record == other.record &&
        rev == other.rev &&
        state == other.state &&
        observedAt == other.observedAt &&
        acknowledgedBy == other.acknowledgedBy &&
        resolvedAt == other.resolvedAt &&
        resolvedBy == other.resolvedBy &&
        resolvedSeq == other.resolvedSeq &&
        feedback == other.feedback &&
        feedbackAt == other.feedbackAt &&
        note == other.note &&
        snoozedUntil == other.snoozedUntil &&
        suppressed == other.suppressed &&
        suppressedReason == other.suppressedReason &&
        tags == other.tags &&
        recordSnapshot == other.recordSnapshot &&
        summaryCitations == other.summaryCitations &&
        sensitive == other.sensitive &&
        region == other.region &&
        context == other.context &&
        exercise == other.exercise &&
        exerciseRunId == other.exerciseRunId &&
        signals == other.signals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, firedAt.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, acknowledgedAt.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, enrichedAt.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, rev.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, acknowledgedBy.hashCode);
    _$hash = $jc(_$hash, resolvedAt.hashCode);
    _$hash = $jc(_$hash, resolvedBy.hashCode);
    _$hash = $jc(_$hash, resolvedSeq.hashCode);
    _$hash = $jc(_$hash, feedback.hashCode);
    _$hash = $jc(_$hash, feedbackAt.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, snoozedUntil.hashCode);
    _$hash = $jc(_$hash, suppressed.hashCode);
    _$hash = $jc(_$hash, suppressedReason.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, recordSnapshot.hashCode);
    _$hash = $jc(_$hash, summaryCitations.hashCode);
    _$hash = $jc(_$hash, sensitive.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jc(_$hash, exerciseRunId.hashCode);
    _$hash = $jc(_$hash, signals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Alert')
          ..add('id', id)
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('seq', seq)
          ..add('source_', source_)
          ..add('externalId', externalId)
          ..add('kind', kind)
          ..add('firedAt', firedAt)
          ..add('message', message)
          ..add('acknowledgedAt', acknowledgedAt)
          ..add('severity', severity)
          ..add('summary', summary)
          ..add('enrichedAt', enrichedAt)
          ..add('record', record)
          ..add('rev', rev)
          ..add('state', state)
          ..add('observedAt', observedAt)
          ..add('acknowledgedBy', acknowledgedBy)
          ..add('resolvedAt', resolvedAt)
          ..add('resolvedBy', resolvedBy)
          ..add('resolvedSeq', resolvedSeq)
          ..add('feedback', feedback)
          ..add('feedbackAt', feedbackAt)
          ..add('note', note)
          ..add('snoozedUntil', snoozedUntil)
          ..add('suppressed', suppressed)
          ..add('suppressedReason', suppressedReason)
          ..add('tags', tags)
          ..add('recordSnapshot', recordSnapshot)
          ..add('summaryCitations', summaryCitations)
          ..add('sensitive', sensitive)
          ..add('region', region)
          ..add('context', context)
          ..add('exercise', exercise)
          ..add('exerciseRunId', exerciseRunId)
          ..add('signals', signals))
        .toString();
  }
}

class AlertBuilder implements Builder<Alert, AlertBuilder> {
  _$Alert? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  DateTime? _firedAt;
  DateTime? get firedAt => _$this._firedAt;
  set firedAt(DateTime? firedAt) => _$this._firedAt = firedAt;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _acknowledgedAt;
  DateTime? get acknowledgedAt => _$this._acknowledgedAt;
  set acknowledgedAt(DateTime? acknowledgedAt) =>
      _$this._acknowledgedAt = acknowledgedAt;

  AlertSeverityEnum? _severity;
  AlertSeverityEnum? get severity => _$this._severity;
  set severity(AlertSeverityEnum? severity) => _$this._severity = severity;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  DateTime? _enrichedAt;
  DateTime? get enrichedAt => _$this._enrichedAt;
  set enrichedAt(DateTime? enrichedAt) => _$this._enrichedAt = enrichedAt;

  RecordBuilder? _record;
  RecordBuilder get record => _$this._record ??= RecordBuilder();
  set record(RecordBuilder? record) => _$this._record = record;

  int? _rev;
  int? get rev => _$this._rev;
  set rev(int? rev) => _$this._rev = rev;

  AlertStateEnum? _state;
  AlertStateEnum? get state => _$this._state;
  set state(AlertStateEnum? state) => _$this._state = state;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  String? _acknowledgedBy;
  String? get acknowledgedBy => _$this._acknowledgedBy;
  set acknowledgedBy(String? acknowledgedBy) =>
      _$this._acknowledgedBy = acknowledgedBy;

  DateTime? _resolvedAt;
  DateTime? get resolvedAt => _$this._resolvedAt;
  set resolvedAt(DateTime? resolvedAt) => _$this._resolvedAt = resolvedAt;

  String? _resolvedBy;
  String? get resolvedBy => _$this._resolvedBy;
  set resolvedBy(String? resolvedBy) => _$this._resolvedBy = resolvedBy;

  int? _resolvedSeq;
  int? get resolvedSeq => _$this._resolvedSeq;
  set resolvedSeq(int? resolvedSeq) => _$this._resolvedSeq = resolvedSeq;

  AlertFeedbackEnum? _feedback;
  AlertFeedbackEnum? get feedback => _$this._feedback;
  set feedback(AlertFeedbackEnum? feedback) => _$this._feedback = feedback;

  DateTime? _feedbackAt;
  DateTime? get feedbackAt => _$this._feedbackAt;
  set feedbackAt(DateTime? feedbackAt) => _$this._feedbackAt = feedbackAt;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  DateTime? _snoozedUntil;
  DateTime? get snoozedUntil => _$this._snoozedUntil;
  set snoozedUntil(DateTime? snoozedUntil) =>
      _$this._snoozedUntil = snoozedUntil;

  bool? _suppressed;
  bool? get suppressed => _$this._suppressed;
  set suppressed(bool? suppressed) => _$this._suppressed = suppressed;

  AlertSuppressedReasonEnum? _suppressedReason;
  AlertSuppressedReasonEnum? get suppressedReason => _$this._suppressedReason;
  set suppressedReason(AlertSuppressedReasonEnum? suppressedReason) =>
      _$this._suppressedReason = suppressedReason;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  AlertRecordSnapshotBuilder? _recordSnapshot;
  AlertRecordSnapshotBuilder get recordSnapshot =>
      _$this._recordSnapshot ??= AlertRecordSnapshotBuilder();
  set recordSnapshot(AlertRecordSnapshotBuilder? recordSnapshot) =>
      _$this._recordSnapshot = recordSnapshot;

  ListBuilder<AskCitation>? _summaryCitations;
  ListBuilder<AskCitation> get summaryCitations =>
      _$this._summaryCitations ??= ListBuilder<AskCitation>();
  set summaryCitations(ListBuilder<AskCitation>? summaryCitations) =>
      _$this._summaryCitations = summaryCitations;

  bool? _sensitive;
  bool? get sensitive => _$this._sensitive;
  set sensitive(bool? sensitive) => _$this._sensitive = sensitive;

  RegionTagsBuilder? _region;
  RegionTagsBuilder get region => _$this._region ??= RegionTagsBuilder();
  set region(RegionTagsBuilder? region) => _$this._region = region;

  AlertContextBuilder? _context;
  AlertContextBuilder get context => _$this._context ??= AlertContextBuilder();
  set context(AlertContextBuilder? context) => _$this._context = context;

  bool? _exercise;
  bool? get exercise => _$this._exercise;
  set exercise(bool? exercise) => _$this._exercise = exercise;

  String? _exerciseRunId;
  String? get exerciseRunId => _$this._exerciseRunId;
  set exerciseRunId(String? exerciseRunId) =>
      _$this._exerciseRunId = exerciseRunId;

  ListBuilder<AlertSignal>? _signals;
  ListBuilder<AlertSignal> get signals =>
      _$this._signals ??= ListBuilder<AlertSignal>();
  set signals(ListBuilder<AlertSignal>? signals) => _$this._signals = signals;

  AlertBuilder() {
    Alert._defaults(this);
  }

  AlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _seq = $v.seq;
      _source_ = $v.source_;
      _externalId = $v.externalId;
      _kind = $v.kind;
      _firedAt = $v.firedAt;
      _message = $v.message;
      _acknowledgedAt = $v.acknowledgedAt;
      _severity = $v.severity;
      _summary = $v.summary;
      _enrichedAt = $v.enrichedAt;
      _record = $v.record?.toBuilder();
      _rev = $v.rev;
      _state = $v.state;
      _observedAt = $v.observedAt;
      _acknowledgedBy = $v.acknowledgedBy;
      _resolvedAt = $v.resolvedAt;
      _resolvedBy = $v.resolvedBy;
      _resolvedSeq = $v.resolvedSeq;
      _feedback = $v.feedback;
      _feedbackAt = $v.feedbackAt;
      _note = $v.note;
      _snoozedUntil = $v.snoozedUntil;
      _suppressed = $v.suppressed;
      _suppressedReason = $v.suppressedReason;
      _tags = $v.tags?.toBuilder();
      _recordSnapshot = $v.recordSnapshot?.toBuilder();
      _summaryCitations = $v.summaryCitations?.toBuilder();
      _sensitive = $v.sensitive;
      _region = $v.region?.toBuilder();
      _context = $v.context?.toBuilder();
      _exercise = $v.exercise;
      _exerciseRunId = $v.exerciseRunId;
      _signals = $v.signals?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Alert other) {
    _$v = other as _$Alert;
  }

  @override
  void update(void Function(AlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Alert build() => _build();

  _$Alert _build() {
    _$Alert _$result;
    try {
      _$result = _$v ??
          _$Alert._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Alert', 'id'),
            ruleId: BuiltValueNullFieldError.checkNotNull(
                ruleId, r'Alert', 'ruleId'),
            ruleName: ruleName,
            seq: BuiltValueNullFieldError.checkNotNull(seq, r'Alert', 'seq'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'Alert', 'source_'),
            externalId: BuiltValueNullFieldError.checkNotNull(
                externalId, r'Alert', 'externalId'),
            kind: kind,
            firedAt: BuiltValueNullFieldError.checkNotNull(
                firedAt, r'Alert', 'firedAt'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'Alert', 'message'),
            acknowledgedAt: acknowledgedAt,
            severity: BuiltValueNullFieldError.checkNotNull(
                severity, r'Alert', 'severity'),
            summary: summary,
            enrichedAt: enrichedAt,
            record: _record?.build(),
            rev: BuiltValueNullFieldError.checkNotNull(rev, r'Alert', 'rev'),
            state:
                BuiltValueNullFieldError.checkNotNull(state, r'Alert', 'state'),
            observedAt: observedAt,
            acknowledgedBy: acknowledgedBy,
            resolvedAt: resolvedAt,
            resolvedBy: resolvedBy,
            resolvedSeq: resolvedSeq,
            feedback: feedback,
            feedbackAt: feedbackAt,
            note: note,
            snoozedUntil: snoozedUntil,
            suppressed: suppressed,
            suppressedReason: suppressedReason,
            tags: _tags?.build(),
            recordSnapshot: _recordSnapshot?.build(),
            summaryCitations: _summaryCitations?.build(),
            sensitive: sensitive,
            region: _region?.build(),
            context: _context?.build(),
            exercise: exercise,
            exerciseRunId: exerciseRunId,
            signals: _signals?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'record';
        _record?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'recordSnapshot';
        _recordSnapshot?.build();
        _$failedField = 'summaryCitations';
        _summaryCitations?.build();

        _$failedField = 'region';
        _region?.build();
        _$failedField = 'context';
        _context?.build();

        _$failedField = 'signals';
        _signals?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Alert', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
