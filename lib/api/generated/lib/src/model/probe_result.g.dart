// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'probe_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProbeResult extends ProbeResult {
  @override
  final String sourceId;
  @override
  final BuiltList<ProbeResultRequestsInner> requests;
  @override
  final BuiltList<NormalizedRecordPreview> records;
  @override
  final String? parseError;

  factory _$ProbeResult([void Function(ProbeResultBuilder)? updates]) =>
      (ProbeResultBuilder()..update(updates))._build();

  _$ProbeResult._({
    required this.sourceId,
    required this.requests,
    required this.records,
    this.parseError,
  }) : super._();
  @override
  ProbeResult rebuild(void Function(ProbeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProbeResultBuilder toBuilder() => ProbeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProbeResult &&
        sourceId == other.sourceId &&
        requests == other.requests &&
        records == other.records &&
        parseError == other.parseError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, parseError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProbeResult')
          ..add('sourceId', sourceId)
          ..add('requests', requests)
          ..add('records', records)
          ..add('parseError', parseError))
        .toString();
  }
}

class ProbeResultBuilder implements Builder<ProbeResult, ProbeResultBuilder> {
  _$ProbeResult? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  ListBuilder<ProbeResultRequestsInner>? _requests;
  ListBuilder<ProbeResultRequestsInner> get requests =>
      _$this._requests ??= ListBuilder<ProbeResultRequestsInner>();
  set requests(ListBuilder<ProbeResultRequestsInner>? requests) =>
      _$this._requests = requests;

  ListBuilder<NormalizedRecordPreview>? _records;
  ListBuilder<NormalizedRecordPreview> get records =>
      _$this._records ??= ListBuilder<NormalizedRecordPreview>();
  set records(ListBuilder<NormalizedRecordPreview>? records) =>
      _$this._records = records;

  String? _parseError;
  String? get parseError => _$this._parseError;
  set parseError(String? parseError) => _$this._parseError = parseError;

  ProbeResultBuilder() {
    ProbeResult._defaults(this);
  }

  ProbeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _requests = $v.requests.toBuilder();
      _records = $v.records.toBuilder();
      _parseError = $v.parseError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProbeResult other) {
    _$v = other as _$ProbeResult;
  }

  @override
  void update(void Function(ProbeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProbeResult build() => _build();

  _$ProbeResult _build() {
    _$ProbeResult _$result;
    try {
      _$result =
          _$v ??
          _$ProbeResult._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'ProbeResult',
              'sourceId',
            ),
            requests: requests.build(),
            records: records.build(),
            parseError: parseError,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requests';
        requests.build();
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProbeResult',
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
