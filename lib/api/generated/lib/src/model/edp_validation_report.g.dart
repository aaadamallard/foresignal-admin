// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_validation_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpValidationReport extends EdpValidationReport {
  @override
  final bool? manifestValid;
  @override
  final BuiltList<EdpItemRejectionSchemaErrorsInner>? manifestErrors;
  @override
  final BuiltList<String>? breakingChanges;
  @override
  final int? itemsValid;
  @override
  final BuiltList<EdpItemRejection>? rejected;

  factory _$EdpValidationReport([
    void Function(EdpValidationReportBuilder)? updates,
  ]) => (EdpValidationReportBuilder()..update(updates))._build();

  _$EdpValidationReport._({
    this.manifestValid,
    this.manifestErrors,
    this.breakingChanges,
    this.itemsValid,
    this.rejected,
  }) : super._();
  @override
  EdpValidationReport rebuild(
    void Function(EdpValidationReportBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpValidationReportBuilder toBuilder() =>
      EdpValidationReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpValidationReport &&
        manifestValid == other.manifestValid &&
        manifestErrors == other.manifestErrors &&
        breakingChanges == other.breakingChanges &&
        itemsValid == other.itemsValid &&
        rejected == other.rejected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, manifestValid.hashCode);
    _$hash = $jc(_$hash, manifestErrors.hashCode);
    _$hash = $jc(_$hash, breakingChanges.hashCode);
    _$hash = $jc(_$hash, itemsValid.hashCode);
    _$hash = $jc(_$hash, rejected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpValidationReport')
          ..add('manifestValid', manifestValid)
          ..add('manifestErrors', manifestErrors)
          ..add('breakingChanges', breakingChanges)
          ..add('itemsValid', itemsValid)
          ..add('rejected', rejected))
        .toString();
  }
}

class EdpValidationReportBuilder
    implements Builder<EdpValidationReport, EdpValidationReportBuilder> {
  _$EdpValidationReport? _$v;

  bool? _manifestValid;
  bool? get manifestValid => _$this._manifestValid;
  set manifestValid(bool? manifestValid) =>
      _$this._manifestValid = manifestValid;

  ListBuilder<EdpItemRejectionSchemaErrorsInner>? _manifestErrors;
  ListBuilder<EdpItemRejectionSchemaErrorsInner> get manifestErrors =>
      _$this._manifestErrors ??=
          ListBuilder<EdpItemRejectionSchemaErrorsInner>();
  set manifestErrors(
    ListBuilder<EdpItemRejectionSchemaErrorsInner>? manifestErrors,
  ) => _$this._manifestErrors = manifestErrors;

  ListBuilder<String>? _breakingChanges;
  ListBuilder<String> get breakingChanges =>
      _$this._breakingChanges ??= ListBuilder<String>();
  set breakingChanges(ListBuilder<String>? breakingChanges) =>
      _$this._breakingChanges = breakingChanges;

  int? _itemsValid;
  int? get itemsValid => _$this._itemsValid;
  set itemsValid(int? itemsValid) => _$this._itemsValid = itemsValid;

  ListBuilder<EdpItemRejection>? _rejected;
  ListBuilder<EdpItemRejection> get rejected =>
      _$this._rejected ??= ListBuilder<EdpItemRejection>();
  set rejected(ListBuilder<EdpItemRejection>? rejected) =>
      _$this._rejected = rejected;

  EdpValidationReportBuilder() {
    EdpValidationReport._defaults(this);
  }

  EdpValidationReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _manifestValid = $v.manifestValid;
      _manifestErrors = $v.manifestErrors?.toBuilder();
      _breakingChanges = $v.breakingChanges?.toBuilder();
      _itemsValid = $v.itemsValid;
      _rejected = $v.rejected?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpValidationReport other) {
    _$v = other as _$EdpValidationReport;
  }

  @override
  void update(void Function(EdpValidationReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpValidationReport build() => _build();

  _$EdpValidationReport _build() {
    _$EdpValidationReport _$result;
    try {
      _$result =
          _$v ??
          _$EdpValidationReport._(
            manifestValid: manifestValid,
            manifestErrors: _manifestErrors?.build(),
            breakingChanges: _breakingChanges?.build(),
            itemsValid: itemsValid,
            rejected: _rejected?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'manifestErrors';
        _manifestErrors?.build();
        _$failedField = 'breakingChanges';
        _breakingChanges?.build();

        _$failedField = 'rejected';
        _rejected?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdpValidationReport',
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
