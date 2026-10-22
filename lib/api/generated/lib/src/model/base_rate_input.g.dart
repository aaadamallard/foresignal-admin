// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_rate_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseRateInput extends BaseRateInput {
  @override
  final String? name;
  @override
  final BaseRateDefinition definition;

  factory _$BaseRateInput([void Function(BaseRateInputBuilder)? updates]) =>
      (BaseRateInputBuilder()..update(updates))._build();

  _$BaseRateInput._({this.name, required this.definition}) : super._();
  @override
  BaseRateInput rebuild(void Function(BaseRateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseRateInputBuilder toBuilder() => BaseRateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseRateInput &&
        name == other.name &&
        definition == other.definition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseRateInput')
          ..add('name', name)
          ..add('definition', definition))
        .toString();
  }
}

class BaseRateInputBuilder
    implements Builder<BaseRateInput, BaseRateInputBuilder> {
  _$BaseRateInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BaseRateDefinitionBuilder? _definition;
  BaseRateDefinitionBuilder get definition =>
      _$this._definition ??= BaseRateDefinitionBuilder();
  set definition(BaseRateDefinitionBuilder? definition) =>
      _$this._definition = definition;

  BaseRateInputBuilder() {
    BaseRateInput._defaults(this);
  }

  BaseRateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _definition = $v.definition.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseRateInput other) {
    _$v = other as _$BaseRateInput;
  }

  @override
  void update(void Function(BaseRateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseRateInput build() => _build();

  _$BaseRateInput _build() {
    _$BaseRateInput _$result;
    try {
      _$result =
          _$v ?? _$BaseRateInput._(name: name, definition: definition.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        definition.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseRateInput',
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
