// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_warning.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingWarning extends MappingWarning {
  @override
  final String code;
  @override
  final String message;
  @override
  final String? path;

  factory _$MappingWarning([void Function(MappingWarningBuilder)? updates]) =>
      (MappingWarningBuilder()..update(updates))._build();

  _$MappingWarning._({required this.code, required this.message, this.path})
    : super._();
  @override
  MappingWarning rebuild(void Function(MappingWarningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingWarningBuilder toBuilder() => MappingWarningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingWarning &&
        code == other.code &&
        message == other.message &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingWarning')
          ..add('code', code)
          ..add('message', message)
          ..add('path', path))
        .toString();
  }
}

class MappingWarningBuilder
    implements Builder<MappingWarning, MappingWarningBuilder> {
  _$MappingWarning? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  MappingWarningBuilder() {
    MappingWarning._defaults(this);
  }

  MappingWarningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingWarning other) {
    _$v = other as _$MappingWarning;
  }

  @override
  void update(void Function(MappingWarningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingWarning build() => _build();

  _$MappingWarning _build() {
    final _$result =
        _$v ??
        _$MappingWarning._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'MappingWarning',
            'code',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'MappingWarning',
            'message',
          ),
          path: path,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
