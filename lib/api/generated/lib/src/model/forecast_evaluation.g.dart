// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_evaluation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnum_queued =
    const ForecastEvaluationStatusEnum._('queued');
const ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnum_running =
    const ForecastEvaluationStatusEnum._('running');
const ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnum_done =
    const ForecastEvaluationStatusEnum._('done');
const ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnum_failed =
    const ForecastEvaluationStatusEnum._('failed');
const ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnum_cancelled =
    const ForecastEvaluationStatusEnum._('cancelled');

ForecastEvaluationStatusEnum _$forecastEvaluationStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'queued':
      return _$forecastEvaluationStatusEnum_queued;
    case 'running':
      return _$forecastEvaluationStatusEnum_running;
    case 'done':
      return _$forecastEvaluationStatusEnum_done;
    case 'failed':
      return _$forecastEvaluationStatusEnum_failed;
    case 'cancelled':
      return _$forecastEvaluationStatusEnum_cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecastEvaluationStatusEnum>
_$forecastEvaluationStatusEnumValues =
    BuiltSet<ForecastEvaluationStatusEnum>(const <ForecastEvaluationStatusEnum>[
      _$forecastEvaluationStatusEnum_queued,
      _$forecastEvaluationStatusEnum_running,
      _$forecastEvaluationStatusEnum_done,
      _$forecastEvaluationStatusEnum_failed,
      _$forecastEvaluationStatusEnum_cancelled,
    ]);

Serializer<ForecastEvaluationStatusEnum>
_$forecastEvaluationStatusEnumSerializer =
    _$ForecastEvaluationStatusEnumSerializer();

class _$ForecastEvaluationStatusEnumSerializer
    implements PrimitiveSerializer<ForecastEvaluationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
    'cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecastEvaluationStatusEnum];
  @override
  final String wireName = 'ForecastEvaluationStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ForecastEvaluationStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ForecastEvaluationStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ForecastEvaluationStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ForecastEvaluation extends ForecastEvaluation {
  @override
  final String id;
  @override
  final String forecasterId;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final BuiltList<String>? categories;
  @override
  final int? maxQuestions;
  @override
  final ForecastEvaluationStatusEnum status;
  @override
  final num? progress;
  @override
  final int questionsConsidered;
  @override
  final int questionsEvaluated;
  @override
  final ForecastEvaluationSkipped skipped;
  @override
  final ForecastScorecard? scorecard;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final String? error;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? manifestId;

  factory _$ForecastEvaluation([
    void Function(ForecastEvaluationBuilder)? updates,
  ]) => (ForecastEvaluationBuilder()..update(updates))._build();

  _$ForecastEvaluation._({
    required this.id,
    required this.forecasterId,
    required this.from,
    required this.to,
    this.categories,
    this.maxQuestions,
    required this.status,
    this.progress,
    required this.questionsConsidered,
    required this.questionsEvaluated,
    required this.skipped,
    this.scorecard,
    required this.caveats,
    this.error,
    required this.createdBy,
    required this.createdAt,
    this.startedAt,
    this.finishedAt,
    this.manifestId,
  }) : super._();
  @override
  ForecastEvaluation rebuild(
    void Function(ForecastEvaluationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForecastEvaluationBuilder toBuilder() =>
      ForecastEvaluationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastEvaluation &&
        id == other.id &&
        forecasterId == other.forecasterId &&
        from == other.from &&
        to == other.to &&
        categories == other.categories &&
        maxQuestions == other.maxQuestions &&
        status == other.status &&
        progress == other.progress &&
        questionsConsidered == other.questionsConsidered &&
        questionsEvaluated == other.questionsEvaluated &&
        skipped == other.skipped &&
        scorecard == other.scorecard &&
        caveats == other.caveats &&
        error == other.error &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, maxQuestions.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, questionsConsidered.hashCode);
    _$hash = $jc(_$hash, questionsEvaluated.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, scorecard.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastEvaluation')
          ..add('id', id)
          ..add('forecasterId', forecasterId)
          ..add('from', from)
          ..add('to', to)
          ..add('categories', categories)
          ..add('maxQuestions', maxQuestions)
          ..add('status', status)
          ..add('progress', progress)
          ..add('questionsConsidered', questionsConsidered)
          ..add('questionsEvaluated', questionsEvaluated)
          ..add('skipped', skipped)
          ..add('scorecard', scorecard)
          ..add('caveats', caveats)
          ..add('error', error)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class ForecastEvaluationBuilder
    implements Builder<ForecastEvaluation, ForecastEvaluationBuilder> {
  _$ForecastEvaluation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  int? _maxQuestions;
  int? get maxQuestions => _$this._maxQuestions;
  set maxQuestions(int? maxQuestions) => _$this._maxQuestions = maxQuestions;

  ForecastEvaluationStatusEnum? _status;
  ForecastEvaluationStatusEnum? get status => _$this._status;
  set status(ForecastEvaluationStatusEnum? status) => _$this._status = status;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  int? _questionsConsidered;
  int? get questionsConsidered => _$this._questionsConsidered;
  set questionsConsidered(int? questionsConsidered) =>
      _$this._questionsConsidered = questionsConsidered;

  int? _questionsEvaluated;
  int? get questionsEvaluated => _$this._questionsEvaluated;
  set questionsEvaluated(int? questionsEvaluated) =>
      _$this._questionsEvaluated = questionsEvaluated;

  ForecastEvaluationSkippedBuilder? _skipped;
  ForecastEvaluationSkippedBuilder get skipped =>
      _$this._skipped ??= ForecastEvaluationSkippedBuilder();
  set skipped(ForecastEvaluationSkippedBuilder? skipped) =>
      _$this._skipped = skipped;

  ForecastScorecardBuilder? _scorecard;
  ForecastScorecardBuilder get scorecard =>
      _$this._scorecard ??= ForecastScorecardBuilder();
  set scorecard(ForecastScorecardBuilder? scorecard) =>
      _$this._scorecard = scorecard;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  ForecastEvaluationBuilder() {
    ForecastEvaluation._defaults(this);
  }

  ForecastEvaluationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _forecasterId = $v.forecasterId;
      _from = $v.from;
      _to = $v.to;
      _categories = $v.categories?.toBuilder();
      _maxQuestions = $v.maxQuestions;
      _status = $v.status;
      _progress = $v.progress;
      _questionsConsidered = $v.questionsConsidered;
      _questionsEvaluated = $v.questionsEvaluated;
      _skipped = $v.skipped.toBuilder();
      _scorecard = $v.scorecard?.toBuilder();
      _caveats = $v.caveats.toBuilder();
      _error = $v.error;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastEvaluation other) {
    _$v = other as _$ForecastEvaluation;
  }

  @override
  void update(void Function(ForecastEvaluationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastEvaluation build() => _build();

  _$ForecastEvaluation _build() {
    _$ForecastEvaluation _$result;
    try {
      _$result =
          _$v ??
          _$ForecastEvaluation._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'ForecastEvaluation',
              'id',
            ),
            forecasterId: BuiltValueNullFieldError.checkNotNull(
              forecasterId,
              r'ForecastEvaluation',
              'forecasterId',
            ),
            from: BuiltValueNullFieldError.checkNotNull(
              from,
              r'ForecastEvaluation',
              'from',
            ),
            to: BuiltValueNullFieldError.checkNotNull(
              to,
              r'ForecastEvaluation',
              'to',
            ),
            categories: _categories?.build(),
            maxQuestions: maxQuestions,
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ForecastEvaluation',
              'status',
            ),
            progress: progress,
            questionsConsidered: BuiltValueNullFieldError.checkNotNull(
              questionsConsidered,
              r'ForecastEvaluation',
              'questionsConsidered',
            ),
            questionsEvaluated: BuiltValueNullFieldError.checkNotNull(
              questionsEvaluated,
              r'ForecastEvaluation',
              'questionsEvaluated',
            ),
            skipped: skipped.build(),
            scorecard: _scorecard?.build(),
            caveats: caveats.build(),
            error: error,
            createdBy: BuiltValueNullFieldError.checkNotNull(
              createdBy,
              r'ForecastEvaluation',
              'createdBy',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'ForecastEvaluation',
              'createdAt',
            ),
            startedAt: startedAt,
            finishedAt: finishedAt,
            manifestId: manifestId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();

        _$failedField = 'skipped';
        skipped.build();
        _$failedField = 'scorecard';
        _scorecard?.build();
        _$failedField = 'caveats';
        caveats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForecastEvaluation',
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
