// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelBoard extends IntelBoard {
  @override
  final DateTime generatedAt;
  @override
  final BuiltList<IntelBoardSituationsInner> situations;
  @override
  final BuiltList<IntelBoardBandChangesInner> bandChanges;
  @override
  final BuiltList<IntelBoardIndicatorsObservedInner> indicatorsObserved;
  @override
  final BuiltList<IntelBoardForecastsDueInner> forecastsDue;
  @override
  final BuiltList<IntelBoardLatestAssessmentsInner> latestAssessments;
  @override
  final IntelBoardCalibration? calibration;
  @override
  final BuiltList<IntelBoardBenchmarksInner>? benchmarks;
  @override
  final BuiltList<String>? truncated;

  factory _$IntelBoard([void Function(IntelBoardBuilder)? updates]) =>
      (IntelBoardBuilder()..update(updates))._build();

  _$IntelBoard._({
    required this.generatedAt,
    required this.situations,
    required this.bandChanges,
    required this.indicatorsObserved,
    required this.forecastsDue,
    required this.latestAssessments,
    this.calibration,
    this.benchmarks,
    this.truncated,
  }) : super._();
  @override
  IntelBoard rebuild(void Function(IntelBoardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelBoardBuilder toBuilder() => IntelBoardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoard &&
        generatedAt == other.generatedAt &&
        situations == other.situations &&
        bandChanges == other.bandChanges &&
        indicatorsObserved == other.indicatorsObserved &&
        forecastsDue == other.forecastsDue &&
        latestAssessments == other.latestAssessments &&
        calibration == other.calibration &&
        benchmarks == other.benchmarks &&
        truncated == other.truncated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, situations.hashCode);
    _$hash = $jc(_$hash, bandChanges.hashCode);
    _$hash = $jc(_$hash, indicatorsObserved.hashCode);
    _$hash = $jc(_$hash, forecastsDue.hashCode);
    _$hash = $jc(_$hash, latestAssessments.hashCode);
    _$hash = $jc(_$hash, calibration.hashCode);
    _$hash = $jc(_$hash, benchmarks.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoard')
          ..add('generatedAt', generatedAt)
          ..add('situations', situations)
          ..add('bandChanges', bandChanges)
          ..add('indicatorsObserved', indicatorsObserved)
          ..add('forecastsDue', forecastsDue)
          ..add('latestAssessments', latestAssessments)
          ..add('calibration', calibration)
          ..add('benchmarks', benchmarks)
          ..add('truncated', truncated))
        .toString();
  }
}

class IntelBoardBuilder implements Builder<IntelBoard, IntelBoardBuilder> {
  _$IntelBoard? _$v;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  ListBuilder<IntelBoardSituationsInner>? _situations;
  ListBuilder<IntelBoardSituationsInner> get situations =>
      _$this._situations ??= ListBuilder<IntelBoardSituationsInner>();
  set situations(ListBuilder<IntelBoardSituationsInner>? situations) =>
      _$this._situations = situations;

  ListBuilder<IntelBoardBandChangesInner>? _bandChanges;
  ListBuilder<IntelBoardBandChangesInner> get bandChanges =>
      _$this._bandChanges ??= ListBuilder<IntelBoardBandChangesInner>();
  set bandChanges(ListBuilder<IntelBoardBandChangesInner>? bandChanges) =>
      _$this._bandChanges = bandChanges;

  ListBuilder<IntelBoardIndicatorsObservedInner>? _indicatorsObserved;
  ListBuilder<IntelBoardIndicatorsObservedInner> get indicatorsObserved =>
      _$this._indicatorsObserved ??=
          ListBuilder<IntelBoardIndicatorsObservedInner>();
  set indicatorsObserved(
    ListBuilder<IntelBoardIndicatorsObservedInner>? indicatorsObserved,
  ) => _$this._indicatorsObserved = indicatorsObserved;

  ListBuilder<IntelBoardForecastsDueInner>? _forecastsDue;
  ListBuilder<IntelBoardForecastsDueInner> get forecastsDue =>
      _$this._forecastsDue ??= ListBuilder<IntelBoardForecastsDueInner>();
  set forecastsDue(ListBuilder<IntelBoardForecastsDueInner>? forecastsDue) =>
      _$this._forecastsDue = forecastsDue;

  ListBuilder<IntelBoardLatestAssessmentsInner>? _latestAssessments;
  ListBuilder<IntelBoardLatestAssessmentsInner> get latestAssessments =>
      _$this._latestAssessments ??=
          ListBuilder<IntelBoardLatestAssessmentsInner>();
  set latestAssessments(
    ListBuilder<IntelBoardLatestAssessmentsInner>? latestAssessments,
  ) => _$this._latestAssessments = latestAssessments;

  IntelBoardCalibrationBuilder? _calibration;
  IntelBoardCalibrationBuilder get calibration =>
      _$this._calibration ??= IntelBoardCalibrationBuilder();
  set calibration(IntelBoardCalibrationBuilder? calibration) =>
      _$this._calibration = calibration;

  ListBuilder<IntelBoardBenchmarksInner>? _benchmarks;
  ListBuilder<IntelBoardBenchmarksInner> get benchmarks =>
      _$this._benchmarks ??= ListBuilder<IntelBoardBenchmarksInner>();
  set benchmarks(ListBuilder<IntelBoardBenchmarksInner>? benchmarks) =>
      _$this._benchmarks = benchmarks;

  ListBuilder<String>? _truncated;
  ListBuilder<String> get truncated =>
      _$this._truncated ??= ListBuilder<String>();
  set truncated(ListBuilder<String>? truncated) =>
      _$this._truncated = truncated;

  IntelBoardBuilder() {
    IntelBoard._defaults(this);
  }

  IntelBoardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generatedAt = $v.generatedAt;
      _situations = $v.situations.toBuilder();
      _bandChanges = $v.bandChanges.toBuilder();
      _indicatorsObserved = $v.indicatorsObserved.toBuilder();
      _forecastsDue = $v.forecastsDue.toBuilder();
      _latestAssessments = $v.latestAssessments.toBuilder();
      _calibration = $v.calibration?.toBuilder();
      _benchmarks = $v.benchmarks?.toBuilder();
      _truncated = $v.truncated?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoard other) {
    _$v = other as _$IntelBoard;
  }

  @override
  void update(void Function(IntelBoardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoard build() => _build();

  _$IntelBoard _build() {
    _$IntelBoard _$result;
    try {
      _$result =
          _$v ??
          _$IntelBoard._(
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'IntelBoard',
              'generatedAt',
            ),
            situations: situations.build(),
            bandChanges: bandChanges.build(),
            indicatorsObserved: indicatorsObserved.build(),
            forecastsDue: forecastsDue.build(),
            latestAssessments: latestAssessments.build(),
            calibration: _calibration?.build(),
            benchmarks: _benchmarks?.build(),
            truncated: _truncated?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'situations';
        situations.build();
        _$failedField = 'bandChanges';
        bandChanges.build();
        _$failedField = 'indicatorsObserved';
        indicatorsObserved.build();
        _$failedField = 'forecastsDue';
        forecastsDue.build();
        _$failedField = 'latestAssessments';
        latestAssessments.build();
        _$failedField = 'calibration';
        _calibration?.build();
        _$failedField = 'benchmarks';
        _benchmarks?.build();
        _$failedField = 'truncated';
        _truncated?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelBoard',
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
