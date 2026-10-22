// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountWindow extends CountWindow {
  @override
  final String window;
  @override
  final String? step;
  @override
  final String? distinctBy;
  @override
  final String? groupBy;
  @override
  final int? maxGroups;
  @override
  final String op;
  @override
  final int threshold;

  factory _$CountWindow([void Function(CountWindowBuilder)? updates]) =>
      (CountWindowBuilder()..update(updates))._build();

  _$CountWindow._(
      {required this.window,
      this.step,
      this.distinctBy,
      this.groupBy,
      this.maxGroups,
      required this.op,
      required this.threshold})
      : super._();
  @override
  CountWindow rebuild(void Function(CountWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountWindowBuilder toBuilder() => CountWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountWindow &&
        window == other.window &&
        step == other.step &&
        distinctBy == other.distinctBy &&
        groupBy == other.groupBy &&
        maxGroups == other.maxGroups &&
        op == other.op &&
        threshold == other.threshold;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, distinctBy.hashCode);
    _$hash = $jc(_$hash, groupBy.hashCode);
    _$hash = $jc(_$hash, maxGroups.hashCode);
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CountWindow')
          ..add('window', window)
          ..add('step', step)
          ..add('distinctBy', distinctBy)
          ..add('groupBy', groupBy)
          ..add('maxGroups', maxGroups)
          ..add('op', op)
          ..add('threshold', threshold))
        .toString();
  }
}

class CountWindowBuilder implements Builder<CountWindow, CountWindowBuilder> {
  _$CountWindow? _$v;

  String? _window;
  String? get window => _$this._window;
  set window(String? window) => _$this._window = window;

  String? _step;
  String? get step => _$this._step;
  set step(String? step) => _$this._step = step;

  String? _distinctBy;
  String? get distinctBy => _$this._distinctBy;
  set distinctBy(String? distinctBy) => _$this._distinctBy = distinctBy;

  String? _groupBy;
  String? get groupBy => _$this._groupBy;
  set groupBy(String? groupBy) => _$this._groupBy = groupBy;

  int? _maxGroups;
  int? get maxGroups => _$this._maxGroups;
  set maxGroups(int? maxGroups) => _$this._maxGroups = maxGroups;

  String? _op;
  String? get op => _$this._op;
  set op(String? op) => _$this._op = op;

  int? _threshold;
  int? get threshold => _$this._threshold;
  set threshold(int? threshold) => _$this._threshold = threshold;

  CountWindowBuilder() {
    CountWindow._defaults(this);
  }

  CountWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _step = $v.step;
      _distinctBy = $v.distinctBy;
      _groupBy = $v.groupBy;
      _maxGroups = $v.maxGroups;
      _op = $v.op;
      _threshold = $v.threshold;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountWindow other) {
    _$v = other as _$CountWindow;
  }

  @override
  void update(void Function(CountWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CountWindow build() => _build();

  _$CountWindow _build() {
    final _$result = _$v ??
        _$CountWindow._(
          window: BuiltValueNullFieldError.checkNotNull(
              window, r'CountWindow', 'window'),
          step: step,
          distinctBy: distinctBy,
          groupBy: groupBy,
          maxGroups: maxGroups,
          op: BuiltValueNullFieldError.checkNotNull(op, r'CountWindow', 'op'),
          threshold: BuiltValueNullFieldError.checkNotNull(
              threshold, r'CountWindow', 'threshold'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
