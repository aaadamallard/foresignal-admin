// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DossierSections extends DossierSections {
  @override
  final DossierSectionsOverview? overview;
  @override
  final DossierSectionsImagery? imagery;
  @override
  final DossierSectionsForecast? forecast;
  @override
  final DossierSectionsImpacts? impacts;
  @override
  final DossierSectionsRelated? related;
  @override
  final DossierSectionsTimeline? timeline;
  @override
  final DossierSectionsAnalysis? analysis;

  factory _$DossierSections([void Function(DossierSectionsBuilder)? updates]) =>
      (DossierSectionsBuilder()..update(updates))._build();

  _$DossierSections._({
    this.overview,
    this.imagery,
    this.forecast,
    this.impacts,
    this.related,
    this.timeline,
    this.analysis,
  }) : super._();
  @override
  DossierSections rebuild(void Function(DossierSectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsBuilder toBuilder() => DossierSectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSections &&
        overview == other.overview &&
        imagery == other.imagery &&
        forecast == other.forecast &&
        impacts == other.impacts &&
        related == other.related &&
        timeline == other.timeline &&
        analysis == other.analysis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, imagery.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jc(_$hash, impacts.hashCode);
    _$hash = $jc(_$hash, related.hashCode);
    _$hash = $jc(_$hash, timeline.hashCode);
    _$hash = $jc(_$hash, analysis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSections')
          ..add('overview', overview)
          ..add('imagery', imagery)
          ..add('forecast', forecast)
          ..add('impacts', impacts)
          ..add('related', related)
          ..add('timeline', timeline)
          ..add('analysis', analysis))
        .toString();
  }
}

class DossierSectionsBuilder
    implements Builder<DossierSections, DossierSectionsBuilder> {
  _$DossierSections? _$v;

  DossierSectionsOverviewBuilder? _overview;
  DossierSectionsOverviewBuilder get overview =>
      _$this._overview ??= DossierSectionsOverviewBuilder();
  set overview(DossierSectionsOverviewBuilder? overview) =>
      _$this._overview = overview;

  DossierSectionsImageryBuilder? _imagery;
  DossierSectionsImageryBuilder get imagery =>
      _$this._imagery ??= DossierSectionsImageryBuilder();
  set imagery(DossierSectionsImageryBuilder? imagery) =>
      _$this._imagery = imagery;

  DossierSectionsForecastBuilder? _forecast;
  DossierSectionsForecastBuilder get forecast =>
      _$this._forecast ??= DossierSectionsForecastBuilder();
  set forecast(DossierSectionsForecastBuilder? forecast) =>
      _$this._forecast = forecast;

  DossierSectionsImpactsBuilder? _impacts;
  DossierSectionsImpactsBuilder get impacts =>
      _$this._impacts ??= DossierSectionsImpactsBuilder();
  set impacts(DossierSectionsImpactsBuilder? impacts) =>
      _$this._impacts = impacts;

  DossierSectionsRelatedBuilder? _related;
  DossierSectionsRelatedBuilder get related =>
      _$this._related ??= DossierSectionsRelatedBuilder();
  set related(DossierSectionsRelatedBuilder? related) =>
      _$this._related = related;

  DossierSectionsTimelineBuilder? _timeline;
  DossierSectionsTimelineBuilder get timeline =>
      _$this._timeline ??= DossierSectionsTimelineBuilder();
  set timeline(DossierSectionsTimelineBuilder? timeline) =>
      _$this._timeline = timeline;

  DossierSectionsAnalysisBuilder? _analysis;
  DossierSectionsAnalysisBuilder get analysis =>
      _$this._analysis ??= DossierSectionsAnalysisBuilder();
  set analysis(DossierSectionsAnalysisBuilder? analysis) =>
      _$this._analysis = analysis;

  DossierSectionsBuilder() {
    DossierSections._defaults(this);
  }

  DossierSectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _overview = $v.overview?.toBuilder();
      _imagery = $v.imagery?.toBuilder();
      _forecast = $v.forecast?.toBuilder();
      _impacts = $v.impacts?.toBuilder();
      _related = $v.related?.toBuilder();
      _timeline = $v.timeline?.toBuilder();
      _analysis = $v.analysis?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSections other) {
    _$v = other as _$DossierSections;
  }

  @override
  void update(void Function(DossierSectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSections build() => _build();

  _$DossierSections _build() {
    _$DossierSections _$result;
    try {
      _$result =
          _$v ??
          _$DossierSections._(
            overview: _overview?.build(),
            imagery: _imagery?.build(),
            forecast: _forecast?.build(),
            impacts: _impacts?.build(),
            related: _related?.build(),
            timeline: _timeline?.build(),
            analysis: _analysis?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'overview';
        _overview?.build();
        _$failedField = 'imagery';
        _imagery?.build();
        _$failedField = 'forecast';
        _forecast?.build();
        _$failedField = 'impacts';
        _impacts?.build();
        _$failedField = 'related';
        _related?.build();
        _$failedField = 'timeline';
        _timeline?.build();
        _$failedField = 'analysis';
        _analysis?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierSections',
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
