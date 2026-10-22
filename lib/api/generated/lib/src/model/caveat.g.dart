// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caveat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Caveat extends Caveat {
  @override
  final String code;
  @override
  final String text;
  @override
  final BuiltMap<String, JsonObject?>? data;

  factory _$Caveat([void Function(CaveatBuilder)? updates]) =>
      (CaveatBuilder()..update(updates))._build();

  _$Caveat._({required this.code, required this.text, this.data}) : super._();
  @override
  Caveat rebuild(void Function(CaveatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaveatBuilder toBuilder() => CaveatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Caveat &&
        code == other.code &&
        text == other.text &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Caveat')
          ..add('code', code)
          ..add('text', text)
          ..add('data', data))
        .toString();
  }
}

class CaveatBuilder implements Builder<Caveat, CaveatBuilder> {
  _$Caveat? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  MapBuilder<String, JsonObject?>? _data;
  MapBuilder<String, JsonObject?> get data =>
      _$this._data ??= MapBuilder<String, JsonObject?>();
  set data(MapBuilder<String, JsonObject?>? data) => _$this._data = data;

  CaveatBuilder() {
    Caveat._defaults(this);
  }

  CaveatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _text = $v.text;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Caveat other) {
    _$v = other as _$Caveat;
  }

  @override
  void update(void Function(CaveatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Caveat build() => _build();

  _$Caveat _build() {
    _$Caveat _$result;
    try {
      _$result =
          _$v ??
          _$Caveat._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'Caveat',
              'code',
            ),
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'Caveat',
              'text',
            ),
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Caveat',
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
