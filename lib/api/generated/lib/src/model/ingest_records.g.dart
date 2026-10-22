// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_records.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestRecords extends IngestRecords {
  @override
  final BuiltList<NormalizedRecordPreview> records;

  factory _$IngestRecords([void Function(IngestRecordsBuilder)? updates]) =>
      (IngestRecordsBuilder()..update(updates))._build();

  _$IngestRecords._({required this.records}) : super._();
  @override
  IngestRecords rebuild(void Function(IngestRecordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestRecordsBuilder toBuilder() => IngestRecordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestRecords && records == other.records;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'IngestRecords',
    )..add('records', records)).toString();
  }
}

class IngestRecordsBuilder
    implements Builder<IngestRecords, IngestRecordsBuilder> {
  _$IngestRecords? _$v;

  ListBuilder<NormalizedRecordPreview>? _records;
  ListBuilder<NormalizedRecordPreview> get records =>
      _$this._records ??= ListBuilder<NormalizedRecordPreview>();
  set records(ListBuilder<NormalizedRecordPreview>? records) =>
      _$this._records = records;

  IngestRecordsBuilder() {
    IngestRecords._defaults(this);
  }

  IngestRecordsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestRecords other) {
    _$v = other as _$IngestRecords;
  }

  @override
  void update(void Function(IngestRecordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestRecords build() => _build();

  _$IngestRecords _build() {
    _$IngestRecords _$result;
    try {
      _$result = _$v ?? _$IngestRecords._(records: records.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IngestRecords',
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
