// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BenchmarkCaseInput extends BenchmarkCaseInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime windowFrom;
  @override
  final DateTime windowTo;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BenchmarkCaseExpectations expectations;

  factory _$BenchmarkCaseInput([
    void Function(BenchmarkCaseInputBuilder)? updates,
  ]) => (BenchmarkCaseInputBuilder()..update(updates))._build();

  _$BenchmarkCaseInput._({
    required this.name,
    this.description,
    required this.windowFrom,
    required this.windowTo,
    this.regionCodes,
    required this.expectations,
  }) : super._();
  @override
  BenchmarkCaseInput rebuild(
    void Function(BenchmarkCaseInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseInputBuilder toBuilder() =>
      BenchmarkCaseInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCaseInput &&
        name == other.name &&
        description == other.description &&
        windowFrom == other.windowFrom &&
        windowTo == other.windowTo &&
        regionCodes == other.regionCodes &&
        expectations == other.expectations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, windowFrom.hashCode);
    _$hash = $jc(_$hash, windowTo.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, expectations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkCaseInput')
          ..add('name', name)
          ..add('description', description)
          ..add('windowFrom', windowFrom)
          ..add('windowTo', windowTo)
          ..add('regionCodes', regionCodes)
          ..add('expectations', expectations))
        .toString();
  }
}

class BenchmarkCaseInputBuilder
    implements Builder<BenchmarkCaseInput, BenchmarkCaseInputBuilder> {
  _$BenchmarkCaseInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _windowFrom;
  DateTime? get windowFrom => _$this._windowFrom;
  set windowFrom(DateTime? windowFrom) => _$this._windowFrom = windowFrom;

  DateTime? _windowTo;
  DateTime? get windowTo => _$this._windowTo;
  set windowTo(DateTime? windowTo) => _$this._windowTo = windowTo;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  BenchmarkCaseExpectationsBuilder? _expectations;
  BenchmarkCaseExpectationsBuilder get expectations =>
      _$this._expectations ??= BenchmarkCaseExpectationsBuilder();
  set expectations(BenchmarkCaseExpectationsBuilder? expectations) =>
      _$this._expectations = expectations;

  BenchmarkCaseInputBuilder() {
    BenchmarkCaseInput._defaults(this);
  }

  BenchmarkCaseInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _windowFrom = $v.windowFrom;
      _windowTo = $v.windowTo;
      _regionCodes = $v.regionCodes?.toBuilder();
      _expectations = $v.expectations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCaseInput other) {
    _$v = other as _$BenchmarkCaseInput;
  }

  @override
  void update(void Function(BenchmarkCaseInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCaseInput build() => _build();

  _$BenchmarkCaseInput _build() {
    _$BenchmarkCaseInput _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkCaseInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'BenchmarkCaseInput',
              'name',
            ),
            description: description,
            windowFrom: BuiltValueNullFieldError.checkNotNull(
              windowFrom,
              r'BenchmarkCaseInput',
              'windowFrom',
            ),
            windowTo: BuiltValueNullFieldError.checkNotNull(
              windowTo,
              r'BenchmarkCaseInput',
              'windowTo',
            ),
            regionCodes: _regionCodes?.build(),
            expectations: expectations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'expectations';
        expectations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkCaseInput',
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
