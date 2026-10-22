// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountResult extends CountResult {
  @override
  final int count;
  @override
  final bool exact;
  @override
  final int watermarkSeq;

  factory _$CountResult([void Function(CountResultBuilder)? updates]) =>
      (CountResultBuilder()..update(updates))._build();

  _$CountResult._({
    required this.count,
    required this.exact,
    required this.watermarkSeq,
  }) : super._();
  @override
  CountResult rebuild(void Function(CountResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountResultBuilder toBuilder() => CountResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountResult &&
        count == other.count &&
        exact == other.exact &&
        watermarkSeq == other.watermarkSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, exact.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountResult')
          ..add('count', count)
          ..add('exact', exact)
          ..add('watermarkSeq', watermarkSeq))
        .toString();
  }
}

class CountResultBuilder implements Builder<CountResult, CountResultBuilder> {
  _$CountResult? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  bool? _exact;
  bool? get exact => _$this._exact;
  set exact(bool? exact) => _$this._exact = exact;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  CountResultBuilder() {
    CountResult._defaults(this);
  }

  CountResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _exact = $v.exact;
      _watermarkSeq = $v.watermarkSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountResult other) {
    _$v = other as _$CountResult;
  }

  @override
  void update(void Function(CountResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountResult build() => _build();

  _$CountResult _build() {
    final _$result =
        _$v ??
        _$CountResult._(
          count: BuiltValueNullFieldError.checkNotNull(
            count,
            r'CountResult',
            'count',
          ),
          exact: BuiltValueNullFieldError.checkNotNull(
            exact,
            r'CountResult',
            'exact',
          ),
          watermarkSeq: BuiltValueNullFieldError.checkNotNull(
            watermarkSeq,
            r'CountResult',
            'watermarkSeq',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
