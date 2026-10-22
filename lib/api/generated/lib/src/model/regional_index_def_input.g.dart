// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexDefInput extends RegionalIndexDefInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<RegionalIndexDefComponentsInner> components;
  @override
  final BuiltMap<String, num> weights;
  @override
  final BuiltList<RegionalIndexDefFloorsInner>? floors;
  @override
  final String target;
  @override
  final bool enabled;
  @override
  final bool? autoApplyFittedWeights;

  factory _$RegionalIndexDefInput([
    void Function(RegionalIndexDefInputBuilder)? updates,
  ]) => (RegionalIndexDefInputBuilder()..update(updates))._build();

  _$RegionalIndexDefInput._({
    required this.name,
    this.description,
    required this.components,
    required this.weights,
    this.floors,
    required this.target,
    required this.enabled,
    this.autoApplyFittedWeights,
  }) : super._();
  @override
  RegionalIndexDefInput rebuild(
    void Function(RegionalIndexDefInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefInputBuilder toBuilder() =>
      RegionalIndexDefInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDefInput &&
        name == other.name &&
        description == other.description &&
        components == other.components &&
        weights == other.weights &&
        floors == other.floors &&
        target == other.target &&
        enabled == other.enabled &&
        autoApplyFittedWeights == other.autoApplyFittedWeights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, weights.hashCode);
    _$hash = $jc(_$hash, floors.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, autoApplyFittedWeights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDefInput')
          ..add('name', name)
          ..add('description', description)
          ..add('components', components)
          ..add('weights', weights)
          ..add('floors', floors)
          ..add('target', target)
          ..add('enabled', enabled)
          ..add('autoApplyFittedWeights', autoApplyFittedWeights))
        .toString();
  }
}

class RegionalIndexDefInputBuilder
    implements Builder<RegionalIndexDefInput, RegionalIndexDefInputBuilder> {
  _$RegionalIndexDefInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<RegionalIndexDefComponentsInner>? _components;
  ListBuilder<RegionalIndexDefComponentsInner> get components =>
      _$this._components ??= ListBuilder<RegionalIndexDefComponentsInner>();
  set components(ListBuilder<RegionalIndexDefComponentsInner>? components) =>
      _$this._components = components;

  MapBuilder<String, num>? _weights;
  MapBuilder<String, num> get weights =>
      _$this._weights ??= MapBuilder<String, num>();
  set weights(MapBuilder<String, num>? weights) => _$this._weights = weights;

  ListBuilder<RegionalIndexDefFloorsInner>? _floors;
  ListBuilder<RegionalIndexDefFloorsInner> get floors =>
      _$this._floors ??= ListBuilder<RegionalIndexDefFloorsInner>();
  set floors(ListBuilder<RegionalIndexDefFloorsInner>? floors) =>
      _$this._floors = floors;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _autoApplyFittedWeights;
  bool? get autoApplyFittedWeights => _$this._autoApplyFittedWeights;
  set autoApplyFittedWeights(bool? autoApplyFittedWeights) =>
      _$this._autoApplyFittedWeights = autoApplyFittedWeights;

  RegionalIndexDefInputBuilder() {
    RegionalIndexDefInput._defaults(this);
  }

  RegionalIndexDefInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _components = $v.components.toBuilder();
      _weights = $v.weights.toBuilder();
      _floors = $v.floors?.toBuilder();
      _target = $v.target;
      _enabled = $v.enabled;
      _autoApplyFittedWeights = $v.autoApplyFittedWeights;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDefInput other) {
    _$v = other as _$RegionalIndexDefInput;
  }

  @override
  void update(void Function(RegionalIndexDefInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDefInput build() => _build();

  _$RegionalIndexDefInput _build() {
    _$RegionalIndexDefInput _$result;
    try {
      _$result =
          _$v ??
          _$RegionalIndexDefInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'RegionalIndexDefInput',
              'name',
            ),
            description: description,
            components: components.build(),
            weights: weights.build(),
            floors: _floors?.build(),
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'RegionalIndexDefInput',
              'target',
            ),
            enabled: BuiltValueNullFieldError.checkNotNull(
              enabled,
              r'RegionalIndexDefInput',
              'enabled',
            ),
            autoApplyFittedWeights: autoApplyFittedWeights,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
        _$failedField = 'weights';
        weights.build();
        _$failedField = 'floors';
        _floors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RegionalIndexDefInput',
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
