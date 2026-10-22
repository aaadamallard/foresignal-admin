// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_expectations_findings_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BenchmarkCaseExpectationsFindingsInner
    extends BenchmarkCaseExpectationsFindingsInner {
  @override
  final String findingType;
  @override
  final bool present;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final String? seriesRef;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final FindingSeverity? minSeverity;

  factory _$BenchmarkCaseExpectationsFindingsInner([
    void Function(BenchmarkCaseExpectationsFindingsInnerBuilder)? updates,
  ]) => (BenchmarkCaseExpectationsFindingsInnerBuilder()..update(updates))
      ._build();

  _$BenchmarkCaseExpectationsFindingsInner._({
    required this.findingType,
    required this.present,
    this.regionCodes,
    this.seriesRef,
    this.from,
    this.to,
    this.minSeverity,
  }) : super._();
  @override
  BenchmarkCaseExpectationsFindingsInner rebuild(
    void Function(BenchmarkCaseExpectationsFindingsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseExpectationsFindingsInnerBuilder toBuilder() =>
      BenchmarkCaseExpectationsFindingsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCaseExpectationsFindingsInner &&
        findingType == other.findingType &&
        present == other.present &&
        regionCodes == other.regionCodes &&
        seriesRef == other.seriesRef &&
        from == other.from &&
        to == other.to &&
        minSeverity == other.minSeverity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findingType.hashCode);
    _$hash = $jc(_$hash, present.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, seriesRef.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BenchmarkCaseExpectationsFindingsInner',
          )
          ..add('findingType', findingType)
          ..add('present', present)
          ..add('regionCodes', regionCodes)
          ..add('seriesRef', seriesRef)
          ..add('from', from)
          ..add('to', to)
          ..add('minSeverity', minSeverity))
        .toString();
  }
}

class BenchmarkCaseExpectationsFindingsInnerBuilder
    implements
        Builder<
          BenchmarkCaseExpectationsFindingsInner,
          BenchmarkCaseExpectationsFindingsInnerBuilder
        > {
  _$BenchmarkCaseExpectationsFindingsInner? _$v;

  String? _findingType;
  String? get findingType => _$this._findingType;
  set findingType(String? findingType) => _$this._findingType = findingType;

  bool? _present;
  bool? get present => _$this._present;
  set present(bool? present) => _$this._present = present;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  String? _seriesRef;
  String? get seriesRef => _$this._seriesRef;
  set seriesRef(String? seriesRef) => _$this._seriesRef = seriesRef;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  FindingSeverity? _minSeverity;
  FindingSeverity? get minSeverity => _$this._minSeverity;
  set minSeverity(FindingSeverity? minSeverity) =>
      _$this._minSeverity = minSeverity;

  BenchmarkCaseExpectationsFindingsInnerBuilder() {
    BenchmarkCaseExpectationsFindingsInner._defaults(this);
  }

  BenchmarkCaseExpectationsFindingsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findingType = $v.findingType;
      _present = $v.present;
      _regionCodes = $v.regionCodes?.toBuilder();
      _seriesRef = $v.seriesRef;
      _from = $v.from;
      _to = $v.to;
      _minSeverity = $v.minSeverity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCaseExpectationsFindingsInner other) {
    _$v = other as _$BenchmarkCaseExpectationsFindingsInner;
  }

  @override
  void update(
    void Function(BenchmarkCaseExpectationsFindingsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCaseExpectationsFindingsInner build() => _build();

  _$BenchmarkCaseExpectationsFindingsInner _build() {
    _$BenchmarkCaseExpectationsFindingsInner _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkCaseExpectationsFindingsInner._(
            findingType: BuiltValueNullFieldError.checkNotNull(
              findingType,
              r'BenchmarkCaseExpectationsFindingsInner',
              'findingType',
            ),
            present: BuiltValueNullFieldError.checkNotNull(
              present,
              r'BenchmarkCaseExpectationsFindingsInner',
              'present',
            ),
            regionCodes: _regionCodes?.build(),
            seriesRef: seriesRef,
            from: from,
            to: to,
            minSeverity: minSeverity,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkCaseExpectationsFindingsInner',
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
