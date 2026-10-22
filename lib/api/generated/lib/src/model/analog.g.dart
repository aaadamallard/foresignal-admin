// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Analog extends Analog {
  @override
  final String? situationId;
  @override
  final String title;
  @override
  final SituationTheme? theme;
  @override
  final BuiltList<String> regionCodes;
  @override
  final TimeRange period;
  @override
  final int rank;
  @override
  final num similarity;
  @override
  final num? featureSimilarity;
  @override
  final num? embeddingSimilarity;
  @override
  final AnalogOutcomes outcomes;

  factory _$Analog([void Function(AnalogBuilder)? updates]) =>
      (AnalogBuilder()..update(updates))._build();

  _$Analog._({
    this.situationId,
    required this.title,
    this.theme,
    required this.regionCodes,
    required this.period,
    required this.rank,
    required this.similarity,
    this.featureSimilarity,
    this.embeddingSimilarity,
    required this.outcomes,
  }) : super._();
  @override
  Analog rebuild(void Function(AnalogBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogBuilder toBuilder() => AnalogBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Analog &&
        situationId == other.situationId &&
        title == other.title &&
        theme == other.theme &&
        regionCodes == other.regionCodes &&
        period == other.period &&
        rank == other.rank &&
        similarity == other.similarity &&
        featureSimilarity == other.featureSimilarity &&
        embeddingSimilarity == other.embeddingSimilarity &&
        outcomes == other.outcomes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, similarity.hashCode);
    _$hash = $jc(_$hash, featureSimilarity.hashCode);
    _$hash = $jc(_$hash, embeddingSimilarity.hashCode);
    _$hash = $jc(_$hash, outcomes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Analog')
          ..add('situationId', situationId)
          ..add('title', title)
          ..add('theme', theme)
          ..add('regionCodes', regionCodes)
          ..add('period', period)
          ..add('rank', rank)
          ..add('similarity', similarity)
          ..add('featureSimilarity', featureSimilarity)
          ..add('embeddingSimilarity', embeddingSimilarity)
          ..add('outcomes', outcomes))
        .toString();
  }
}

class AnalogBuilder implements Builder<Analog, AnalogBuilder> {
  _$Analog? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SituationTheme? _theme;
  SituationTheme? get theme => _$this._theme;
  set theme(SituationTheme? theme) => _$this._theme = theme;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  TimeRangeBuilder? _period;
  TimeRangeBuilder get period => _$this._period ??= TimeRangeBuilder();
  set period(TimeRangeBuilder? period) => _$this._period = period;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  num? _similarity;
  num? get similarity => _$this._similarity;
  set similarity(num? similarity) => _$this._similarity = similarity;

  num? _featureSimilarity;
  num? get featureSimilarity => _$this._featureSimilarity;
  set featureSimilarity(num? featureSimilarity) =>
      _$this._featureSimilarity = featureSimilarity;

  num? _embeddingSimilarity;
  num? get embeddingSimilarity => _$this._embeddingSimilarity;
  set embeddingSimilarity(num? embeddingSimilarity) =>
      _$this._embeddingSimilarity = embeddingSimilarity;

  AnalogOutcomesBuilder? _outcomes;
  AnalogOutcomesBuilder get outcomes =>
      _$this._outcomes ??= AnalogOutcomesBuilder();
  set outcomes(AnalogOutcomesBuilder? outcomes) => _$this._outcomes = outcomes;

  AnalogBuilder() {
    Analog._defaults(this);
  }

  AnalogBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _title = $v.title;
      _theme = $v.theme;
      _regionCodes = $v.regionCodes.toBuilder();
      _period = $v.period.toBuilder();
      _rank = $v.rank;
      _similarity = $v.similarity;
      _featureSimilarity = $v.featureSimilarity;
      _embeddingSimilarity = $v.embeddingSimilarity;
      _outcomes = $v.outcomes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Analog other) {
    _$v = other as _$Analog;
  }

  @override
  void update(void Function(AnalogBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Analog build() => _build();

  _$Analog _build() {
    _$Analog _$result;
    try {
      _$result =
          _$v ??
          _$Analog._(
            situationId: situationId,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'Analog',
              'title',
            ),
            theme: theme,
            regionCodes: regionCodes.build(),
            period: period.build(),
            rank: BuiltValueNullFieldError.checkNotNull(
              rank,
              r'Analog',
              'rank',
            ),
            similarity: BuiltValueNullFieldError.checkNotNull(
              similarity,
              r'Analog',
              'similarity',
            ),
            featureSimilarity: featureSimilarity,
            embeddingSimilarity: embeddingSimilarity,
            outcomes: outcomes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        regionCodes.build();
        _$failedField = 'period';
        period.build();

        _$failedField = 'outcomes';
        outcomes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Analog',
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
