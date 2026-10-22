// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportReport extends ImportReport {
  @override
  final BuiltList<String> sourcesApplied;
  @override
  final BuiltList<String> sourcesUnknown;
  @override
  final int? triggersUpserted;
  @override
  final int? channelsUpserted;
  @override
  final int? briefingsUpserted;
  @override
  final int? customSourcesUpserted;
  @override
  final int? llmProvidersUpserted;
  @override
  final BuiltList<String>? warnings;
  @override
  final int? placesUpserted;
  @override
  final int? viewsUpserted;
  @override
  final int? watchlistsUpserted;
  @override
  final int? pushProvidersUpserted;

  factory _$ImportReport([void Function(ImportReportBuilder)? updates]) =>
      (ImportReportBuilder()..update(updates))._build();

  _$ImportReport._(
      {required this.sourcesApplied,
      required this.sourcesUnknown,
      this.triggersUpserted,
      this.channelsUpserted,
      this.briefingsUpserted,
      this.customSourcesUpserted,
      this.llmProvidersUpserted,
      this.warnings,
      this.placesUpserted,
      this.viewsUpserted,
      this.watchlistsUpserted,
      this.pushProvidersUpserted})
      : super._();
  @override
  ImportReport rebuild(void Function(ImportReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportReportBuilder toBuilder() => ImportReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportReport &&
        sourcesApplied == other.sourcesApplied &&
        sourcesUnknown == other.sourcesUnknown &&
        triggersUpserted == other.triggersUpserted &&
        channelsUpserted == other.channelsUpserted &&
        briefingsUpserted == other.briefingsUpserted &&
        customSourcesUpserted == other.customSourcesUpserted &&
        llmProvidersUpserted == other.llmProvidersUpserted &&
        warnings == other.warnings &&
        placesUpserted == other.placesUpserted &&
        viewsUpserted == other.viewsUpserted &&
        watchlistsUpserted == other.watchlistsUpserted &&
        pushProvidersUpserted == other.pushProvidersUpserted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourcesApplied.hashCode);
    _$hash = $jc(_$hash, sourcesUnknown.hashCode);
    _$hash = $jc(_$hash, triggersUpserted.hashCode);
    _$hash = $jc(_$hash, channelsUpserted.hashCode);
    _$hash = $jc(_$hash, briefingsUpserted.hashCode);
    _$hash = $jc(_$hash, customSourcesUpserted.hashCode);
    _$hash = $jc(_$hash, llmProvidersUpserted.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, placesUpserted.hashCode);
    _$hash = $jc(_$hash, viewsUpserted.hashCode);
    _$hash = $jc(_$hash, watchlistsUpserted.hashCode);
    _$hash = $jc(_$hash, pushProvidersUpserted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportReport')
          ..add('sourcesApplied', sourcesApplied)
          ..add('sourcesUnknown', sourcesUnknown)
          ..add('triggersUpserted', triggersUpserted)
          ..add('channelsUpserted', channelsUpserted)
          ..add('briefingsUpserted', briefingsUpserted)
          ..add('customSourcesUpserted', customSourcesUpserted)
          ..add('llmProvidersUpserted', llmProvidersUpserted)
          ..add('warnings', warnings)
          ..add('placesUpserted', placesUpserted)
          ..add('viewsUpserted', viewsUpserted)
          ..add('watchlistsUpserted', watchlistsUpserted)
          ..add('pushProvidersUpserted', pushProvidersUpserted))
        .toString();
  }
}

class ImportReportBuilder
    implements Builder<ImportReport, ImportReportBuilder> {
  _$ImportReport? _$v;

  ListBuilder<String>? _sourcesApplied;
  ListBuilder<String> get sourcesApplied =>
      _$this._sourcesApplied ??= ListBuilder<String>();
  set sourcesApplied(ListBuilder<String>? sourcesApplied) =>
      _$this._sourcesApplied = sourcesApplied;

  ListBuilder<String>? _sourcesUnknown;
  ListBuilder<String> get sourcesUnknown =>
      _$this._sourcesUnknown ??= ListBuilder<String>();
  set sourcesUnknown(ListBuilder<String>? sourcesUnknown) =>
      _$this._sourcesUnknown = sourcesUnknown;

  int? _triggersUpserted;
  int? get triggersUpserted => _$this._triggersUpserted;
  set triggersUpserted(int? triggersUpserted) =>
      _$this._triggersUpserted = triggersUpserted;

  int? _channelsUpserted;
  int? get channelsUpserted => _$this._channelsUpserted;
  set channelsUpserted(int? channelsUpserted) =>
      _$this._channelsUpserted = channelsUpserted;

  int? _briefingsUpserted;
  int? get briefingsUpserted => _$this._briefingsUpserted;
  set briefingsUpserted(int? briefingsUpserted) =>
      _$this._briefingsUpserted = briefingsUpserted;

  int? _customSourcesUpserted;
  int? get customSourcesUpserted => _$this._customSourcesUpserted;
  set customSourcesUpserted(int? customSourcesUpserted) =>
      _$this._customSourcesUpserted = customSourcesUpserted;

  int? _llmProvidersUpserted;
  int? get llmProvidersUpserted => _$this._llmProvidersUpserted;
  set llmProvidersUpserted(int? llmProvidersUpserted) =>
      _$this._llmProvidersUpserted = llmProvidersUpserted;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  int? _placesUpserted;
  int? get placesUpserted => _$this._placesUpserted;
  set placesUpserted(int? placesUpserted) =>
      _$this._placesUpserted = placesUpserted;

  int? _viewsUpserted;
  int? get viewsUpserted => _$this._viewsUpserted;
  set viewsUpserted(int? viewsUpserted) =>
      _$this._viewsUpserted = viewsUpserted;

  int? _watchlistsUpserted;
  int? get watchlistsUpserted => _$this._watchlistsUpserted;
  set watchlistsUpserted(int? watchlistsUpserted) =>
      _$this._watchlistsUpserted = watchlistsUpserted;

  int? _pushProvidersUpserted;
  int? get pushProvidersUpserted => _$this._pushProvidersUpserted;
  set pushProvidersUpserted(int? pushProvidersUpserted) =>
      _$this._pushProvidersUpserted = pushProvidersUpserted;

  ImportReportBuilder() {
    ImportReport._defaults(this);
  }

  ImportReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourcesApplied = $v.sourcesApplied.toBuilder();
      _sourcesUnknown = $v.sourcesUnknown.toBuilder();
      _triggersUpserted = $v.triggersUpserted;
      _channelsUpserted = $v.channelsUpserted;
      _briefingsUpserted = $v.briefingsUpserted;
      _customSourcesUpserted = $v.customSourcesUpserted;
      _llmProvidersUpserted = $v.llmProvidersUpserted;
      _warnings = $v.warnings?.toBuilder();
      _placesUpserted = $v.placesUpserted;
      _viewsUpserted = $v.viewsUpserted;
      _watchlistsUpserted = $v.watchlistsUpserted;
      _pushProvidersUpserted = $v.pushProvidersUpserted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportReport other) {
    _$v = other as _$ImportReport;
  }

  @override
  void update(void Function(ImportReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportReport build() => _build();

  _$ImportReport _build() {
    _$ImportReport _$result;
    try {
      _$result = _$v ??
          _$ImportReport._(
            sourcesApplied: sourcesApplied.build(),
            sourcesUnknown: sourcesUnknown.build(),
            triggersUpserted: triggersUpserted,
            channelsUpserted: channelsUpserted,
            briefingsUpserted: briefingsUpserted,
            customSourcesUpserted: customSourcesUpserted,
            llmProvidersUpserted: llmProvidersUpserted,
            warnings: _warnings?.build(),
            placesUpserted: placesUpserted,
            viewsUpserted: viewsUpserted,
            watchlistsUpserted: watchlistsUpserted,
            pushProvidersUpserted: pushProvidersUpserted,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourcesApplied';
        sourcesApplied.build();
        _$failedField = 'sourcesUnknown';
        sourcesUnknown.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ImportReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
