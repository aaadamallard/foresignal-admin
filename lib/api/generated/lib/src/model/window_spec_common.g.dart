// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_spec_common.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WindowSpecCommon extends WindowSpecCommon {
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

  factory _$WindowSpecCommon([
    void Function(WindowSpecCommonBuilder)? updates,
  ]) => (WindowSpecCommonBuilder()..update(updates))._build();

  _$WindowSpecCommon._({
    required this.window,
    this.step,
    this.distinctBy,
    this.groupBy,
    this.maxGroups,
  }) : super._();
  @override
  WindowSpecCommon rebuild(void Function(WindowSpecCommonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowSpecCommonBuilder toBuilder() =>
      WindowSpecCommonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowSpecCommon &&
        window == other.window &&
        step == other.step &&
        distinctBy == other.distinctBy &&
        groupBy == other.groupBy &&
        maxGroups == other.maxGroups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, distinctBy.hashCode);
    _$hash = $jc(_$hash, groupBy.hashCode);
    _$hash = $jc(_$hash, maxGroups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowSpecCommon')
          ..add('window', window)
          ..add('step', step)
          ..add('distinctBy', distinctBy)
          ..add('groupBy', groupBy)
          ..add('maxGroups', maxGroups))
        .toString();
  }
}

class WindowSpecCommonBuilder
    implements Builder<WindowSpecCommon, WindowSpecCommonBuilder> {
  _$WindowSpecCommon? _$v;

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

  WindowSpecCommonBuilder() {
    WindowSpecCommon._defaults(this);
  }

  WindowSpecCommonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _step = $v.step;
      _distinctBy = $v.distinctBy;
      _groupBy = $v.groupBy;
      _maxGroups = $v.maxGroups;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowSpecCommon other) {
    _$v = other as _$WindowSpecCommon;
  }

  @override
  void update(void Function(WindowSpecCommonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowSpecCommon build() => _build();

  _$WindowSpecCommon _build() {
    final _$result =
        _$v ??
        _$WindowSpecCommon._(
          window: BuiltValueNullFieldError.checkNotNull(
            window,
            r'WindowSpecCommon',
            'window',
          ),
          step: step,
          distinctBy: distinctBy,
          groupBy: groupBy,
          maxGroups: maxGroups,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
