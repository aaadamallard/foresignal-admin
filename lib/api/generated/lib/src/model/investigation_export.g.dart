// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigation_export.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvestigationExport extends InvestigationExport {
  @override
  final String header;
  @override
  final DateTime generatedAt;
  @override
  final Investigation investigation;
  @override
  final BuiltList<String> attributions;

  factory _$InvestigationExport(
          [void Function(InvestigationExportBuilder)? updates]) =>
      (InvestigationExportBuilder()..update(updates))._build();

  _$InvestigationExport._(
      {required this.header,
      required this.generatedAt,
      required this.investigation,
      required this.attributions})
      : super._();
  @override
  InvestigationExport rebuild(
          void Function(InvestigationExportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvestigationExportBuilder toBuilder() =>
      InvestigationExportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigationExport &&
        header == other.header &&
        generatedAt == other.generatedAt &&
        investigation == other.investigation &&
        attributions == other.attributions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, investigation.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvestigationExport')
          ..add('header', header)
          ..add('generatedAt', generatedAt)
          ..add('investigation', investigation)
          ..add('attributions', attributions))
        .toString();
  }
}

class InvestigationExportBuilder
    implements Builder<InvestigationExport, InvestigationExportBuilder> {
  _$InvestigationExport? _$v;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  InvestigationBuilder? _investigation;
  InvestigationBuilder get investigation =>
      _$this._investigation ??= InvestigationBuilder();
  set investigation(InvestigationBuilder? investigation) =>
      _$this._investigation = investigation;

  ListBuilder<String>? _attributions;
  ListBuilder<String> get attributions =>
      _$this._attributions ??= ListBuilder<String>();
  set attributions(ListBuilder<String>? attributions) =>
      _$this._attributions = attributions;

  InvestigationExportBuilder() {
    InvestigationExport._defaults(this);
  }

  InvestigationExportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _header = $v.header;
      _generatedAt = $v.generatedAt;
      _investigation = $v.investigation.toBuilder();
      _attributions = $v.attributions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigationExport other) {
    _$v = other as _$InvestigationExport;
  }

  @override
  void update(void Function(InvestigationExportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigationExport build() => _build();

  _$InvestigationExport _build() {
    _$InvestigationExport _$result;
    try {
      _$result = _$v ??
          _$InvestigationExport._(
            header: BuiltValueNullFieldError.checkNotNull(
                header, r'InvestigationExport', 'header'),
            generatedAt: BuiltValueNullFieldError.checkNotNull(
                generatedAt, r'InvestigationExport', 'generatedAt'),
            investigation: investigation.build(),
            attributions: attributions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'investigation';
        investigation.build();
        _$failedField = 'attributions';
        attributions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvestigationExport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
