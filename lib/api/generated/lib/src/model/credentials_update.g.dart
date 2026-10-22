// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialsUpdate extends CredentialsUpdate {
  @override
  final BuiltMap<String, String> values;

  factory _$CredentialsUpdate([
    void Function(CredentialsUpdateBuilder)? updates,
  ]) => (CredentialsUpdateBuilder()..update(updates))._build();

  _$CredentialsUpdate._({required this.values}) : super._();
  @override
  CredentialsUpdate rebuild(void Function(CredentialsUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialsUpdateBuilder toBuilder() =>
      CredentialsUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialsUpdate && values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CredentialsUpdate',
    )..add('values', values)).toString();
  }
}

class CredentialsUpdateBuilder
    implements Builder<CredentialsUpdate, CredentialsUpdateBuilder> {
  _$CredentialsUpdate? _$v;

  MapBuilder<String, String>? _values;
  MapBuilder<String, String> get values =>
      _$this._values ??= MapBuilder<String, String>();
  set values(MapBuilder<String, String>? values) => _$this._values = values;

  CredentialsUpdateBuilder() {
    CredentialsUpdate._defaults(this);
  }

  CredentialsUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialsUpdate other) {
    _$v = other as _$CredentialsUpdate;
  }

  @override
  void update(void Function(CredentialsUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialsUpdate build() => _build();

  _$CredentialsUpdate _build() {
    _$CredentialsUpdate _$result;
    try {
      _$result = _$v ?? _$CredentialsUpdate._(values: values.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CredentialsUpdate',
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
