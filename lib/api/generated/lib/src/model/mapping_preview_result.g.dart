// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_preview_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingPreviewResult extends MappingPreviewResult {
  @override
  final BuiltList<NormalizedRecordPreview> records;
  @override
  final BuiltList<MappingRejection> rejections;
  @override
  final int? skipped;
  @override
  final BuiltList<MappingWarning> warnings;

  factory _$MappingPreviewResult([
    void Function(MappingPreviewResultBuilder)? updates,
  ]) => (MappingPreviewResultBuilder()..update(updates))._build();

  _$MappingPreviewResult._({
    required this.records,
    required this.rejections,
    this.skipped,
    required this.warnings,
  }) : super._();
  @override
  MappingPreviewResult rebuild(
    void Function(MappingPreviewResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingPreviewResultBuilder toBuilder() =>
      MappingPreviewResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingPreviewResult &&
        records == other.records &&
        rejections == other.rejections &&
        skipped == other.skipped &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, rejections.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingPreviewResult')
          ..add('records', records)
          ..add('rejections', rejections)
          ..add('skipped', skipped)
          ..add('warnings', warnings))
        .toString();
  }
}

class MappingPreviewResultBuilder
    implements Builder<MappingPreviewResult, MappingPreviewResultBuilder> {
  _$MappingPreviewResult? _$v;

  ListBuilder<NormalizedRecordPreview>? _records;
  ListBuilder<NormalizedRecordPreview> get records =>
      _$this._records ??= ListBuilder<NormalizedRecordPreview>();
  set records(ListBuilder<NormalizedRecordPreview>? records) =>
      _$this._records = records;

  ListBuilder<MappingRejection>? _rejections;
  ListBuilder<MappingRejection> get rejections =>
      _$this._rejections ??= ListBuilder<MappingRejection>();
  set rejections(ListBuilder<MappingRejection>? rejections) =>
      _$this._rejections = rejections;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  ListBuilder<MappingWarning>? _warnings;
  ListBuilder<MappingWarning> get warnings =>
      _$this._warnings ??= ListBuilder<MappingWarning>();
  set warnings(ListBuilder<MappingWarning>? warnings) =>
      _$this._warnings = warnings;

  MappingPreviewResultBuilder() {
    MappingPreviewResult._defaults(this);
  }

  MappingPreviewResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _rejections = $v.rejections.toBuilder();
      _skipped = $v.skipped;
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingPreviewResult other) {
    _$v = other as _$MappingPreviewResult;
  }

  @override
  void update(void Function(MappingPreviewResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingPreviewResult build() => _build();

  _$MappingPreviewResult _build() {
    _$MappingPreviewResult _$result;
    try {
      _$result =
          _$v ??
          _$MappingPreviewResult._(
            records: records.build(),
            rejections: rejections.build(),
            skipped: skipped,
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
        _$failedField = 'rejections';
        rejections.build();

        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MappingPreviewResult',
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
