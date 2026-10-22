// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_licence_summary_licences_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportLicenceSummaryLicencesInner
    extends ExportLicenceSummaryLicencesInner {
  @override
  final LicenceTerms terms;
  @override
  final BuiltList<String> sources;
  @override
  final int rows;

  factory _$ExportLicenceSummaryLicencesInner(
          [void Function(ExportLicenceSummaryLicencesInnerBuilder)? updates]) =>
      (ExportLicenceSummaryLicencesInnerBuilder()..update(updates))._build();

  _$ExportLicenceSummaryLicencesInner._(
      {required this.terms, required this.sources, required this.rows})
      : super._();
  @override
  ExportLicenceSummaryLicencesInner rebuild(
          void Function(ExportLicenceSummaryLicencesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportLicenceSummaryLicencesInnerBuilder toBuilder() =>
      ExportLicenceSummaryLicencesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportLicenceSummaryLicencesInner &&
        terms == other.terms &&
        sources == other.sources &&
        rows == other.rows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, terms.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportLicenceSummaryLicencesInner')
          ..add('terms', terms)
          ..add('sources', sources)
          ..add('rows', rows))
        .toString();
  }
}

class ExportLicenceSummaryLicencesInnerBuilder
    implements
        Builder<ExportLicenceSummaryLicencesInner,
            ExportLicenceSummaryLicencesInnerBuilder> {
  _$ExportLicenceSummaryLicencesInner? _$v;

  LicenceTermsBuilder? _terms;
  LicenceTermsBuilder get terms => _$this._terms ??= LicenceTermsBuilder();
  set terms(LicenceTermsBuilder? terms) => _$this._terms = terms;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  ExportLicenceSummaryLicencesInnerBuilder() {
    ExportLicenceSummaryLicencesInner._defaults(this);
  }

  ExportLicenceSummaryLicencesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _terms = $v.terms.toBuilder();
      _sources = $v.sources.toBuilder();
      _rows = $v.rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportLicenceSummaryLicencesInner other) {
    _$v = other as _$ExportLicenceSummaryLicencesInner;
  }

  @override
  void update(
      void Function(ExportLicenceSummaryLicencesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportLicenceSummaryLicencesInner build() => _build();

  _$ExportLicenceSummaryLicencesInner _build() {
    _$ExportLicenceSummaryLicencesInner _$result;
    try {
      _$result = _$v ??
          _$ExportLicenceSummaryLicencesInner._(
            terms: terms.build(),
            sources: sources.build(),
            rows: BuiltValueNullFieldError.checkNotNull(
                rows, r'ExportLicenceSummaryLicencesInner', 'rows'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'terms';
        terms.build();
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExportLicenceSummaryLicencesInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
