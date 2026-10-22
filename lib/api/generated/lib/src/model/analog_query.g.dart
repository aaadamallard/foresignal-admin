// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalogQuery extends AnalogQuery {
  @override
  final String regionCode;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int? k;
  @override
  final String? outcome;

  factory _$AnalogQuery([void Function(AnalogQueryBuilder)? updates]) =>
      (AnalogQueryBuilder()..update(updates))._build();

  _$AnalogQuery._({
    required this.regionCode,
    required this.from,
    required this.to,
    this.k,
    this.outcome,
  }) : super._();
  @override
  AnalogQuery rebuild(void Function(AnalogQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogQueryBuilder toBuilder() => AnalogQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogQuery &&
        regionCode == other.regionCode &&
        from == other.from &&
        to == other.to &&
        k == other.k &&
        outcome == other.outcome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regionCode.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, k.hashCode);
    _$hash = $jc(_$hash, outcome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogQuery')
          ..add('regionCode', regionCode)
          ..add('from', from)
          ..add('to', to)
          ..add('k', k)
          ..add('outcome', outcome))
        .toString();
  }
}

class AnalogQueryBuilder implements Builder<AnalogQuery, AnalogQueryBuilder> {
  _$AnalogQuery? _$v;

  String? _regionCode;
  String? get regionCode => _$this._regionCode;
  set regionCode(String? regionCode) => _$this._regionCode = regionCode;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _k;
  int? get k => _$this._k;
  set k(int? k) => _$this._k = k;

  String? _outcome;
  String? get outcome => _$this._outcome;
  set outcome(String? outcome) => _$this._outcome = outcome;

  AnalogQueryBuilder() {
    AnalogQuery._defaults(this);
  }

  AnalogQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regionCode = $v.regionCode;
      _from = $v.from;
      _to = $v.to;
      _k = $v.k;
      _outcome = $v.outcome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogQuery other) {
    _$v = other as _$AnalogQuery;
  }

  @override
  void update(void Function(AnalogQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogQuery build() => _build();

  _$AnalogQuery _build() {
    final _$result =
        _$v ??
        _$AnalogQuery._(
          regionCode: BuiltValueNullFieldError.checkNotNull(
            regionCode,
            r'AnalogQuery',
            'regionCode',
          ),
          from: BuiltValueNullFieldError.checkNotNull(
            from,
            r'AnalogQuery',
            'from',
          ),
          to: BuiltValueNullFieldError.checkNotNull(to, r'AnalogQuery', 'to'),
          k: k,
          outcome: outcome,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
