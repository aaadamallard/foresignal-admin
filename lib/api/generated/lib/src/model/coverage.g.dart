// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Coverage extends Coverage {
  @override
  final int? receivers;
  @override
  final int? expected;
  @override
  final int? actual;
  @override
  final BuiltList<num>? region;

  factory _$Coverage([void Function(CoverageBuilder)? updates]) =>
      (CoverageBuilder()..update(updates))._build();

  _$Coverage._({this.receivers, this.expected, this.actual, this.region})
    : super._();
  @override
  Coverage rebuild(void Function(CoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageBuilder toBuilder() => CoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coverage &&
        receivers == other.receivers &&
        expected == other.expected &&
        actual == other.actual &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, receivers.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, actual.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Coverage')
          ..add('receivers', receivers)
          ..add('expected', expected)
          ..add('actual', actual)
          ..add('region', region))
        .toString();
  }
}

class CoverageBuilder implements Builder<Coverage, CoverageBuilder> {
  _$Coverage? _$v;

  int? _receivers;
  int? get receivers => _$this._receivers;
  set receivers(int? receivers) => _$this._receivers = receivers;

  int? _expected;
  int? get expected => _$this._expected;
  set expected(int? expected) => _$this._expected = expected;

  int? _actual;
  int? get actual => _$this._actual;
  set actual(int? actual) => _$this._actual = actual;

  ListBuilder<num>? _region;
  ListBuilder<num> get region => _$this._region ??= ListBuilder<num>();
  set region(ListBuilder<num>? region) => _$this._region = region;

  CoverageBuilder() {
    Coverage._defaults(this);
  }

  CoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _receivers = $v.receivers;
      _expected = $v.expected;
      _actual = $v.actual;
      _region = $v.region?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coverage other) {
    _$v = other as _$Coverage;
  }

  @override
  void update(void Function(CoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Coverage build() => _build();

  _$Coverage _build() {
    _$Coverage _$result;
    try {
      _$result =
          _$v ??
          _$Coverage._(
            receivers: receivers,
            expected: expected,
            actual: actual,
            region: _region?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'region';
        _region?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Coverage',
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
