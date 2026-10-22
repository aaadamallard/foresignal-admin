// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purge_report_citing_documents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurgeReportCitingDocuments extends PurgeReportCitingDocuments {
  @override
  final int? askMessages;
  @override
  final int? briefingRuns;

  factory _$PurgeReportCitingDocuments([
    void Function(PurgeReportCitingDocumentsBuilder)? updates,
  ]) => (PurgeReportCitingDocumentsBuilder()..update(updates))._build();

  _$PurgeReportCitingDocuments._({this.askMessages, this.briefingRuns})
    : super._();
  @override
  PurgeReportCitingDocuments rebuild(
    void Function(PurgeReportCitingDocumentsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PurgeReportCitingDocumentsBuilder toBuilder() =>
      PurgeReportCitingDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurgeReportCitingDocuments &&
        askMessages == other.askMessages &&
        briefingRuns == other.briefingRuns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, askMessages.hashCode);
    _$hash = $jc(_$hash, briefingRuns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PurgeReportCitingDocuments')
          ..add('askMessages', askMessages)
          ..add('briefingRuns', briefingRuns))
        .toString();
  }
}

class PurgeReportCitingDocumentsBuilder
    implements
        Builder<PurgeReportCitingDocuments, PurgeReportCitingDocumentsBuilder> {
  _$PurgeReportCitingDocuments? _$v;

  int? _askMessages;
  int? get askMessages => _$this._askMessages;
  set askMessages(int? askMessages) => _$this._askMessages = askMessages;

  int? _briefingRuns;
  int? get briefingRuns => _$this._briefingRuns;
  set briefingRuns(int? briefingRuns) => _$this._briefingRuns = briefingRuns;

  PurgeReportCitingDocumentsBuilder() {
    PurgeReportCitingDocuments._defaults(this);
  }

  PurgeReportCitingDocumentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _askMessages = $v.askMessages;
      _briefingRuns = $v.briefingRuns;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurgeReportCitingDocuments other) {
    _$v = other as _$PurgeReportCitingDocuments;
  }

  @override
  void update(void Function(PurgeReportCitingDocumentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurgeReportCitingDocuments build() => _build();

  _$PurgeReportCitingDocuments _build() {
    final _$result =
        _$v ??
        _$PurgeReportCitingDocuments._(
          askMessages: askMessages,
          briefingRuns: briefingRuns,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
