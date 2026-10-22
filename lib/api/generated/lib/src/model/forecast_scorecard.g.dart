// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_scorecard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastScorecard extends ForecastScorecard {
  @override
  final String? forecasterId;
  @override
  final String? category;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final bool retrospective;
  @override
  final BuiltList<ScorecardEntry> entries;
  @override
  final String scorerVersion;
  @override
  final DateTime computedAt;

  factory _$ForecastScorecard(
          [void Function(ForecastScorecardBuilder)? updates]) =>
      (ForecastScorecardBuilder()..update(updates))._build();

  _$ForecastScorecard._(
      {this.forecasterId,
      this.category,
      this.from,
      this.to,
      required this.retrospective,
      required this.entries,
      required this.scorerVersion,
      required this.computedAt})
      : super._();
  @override
  ForecastScorecard rebuild(void Function(ForecastScorecardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastScorecardBuilder toBuilder() =>
      ForecastScorecardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastScorecard &&
        forecasterId == other.forecasterId &&
        category == other.category &&
        from == other.from &&
        to == other.to &&
        retrospective == other.retrospective &&
        entries == other.entries &&
        scorerVersion == other.scorerVersion &&
        computedAt == other.computedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, retrospective.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jc(_$hash, scorerVersion.hashCode);
    _$hash = $jc(_$hash, computedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastScorecard')
          ..add('forecasterId', forecasterId)
          ..add('category', category)
          ..add('from', from)
          ..add('to', to)
          ..add('retrospective', retrospective)
          ..add('entries', entries)
          ..add('scorerVersion', scorerVersion)
          ..add('computedAt', computedAt))
        .toString();
  }
}

class ForecastScorecardBuilder
    implements Builder<ForecastScorecard, ForecastScorecardBuilder> {
  _$ForecastScorecard? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  bool? _retrospective;
  bool? get retrospective => _$this._retrospective;
  set retrospective(bool? retrospective) =>
      _$this._retrospective = retrospective;

  ListBuilder<ScorecardEntry>? _entries;
  ListBuilder<ScorecardEntry> get entries =>
      _$this._entries ??= ListBuilder<ScorecardEntry>();
  set entries(ListBuilder<ScorecardEntry>? entries) =>
      _$this._entries = entries;

  String? _scorerVersion;
  String? get scorerVersion => _$this._scorerVersion;
  set scorerVersion(String? scorerVersion) =>
      _$this._scorerVersion = scorerVersion;

  DateTime? _computedAt;
  DateTime? get computedAt => _$this._computedAt;
  set computedAt(DateTime? computedAt) => _$this._computedAt = computedAt;

  ForecastScorecardBuilder() {
    ForecastScorecard._defaults(this);
  }

  ForecastScorecardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _category = $v.category;
      _from = $v.from;
      _to = $v.to;
      _retrospective = $v.retrospective;
      _entries = $v.entries.toBuilder();
      _scorerVersion = $v.scorerVersion;
      _computedAt = $v.computedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastScorecard other) {
    _$v = other as _$ForecastScorecard;
  }

  @override
  void update(void Function(ForecastScorecardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastScorecard build() => _build();

  _$ForecastScorecard _build() {
    _$ForecastScorecard _$result;
    try {
      _$result = _$v ??
          _$ForecastScorecard._(
            forecasterId: forecasterId,
            category: category,
            from: from,
            to: to,
            retrospective: BuiltValueNullFieldError.checkNotNull(
                retrospective, r'ForecastScorecard', 'retrospective'),
            entries: entries.build(),
            scorerVersion: BuiltValueNullFieldError.checkNotNull(
                scorerVersion, r'ForecastScorecard', 'scorerVersion'),
            computedAt: BuiltValueNullFieldError.checkNotNull(
                computedAt, r'ForecastScorecard', 'computedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecastScorecard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
