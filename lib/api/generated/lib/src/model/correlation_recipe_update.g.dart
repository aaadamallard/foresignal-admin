// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrelationRecipeUpdate extends CorrelationRecipeUpdate {
  @override
  final bool? enabled;
  @override
  final BuiltMap<String, JsonObject?>? params;
  @override
  final CorrelationRecipeDefinition? definition;

  factory _$CorrelationRecipeUpdate([
    void Function(CorrelationRecipeUpdateBuilder)? updates,
  ]) => (CorrelationRecipeUpdateBuilder()..update(updates))._build();

  _$CorrelationRecipeUpdate._({this.enabled, this.params, this.definition})
    : super._();
  @override
  CorrelationRecipeUpdate rebuild(
    void Function(CorrelationRecipeUpdateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeUpdateBuilder toBuilder() =>
      CorrelationRecipeUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeUpdate &&
        enabled == other.enabled &&
        params == other.params &&
        definition == other.definition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, definition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipeUpdate')
          ..add('enabled', enabled)
          ..add('params', params)
          ..add('definition', definition))
        .toString();
  }
}

class CorrelationRecipeUpdateBuilder
    implements
        Builder<CorrelationRecipeUpdate, CorrelationRecipeUpdateBuilder> {
  _$CorrelationRecipeUpdate? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  MapBuilder<String, JsonObject?>? _params;
  MapBuilder<String, JsonObject?> get params =>
      _$this._params ??= MapBuilder<String, JsonObject?>();
  set params(MapBuilder<String, JsonObject?>? params) =>
      _$this._params = params;

  CorrelationRecipeDefinitionBuilder? _definition;
  CorrelationRecipeDefinitionBuilder get definition =>
      _$this._definition ??= CorrelationRecipeDefinitionBuilder();
  set definition(CorrelationRecipeDefinitionBuilder? definition) =>
      _$this._definition = definition;

  CorrelationRecipeUpdateBuilder() {
    CorrelationRecipeUpdate._defaults(this);
  }

  CorrelationRecipeUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _params = $v.params?.toBuilder();
      _definition = $v.definition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeUpdate other) {
    _$v = other as _$CorrelationRecipeUpdate;
  }

  @override
  void update(void Function(CorrelationRecipeUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeUpdate build() => _build();

  _$CorrelationRecipeUpdate _build() {
    _$CorrelationRecipeUpdate _$result;
    try {
      _$result =
          _$v ??
          _$CorrelationRecipeUpdate._(
            enabled: enabled,
            params: _params?.build(),
            definition: _definition?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();
        _$failedField = 'definition';
        _definition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorrelationRecipeUpdate',
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
