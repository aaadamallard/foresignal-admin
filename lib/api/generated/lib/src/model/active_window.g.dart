// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveWindow extends ActiveWindow {
  @override
  final String timezone;
  @override
  final BuiltList<ActiveWindowWindowsInner> windows;

  factory _$ActiveWindow([void Function(ActiveWindowBuilder)? updates]) =>
      (ActiveWindowBuilder()..update(updates))._build();

  _$ActiveWindow._({required this.timezone, required this.windows}) : super._();
  @override
  ActiveWindow rebuild(void Function(ActiveWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveWindowBuilder toBuilder() => ActiveWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveWindow &&
        timezone == other.timezone &&
        windows == other.windows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActiveWindow')
          ..add('timezone', timezone)
          ..add('windows', windows))
        .toString();
  }
}

class ActiveWindowBuilder
    implements Builder<ActiveWindow, ActiveWindowBuilder> {
  _$ActiveWindow? _$v;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  ListBuilder<ActiveWindowWindowsInner>? _windows;
  ListBuilder<ActiveWindowWindowsInner> get windows =>
      _$this._windows ??= ListBuilder<ActiveWindowWindowsInner>();
  set windows(ListBuilder<ActiveWindowWindowsInner>? windows) =>
      _$this._windows = windows;

  ActiveWindowBuilder() {
    ActiveWindow._defaults(this);
  }

  ActiveWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timezone = $v.timezone;
      _windows = $v.windows.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveWindow other) {
    _$v = other as _$ActiveWindow;
  }

  @override
  void update(void Function(ActiveWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveWindow build() => _build();

  _$ActiveWindow _build() {
    _$ActiveWindow _$result;
    try {
      _$result = _$v ??
          _$ActiveWindow._(
            timezone: BuiltValueNullFieldError.checkNotNull(
                timezone, r'ActiveWindow', 'timezone'),
            windows: windows.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'windows';
        windows.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ActiveWindow', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
