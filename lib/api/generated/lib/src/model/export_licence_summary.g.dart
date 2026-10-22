// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_licence_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportLicenceSummary extends ExportLicenceSummary {
  @override
  final BuiltList<ExportLicenceSummaryLicencesInner> licences;
  @override
  final BuiltList<Attribution> attributions;
  @override
  final bool personalUseOnly;
  @override
  final BuiltList<String>? personalUseSources;
  @override
  final BuiltList<ExportLicenceSummaryExcludedInner>? excluded;

  factory _$ExportLicenceSummary([
    void Function(ExportLicenceSummaryBuilder)? updates,
  ]) => (ExportLicenceSummaryBuilder()..update(updates))._build();

  _$ExportLicenceSummary._({
    required this.licences,
    required this.attributions,
    required this.personalUseOnly,
    this.personalUseSources,
    this.excluded,
  }) : super._();
  @override
  ExportLicenceSummary rebuild(
    void Function(ExportLicenceSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExportLicenceSummaryBuilder toBuilder() =>
      ExportLicenceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportLicenceSummary &&
        licences == other.licences &&
        attributions == other.attributions &&
        personalUseOnly == other.personalUseOnly &&
        personalUseSources == other.personalUseSources &&
        excluded == other.excluded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licences.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, personalUseOnly.hashCode);
    _$hash = $jc(_$hash, personalUseSources.hashCode);
    _$hash = $jc(_$hash, excluded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportLicenceSummary')
          ..add('licences', licences)
          ..add('attributions', attributions)
          ..add('personalUseOnly', personalUseOnly)
          ..add('personalUseSources', personalUseSources)
          ..add('excluded', excluded))
        .toString();
  }
}

class ExportLicenceSummaryBuilder
    implements Builder<ExportLicenceSummary, ExportLicenceSummaryBuilder> {
  _$ExportLicenceSummary? _$v;

  ListBuilder<ExportLicenceSummaryLicencesInner>? _licences;
  ListBuilder<ExportLicenceSummaryLicencesInner> get licences =>
      _$this._licences ??= ListBuilder<ExportLicenceSummaryLicencesInner>();
  set licences(ListBuilder<ExportLicenceSummaryLicencesInner>? licences) =>
      _$this._licences = licences;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  bool? _personalUseOnly;
  bool? get personalUseOnly => _$this._personalUseOnly;
  set personalUseOnly(bool? personalUseOnly) =>
      _$this._personalUseOnly = personalUseOnly;

  ListBuilder<String>? _personalUseSources;
  ListBuilder<String> get personalUseSources =>
      _$this._personalUseSources ??= ListBuilder<String>();
  set personalUseSources(ListBuilder<String>? personalUseSources) =>
      _$this._personalUseSources = personalUseSources;

  ListBuilder<ExportLicenceSummaryExcludedInner>? _excluded;
  ListBuilder<ExportLicenceSummaryExcludedInner> get excluded =>
      _$this._excluded ??= ListBuilder<ExportLicenceSummaryExcludedInner>();
  set excluded(ListBuilder<ExportLicenceSummaryExcludedInner>? excluded) =>
      _$this._excluded = excluded;

  ExportLicenceSummaryBuilder() {
    ExportLicenceSummary._defaults(this);
  }

  ExportLicenceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licences = $v.licences.toBuilder();
      _attributions = $v.attributions.toBuilder();
      _personalUseOnly = $v.personalUseOnly;
      _personalUseSources = $v.personalUseSources?.toBuilder();
      _excluded = $v.excluded?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportLicenceSummary other) {
    _$v = other as _$ExportLicenceSummary;
  }

  @override
  void update(void Function(ExportLicenceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportLicenceSummary build() => _build();

  _$ExportLicenceSummary _build() {
    _$ExportLicenceSummary _$result;
    try {
      _$result =
          _$v ??
          _$ExportLicenceSummary._(
            licences: licences.build(),
            attributions: attributions.build(),
            personalUseOnly: BuiltValueNullFieldError.checkNotNull(
              personalUseOnly,
              r'ExportLicenceSummary',
              'personalUseOnly',
            ),
            personalUseSources: _personalUseSources?.build(),
            excluded: _excluded?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'licences';
        licences.build();
        _$failedField = 'attributions';
        attributions.build();

        _$failedField = 'personalUseSources';
        _personalUseSources?.build();
        _$failedField = 'excluded';
        _excluded?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExportLicenceSummary',
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
