// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cors_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorsSettings extends CorsSettings {
  @override
  final BuiltList<String> readOrigins;
  @override
  final BuiltList<String> writeOrigins;

  factory _$CorsSettings([void Function(CorsSettingsBuilder)? updates]) =>
      (CorsSettingsBuilder()..update(updates))._build();

  _$CorsSettings._({required this.readOrigins, required this.writeOrigins})
    : super._();
  @override
  CorsSettings rebuild(void Function(CorsSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorsSettingsBuilder toBuilder() => CorsSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorsSettings &&
        readOrigins == other.readOrigins &&
        writeOrigins == other.writeOrigins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, readOrigins.hashCode);
    _$hash = $jc(_$hash, writeOrigins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorsSettings')
          ..add('readOrigins', readOrigins)
          ..add('writeOrigins', writeOrigins))
        .toString();
  }
}

class CorsSettingsBuilder
    implements Builder<CorsSettings, CorsSettingsBuilder> {
  _$CorsSettings? _$v;

  ListBuilder<String>? _readOrigins;
  ListBuilder<String> get readOrigins =>
      _$this._readOrigins ??= ListBuilder<String>();
  set readOrigins(ListBuilder<String>? readOrigins) =>
      _$this._readOrigins = readOrigins;

  ListBuilder<String>? _writeOrigins;
  ListBuilder<String> get writeOrigins =>
      _$this._writeOrigins ??= ListBuilder<String>();
  set writeOrigins(ListBuilder<String>? writeOrigins) =>
      _$this._writeOrigins = writeOrigins;

  CorsSettingsBuilder() {
    CorsSettings._defaults(this);
  }

  CorsSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _readOrigins = $v.readOrigins.toBuilder();
      _writeOrigins = $v.writeOrigins.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorsSettings other) {
    _$v = other as _$CorsSettings;
  }

  @override
  void update(void Function(CorsSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorsSettings build() => _build();

  _$CorsSettings _build() {
    _$CorsSettings _$result;
    try {
      _$result =
          _$v ??
          _$CorsSettings._(
            readOrigins: readOrigins.build(),
            writeOrigins: writeOrigins.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'readOrigins';
        readOrigins.build();
        _$failedField = 'writeOrigins';
        writeOrigins.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorsSettings',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
