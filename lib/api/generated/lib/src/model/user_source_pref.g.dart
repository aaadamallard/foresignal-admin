// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_source_pref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSourcePref extends UserSourcePref {
  @override
  final String sourceId;
  @override
  final bool enabled;
  @override
  final String? displayName;
  @override
  final String? color;

  factory _$UserSourcePref([void Function(UserSourcePrefBuilder)? updates]) =>
      (UserSourcePrefBuilder()..update(updates))._build();

  _$UserSourcePref._({
    required this.sourceId,
    required this.enabled,
    this.displayName,
    this.color,
  }) : super._();
  @override
  UserSourcePref rebuild(void Function(UserSourcePrefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSourcePrefBuilder toBuilder() => UserSourcePrefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSourcePref &&
        sourceId == other.sourceId &&
        enabled == other.enabled &&
        displayName == other.displayName &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSourcePref')
          ..add('sourceId', sourceId)
          ..add('enabled', enabled)
          ..add('displayName', displayName)
          ..add('color', color))
        .toString();
  }
}

class UserSourcePrefBuilder
    implements Builder<UserSourcePref, UserSourcePrefBuilder> {
  _$UserSourcePref? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  UserSourcePrefBuilder() {
    UserSourcePref._defaults(this);
  }

  UserSourcePrefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _enabled = $v.enabled;
      _displayName = $v.displayName;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSourcePref other) {
    _$v = other as _$UserSourcePref;
  }

  @override
  void update(void Function(UserSourcePrefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSourcePref build() => _build();

  _$UserSourcePref _build() {
    final _$result =
        _$v ??
        _$UserSourcePref._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'UserSourcePref',
            'sourceId',
          ),
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'UserSourcePref',
            'enabled',
          ),
          displayName: displayName,
          color: color,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
