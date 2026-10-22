// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_status_states.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WindowStatusStates extends WindowStatusStates {
  @override
  final int? active;
  @override
  final int? clear;
  @override
  final int? unknown;
  @override
  final int? learning;

  factory _$WindowStatusStates(
          [void Function(WindowStatusStatesBuilder)? updates]) =>
      (WindowStatusStatesBuilder()..update(updates))._build();

  _$WindowStatusStates._({this.active, this.clear, this.unknown, this.learning})
      : super._();
  @override
  WindowStatusStates rebuild(
          void Function(WindowStatusStatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowStatusStatesBuilder toBuilder() =>
      WindowStatusStatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowStatusStates &&
        active == other.active &&
        clear == other.clear &&
        unknown == other.unknown &&
        learning == other.learning;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, clear.hashCode);
    _$hash = $jc(_$hash, unknown.hashCode);
    _$hash = $jc(_$hash, learning.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowStatusStates')
          ..add('active', active)
          ..add('clear', clear)
          ..add('unknown', unknown)
          ..add('learning', learning))
        .toString();
  }
}

class WindowStatusStatesBuilder
    implements Builder<WindowStatusStates, WindowStatusStatesBuilder> {
  _$WindowStatusStates? _$v;

  int? _active;
  int? get active => _$this._active;
  set active(int? active) => _$this._active = active;

  int? _clear;
  int? get clear => _$this._clear;
  set clear(int? clear) => _$this._clear = clear;

  int? _unknown;
  int? get unknown => _$this._unknown;
  set unknown(int? unknown) => _$this._unknown = unknown;

  int? _learning;
  int? get learning => _$this._learning;
  set learning(int? learning) => _$this._learning = learning;

  WindowStatusStatesBuilder() {
    WindowStatusStates._defaults(this);
  }

  WindowStatusStatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _clear = $v.clear;
      _unknown = $v.unknown;
      _learning = $v.learning;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowStatusStates other) {
    _$v = other as _$WindowStatusStates;
  }

  @override
  void update(void Function(WindowStatusStatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowStatusStates build() => _build();

  _$WindowStatusStates _build() {
    final _$result = _$v ??
        _$WindowStatusStates._(
          active: active,
          clear: clear,
          unknown: unknown,
          learning: learning,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
