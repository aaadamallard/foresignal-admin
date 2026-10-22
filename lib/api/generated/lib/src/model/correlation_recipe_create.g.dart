// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeCreate extends CorrelationRecipeCreate {
  @override
  final String id;
  @override
  final CorrelationRecipeDefinition definition;
  @override
  final bool? enabled;

  factory _$CorrelationRecipeCreate(
          [void Function(CorrelationRecipeCreateBuilder)? updates]) =>
      (CorrelationRecipeCreateBuilder()..update(updates))._build();

  _$CorrelationRecipeCreate._(
      {required this.id, required this.definition, this.enabled})
      : super._();
  @override
  CorrelationRecipeCreate rebuild(
          void Function(CorrelationRecipeCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeCreateBuilder toBuilder() =>
      CorrelationRecipeCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeCreate &&
        id == other.id &&
        definition == other.definition &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipeCreate')
          ..add('id', id)
          ..add('definition', definition)
          ..add('enabled', enabled))
        .toString();
  }
}

class CorrelationRecipeCreateBuilder
    implements
        Builder<CorrelationRecipeCreate, CorrelationRecipeCreateBuilder> {
  _$CorrelationRecipeCreate? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CorrelationRecipeDefinitionBuilder? _definition;
  CorrelationRecipeDefinitionBuilder get definition =>
      _$this._definition ??= CorrelationRecipeDefinitionBuilder();
  set definition(CorrelationRecipeDefinitionBuilder? definition) =>
      _$this._definition = definition;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  CorrelationRecipeCreateBuilder() {
    CorrelationRecipeCreate._defaults(this);
  }

  CorrelationRecipeCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _definition = $v.definition.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeCreate other) {
    _$v = other as _$CorrelationRecipeCreate;
  }

  @override
  void update(void Function(CorrelationRecipeCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeCreate build() => _build();

  _$CorrelationRecipeCreate _build() {
    _$CorrelationRecipeCreate _$result;
    try {
      _$result = _$v ??
          _$CorrelationRecipeCreate._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CorrelationRecipeCreate', 'id'),
            definition: definition.build(),
            enabled: enabled,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'definition';
        definition.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CorrelationRecipeCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
