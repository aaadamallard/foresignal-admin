// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_settings_compare.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialSettingsCompare extends SocialSettingsCompare {
  @override
  final int? minGroups;
  @override
  final SocialSettingsCompareDefaultWindow? defaultWindow;
  @override
  final BuiltMap<String, SocialSettingsCompareFamilyWindowsValue>?
      familyWindows;

  factory _$SocialSettingsCompare(
          [void Function(SocialSettingsCompareBuilder)? updates]) =>
      (SocialSettingsCompareBuilder()..update(updates))._build();

  _$SocialSettingsCompare._(
      {this.minGroups, this.defaultWindow, this.familyWindows})
      : super._();
  @override
  SocialSettingsCompare rebuild(
          void Function(SocialSettingsCompareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSettingsCompareBuilder toBuilder() =>
      SocialSettingsCompareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSettingsCompare &&
        minGroups == other.minGroups &&
        defaultWindow == other.defaultWindow &&
        familyWindows == other.familyWindows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minGroups.hashCode);
    _$hash = $jc(_$hash, defaultWindow.hashCode);
    _$hash = $jc(_$hash, familyWindows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialSettingsCompare')
          ..add('minGroups', minGroups)
          ..add('defaultWindow', defaultWindow)
          ..add('familyWindows', familyWindows))
        .toString();
  }
}

class SocialSettingsCompareBuilder
    implements Builder<SocialSettingsCompare, SocialSettingsCompareBuilder> {
  _$SocialSettingsCompare? _$v;

  int? _minGroups;
  int? get minGroups => _$this._minGroups;
  set minGroups(int? minGroups) => _$this._minGroups = minGroups;

  SocialSettingsCompareDefaultWindowBuilder? _defaultWindow;
  SocialSettingsCompareDefaultWindowBuilder get defaultWindow =>
      _$this._defaultWindow ??= SocialSettingsCompareDefaultWindowBuilder();
  set defaultWindow(SocialSettingsCompareDefaultWindowBuilder? defaultWindow) =>
      _$this._defaultWindow = defaultWindow;

  MapBuilder<String, SocialSettingsCompareFamilyWindowsValue>? _familyWindows;
  MapBuilder<String, SocialSettingsCompareFamilyWindowsValue>
      get familyWindows => _$this._familyWindows ??=
          MapBuilder<String, SocialSettingsCompareFamilyWindowsValue>();
  set familyWindows(
          MapBuilder<String, SocialSettingsCompareFamilyWindowsValue>?
              familyWindows) =>
      _$this._familyWindows = familyWindows;

  SocialSettingsCompareBuilder() {
    SocialSettingsCompare._defaults(this);
  }

  SocialSettingsCompareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minGroups = $v.minGroups;
      _defaultWindow = $v.defaultWindow?.toBuilder();
      _familyWindows = $v.familyWindows?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSettingsCompare other) {
    _$v = other as _$SocialSettingsCompare;
  }

  @override
  void update(void Function(SocialSettingsCompareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialSettingsCompare build() => _build();

  _$SocialSettingsCompare _build() {
    _$SocialSettingsCompare _$result;
    try {
      _$result = _$v ??
          _$SocialSettingsCompare._(
            minGroups: minGroups,
            defaultWindow: _defaultWindow?.build(),
            familyWindows: _familyWindows?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultWindow';
        _defaultWindow?.build();
        _$failedField = 'familyWindows';
        _familyWindows?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialSettingsCompare', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
