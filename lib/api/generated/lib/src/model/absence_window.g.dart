// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absence_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AbsenceWindow extends AbsenceWindow {
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
  final num? coverageMin;

  factory _$AbsenceWindow([void Function(AbsenceWindowBuilder)? updates]) =>
      (AbsenceWindowBuilder()..update(updates))._build();

  _$AbsenceWindow._({
    required this.window,
    this.step,
    this.distinctBy,
    this.groupBy,
    this.maxGroups,
    this.coverageMin,
  }) : super._();
  @override
  AbsenceWindow rebuild(void Function(AbsenceWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbsenceWindowBuilder toBuilder() => AbsenceWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbsenceWindow &&
        window == other.window &&
        step == other.step &&
        distinctBy == other.distinctBy &&
        groupBy == other.groupBy &&
        maxGroups == other.maxGroups &&
        coverageMin == other.coverageMin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, distinctBy.hashCode);
    _$hash = $jc(_$hash, groupBy.hashCode);
    _$hash = $jc(_$hash, maxGroups.hashCode);
    _$hash = $jc(_$hash, coverageMin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AbsenceWindow')
          ..add('window', window)
          ..add('step', step)
          ..add('distinctBy', distinctBy)
          ..add('groupBy', groupBy)
          ..add('maxGroups', maxGroups)
          ..add('coverageMin', coverageMin))
        .toString();
  }
}

class AbsenceWindowBuilder
    implements Builder<AbsenceWindow, AbsenceWindowBuilder> {
  _$AbsenceWindow? _$v;

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

  num? _coverageMin;
  num? get coverageMin => _$this._coverageMin;
  set coverageMin(num? coverageMin) => _$this._coverageMin = coverageMin;

  AbsenceWindowBuilder() {
    AbsenceWindow._defaults(this);
  }

  AbsenceWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _step = $v.step;
      _distinctBy = $v.distinctBy;
      _groupBy = $v.groupBy;
      _maxGroups = $v.maxGroups;
      _coverageMin = $v.coverageMin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbsenceWindow other) {
    _$v = other as _$AbsenceWindow;
  }

  @override
  void update(void Function(AbsenceWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AbsenceWindow build() => _build();

  _$AbsenceWindow _build() {
    final _$result =
        _$v ??
        _$AbsenceWindow._(
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'AbsenceWindow',
            'window',
          ),
          step: step,
          distinctBy: distinctBy,
          groupBy: groupBy,
          maxGroups: maxGroups,
          coverageMin: coverageMin,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
