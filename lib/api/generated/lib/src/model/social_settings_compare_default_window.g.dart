// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_compare_default_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCompareDefaultWindow
    extends SocialSettingsCompareDefaultWindow {
  @override
  final String? before;
  @override
  final String? after;

  factory _$SocialSettingsCompareDefaultWindow([
    void Function(SocialSettingsCompareDefaultWindowBuilder)? updates,
  ]) => (SocialSettingsCompareDefaultWindowBuilder()..update(updates))._build();

  _$SocialSettingsCompareDefaultWindow._({this.before, this.after}) : super._();
  @override
  SocialSettingsCompareDefaultWindow rebuild(
    void Function(SocialSettingsCompareDefaultWindowBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCompareDefaultWindowBuilder toBuilder() =>
      SocialSettingsCompareDefaultWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCompareDefaultWindow &&
        before == other.before &&
        after == other.after;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, before.hashCode);
    _$hash = $jc(_$hash, after.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsCompareDefaultWindow')
          ..add('before', before)
          ..add('after', after))
        .toString();
  }
}

class SocialSettingsCompareDefaultWindowBuilder
    implements
        Builder<
          SocialSettingsCompareDefaultWindow,
          SocialSettingsCompareDefaultWindowBuilder
        > {
  _$SocialSettingsCompareDefaultWindow? _$v;

  String? _before;
  String? get before => _$this._before;
  set before(String? before) => _$this._before = before;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  SocialSettingsCompareDefaultWindowBuilder() {
    SocialSettingsCompareDefaultWindow._defaults(this);
  }

  SocialSettingsCompareDefaultWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _before = $v.before;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCompareDefaultWindow other) {
    _$v = other as _$SocialSettingsCompareDefaultWindow;
  }

  @override
  void update(
    void Function(SocialSettingsCompareDefaultWindowBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCompareDefaultWindow build() => _build();

  _$SocialSettingsCompareDefaultWindow _build() {
    final _$result =
        _$v ??
        _$SocialSettingsCompareDefaultWindow._(before: before, after: after);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
