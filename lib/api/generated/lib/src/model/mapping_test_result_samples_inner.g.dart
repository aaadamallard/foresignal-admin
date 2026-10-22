// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_test_result_samples_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingTestResultSamplesInner extends MappingTestResultSamplesInner {
  @override
  final BuiltList<NormalizedRecordPreview> records;
  @override
  final BuiltList<MappingRejection> rejections;
  @override
  final int? skipped;
  @override
  final BuiltList<MappingWarning> warnings;
  @override
  final DateTime receivedAt;

  factory _$MappingTestResultSamplesInner([
    void Function(MappingTestResultSamplesInnerBuilder)? updates,
  ]) => (MappingTestResultSamplesInnerBuilder()..update(updates))._build();

  _$MappingTestResultSamplesInner._({
    required this.records,
    required this.rejections,
    this.skipped,
    required this.warnings,
    required this.receivedAt,
  }) : super._();
  @override
  MappingTestResultSamplesInner rebuild(
    void Function(MappingTestResultSamplesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingTestResultSamplesInnerBuilder toBuilder() =>
      MappingTestResultSamplesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingTestResultSamplesInner &&
        records == other.records &&
        rejections == other.rejections &&
        skipped == other.skipped &&
        warnings == other.warnings &&
        receivedAt == other.receivedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, rejections.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, receivedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingTestResultSamplesInner')
          ..add('records', records)
          ..add('rejections', rejections)
          ..add('skipped', skipped)
          ..add('warnings', warnings)
          ..add('receivedAt', receivedAt))
        .toString();
  }
}

class MappingTestResultSamplesInnerBuilder
    implements
        Builder<
          MappingTestResultSamplesInner,
          MappingTestResultSamplesInnerBuilder
        > {
  _$MappingTestResultSamplesInner? _$v;

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

  DateTime? _receivedAt;
  DateTime? get receivedAt => _$this._receivedAt;
  set receivedAt(DateTime? receivedAt) => _$this._receivedAt = receivedAt;

  MappingTestResultSamplesInnerBuilder() {
    MappingTestResultSamplesInner._defaults(this);
  }

  MappingTestResultSamplesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _rejections = $v.rejections.toBuilder();
      _skipped = $v.skipped;
      _warnings = $v.warnings.toBuilder();
      _receivedAt = $v.receivedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingTestResultSamplesInner other) {
    _$v = other as _$MappingTestResultSamplesInner;
  }

  @override
  void update(void Function(MappingTestResultSamplesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingTestResultSamplesInner build() => _build();

  _$MappingTestResultSamplesInner _build() {
    _$MappingTestResultSamplesInner _$result;
    try {
      _$result =
          _$v ??
          _$MappingTestResultSamplesInner._(
            records: records.build(),
            rejections: rejections.build(),
            skipped: skipped,
            warnings: warnings.build(),
            receivedAt: BuiltValueNullFieldError.checkNotNull(
              receivedAt,
              r'MappingTestResultSamplesInner',
              'receivedAt',
            ),
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
          r'MappingTestResultSamplesInner',
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
