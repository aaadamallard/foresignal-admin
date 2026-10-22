// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_warning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsWarning extends SettingsWarning {
  @override
  final String code;
  @override
  final String message;

  factory _$SettingsWarning([void Function(SettingsWarningBuilder)? updates]) =>
      (SettingsWarningBuilder()..update(updates))._build();

  _$SettingsWarning._({required this.code, required this.message}) : super._();
  @override
  SettingsWarning rebuild(void Function(SettingsWarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsWarningBuilder toBuilder() => SettingsWarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsWarning &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsWarning')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class SettingsWarningBuilder
    implements Builder<SettingsWarning, SettingsWarningBuilder> {
  _$SettingsWarning? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SettingsWarningBuilder() {
    SettingsWarning._defaults(this);
  }

  SettingsWarningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsWarning other) {
    _$v = other as _$SettingsWarning;
  }

  @override
  void update(void Function(SettingsWarningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsWarning build() => _build();

  _$SettingsWarning _build() {
    final _$result =
        _$v ??
        _$SettingsWarning._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'SettingsWarning',
            'code',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'SettingsWarning',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
