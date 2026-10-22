// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialField extends CredentialField {
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool required_;

  factory _$CredentialField([void Function(CredentialFieldBuilder)? updates]) =>
      (CredentialFieldBuilder()..update(updates))._build();

  _$CredentialField._(
      {required this.name, this.description, required this.required_})
      : super._();
  @override
  CredentialField rebuild(void Function(CredentialFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialFieldBuilder toBuilder() => CredentialFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialField &&
        name == other.name &&
        description == other.description &&
        required_ == other.required_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialField')
          ..add('name', name)
          ..add('description', description)
          ..add('required_', required_))
        .toString();
  }
}

class CredentialFieldBuilder
    implements Builder<CredentialField, CredentialFieldBuilder> {
  _$CredentialField? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  CredentialFieldBuilder() {
    CredentialField._defaults(this);
  }

  CredentialFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _required_ = $v.required_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialField other) {
    _$v = other as _$CredentialField;
  }

  @override
  void update(void Function(CredentialFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialField build() => _build();

  _$CredentialField _build() {
    final _$result = _$v ??
        _$CredentialField._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CredentialField', 'name'),
          description: description,
          required_: BuiltValueNullFieldError.checkNotNull(
              required_, r'CredentialField', 'required_'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
