// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_unconditional.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseRateUnconditional extends BaseRateUnconditional {
  @override
  final num ratePerWindow;
  @override
  final num pAtLeastOne;
  @override
  final StatInterval interval;
  @override
  final int? nWindows;

  factory _$BaseRateUnconditional([
    void Function(BaseRateUnconditionalBuilder)? updates,
  ]) => (BaseRateUnconditionalBuilder()..update(updates))._build();

  _$BaseRateUnconditional._({
    required this.ratePerWindow,
    required this.pAtLeastOne,
    required this.interval,
    this.nWindows,
  }) : super._();
  @override
  BaseRateUnconditional rebuild(
    void Function(BaseRateUnconditionalBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseRateUnconditionalBuilder toBuilder() =>
      BaseRateUnconditionalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateUnconditional &&
        ratePerWindow == other.ratePerWindow &&
        pAtLeastOne == other.pAtLeastOne &&
        interval == other.interval &&
        nWindows == other.nWindows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ratePerWindow.hashCode);
    _$hash = $jc(_$hash, pAtLeastOne.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, nWindows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateUnconditional')
          ..add('ratePerWindow', ratePerWindow)
          ..add('pAtLeastOne', pAtLeastOne)
          ..add('interval', interval)
          ..add('nWindows', nWindows))
        .toString();
  }
}

class BaseRateUnconditionalBuilder
    implements Builder<BaseRateUnconditional, BaseRateUnconditionalBuilder> {
  _$BaseRateUnconditional? _$v;

  num? _ratePerWindow;
  num? get ratePerWindow => _$this._ratePerWindow;
  set ratePerWindow(num? ratePerWindow) =>
      _$this._ratePerWindow = ratePerWindow;

  num? _pAtLeastOne;
  num? get pAtLeastOne => _$this._pAtLeastOne;
  set pAtLeastOne(num? pAtLeastOne) => _$this._pAtLeastOne = pAtLeastOne;

  StatIntervalBuilder? _interval;
  StatIntervalBuilder get interval =>
      _$this._interval ??= StatIntervalBuilder();
  set interval(StatIntervalBuilder? interval) => _$this._interval = interval;

  int? _nWindows;
  int? get nWindows => _$this._nWindows;
  set nWindows(int? nWindows) => _$this._nWindows = nWindows;

  BaseRateUnconditionalBuilder() {
    BaseRateUnconditional._defaults(this);
  }

  BaseRateUnconditionalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratePerWindow = $v.ratePerWindow;
      _pAtLeastOne = $v.pAtLeastOne;
      _interval = $v.interval.toBuilder();
      _nWindows = $v.nWindows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateUnconditional other) {
    _$v = other as _$BaseRateUnconditional;
  }

  @override
  void update(void Function(BaseRateUnconditionalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateUnconditional build() => _build();

  _$BaseRateUnconditional _build() {
    _$BaseRateUnconditional _$result;
    try {
      _$result =
          _$v ??
          _$BaseRateUnconditional._(
            ratePerWindow: BuiltValueNullFieldError.checkNotNull(
              ratePerWindow,
              r'BaseRateUnconditional',
              'ratePerWindow',
            ),
            pAtLeastOne: BuiltValueNullFieldError.checkNotNull(
              pAtLeastOne,
              r'BaseRateUnconditional',
              'pAtLeastOne',
            ),
            interval: interval.build(),
            nWindows: nWindows,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        interval.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRateUnconditional',
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
