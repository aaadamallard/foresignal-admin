// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_def.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RegionalIndexDefWeightsOriginEnum
    _$regionalIndexDefWeightsOriginEnum_default_ =
    const RegionalIndexDefWeightsOriginEnum._('default_');
const RegionalIndexDefWeightsOriginEnum
    _$regionalIndexDefWeightsOriginEnum_fitted =
    const RegionalIndexDefWeightsOriginEnum._('fitted');
const RegionalIndexDefWeightsOriginEnum
    _$regionalIndexDefWeightsOriginEnum_operator_ =
    const RegionalIndexDefWeightsOriginEnum._('operator_');

RegionalIndexDefWeightsOriginEnum _$regionalIndexDefWeightsOriginEnumValueOf(
    String name) {
  switch (name) {
    case 'default_':
      return _$regionalIndexDefWeightsOriginEnum_default_;
    case 'fitted':
      return _$regionalIndexDefWeightsOriginEnum_fitted;
    case 'operator_':
      return _$regionalIndexDefWeightsOriginEnum_operator_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RegionalIndexDefWeightsOriginEnum>
    _$regionalIndexDefWeightsOriginEnumValues = BuiltSet<
        RegionalIndexDefWeightsOriginEnum>(const <RegionalIndexDefWeightsOriginEnum>[
  _$regionalIndexDefWeightsOriginEnum_default_,
  _$regionalIndexDefWeightsOriginEnum_fitted,
  _$regionalIndexDefWeightsOriginEnum_operator_,
]);

Serializer<RegionalIndexDefWeightsOriginEnum>
    _$regionalIndexDefWeightsOriginEnumSerializer =
    _$RegionalIndexDefWeightsOriginEnumSerializer();

class _$RegionalIndexDefWeightsOriginEnumSerializer
    implements PrimitiveSerializer<RegionalIndexDefWeightsOriginEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'fitted': 'fitted',
    'operator_': 'operator',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'fitted': 'fitted',
    'operator': 'operator_',
  };

  @override
  final Iterable<Type> types = const <Type>[RegionalIndexDefWeightsOriginEnum];
  @override
  final String wireName = 'RegionalIndexDefWeightsOriginEnum';

  @override
  Object serialize(
          Serializers serializers, RegionalIndexDefWeightsOriginEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RegionalIndexDefWeightsOriginEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RegionalIndexDefWeightsOriginEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RegionalIndexDef extends RegionalIndexDef {
  @override
  final String id;
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
  final int weightsVersion;
  @override
  final RegionalIndexDefWeightsOriginEnum weightsOrigin;
  @override
  final bool? autoApplyFittedWeights;
  @override
  final bool enabled;
  @override
  final bool? builtIn;
  @override
  final bool? ready;
  @override
  final RegionalIndexDefSkill? skill;
  @override
  final DateTime? updatedAt;

  factory _$RegionalIndexDef(
          [void Function(RegionalIndexDefBuilder)? updates]) =>
      (RegionalIndexDefBuilder()..update(updates))._build();

  _$RegionalIndexDef._(
      {required this.id,
      required this.name,
      this.description,
      required this.components,
      required this.weights,
      this.floors,
      required this.target,
      required this.weightsVersion,
      required this.weightsOrigin,
      this.autoApplyFittedWeights,
      required this.enabled,
      this.builtIn,
      this.ready,
      this.skill,
      this.updatedAt})
      : super._();
  @override
  RegionalIndexDef rebuild(void Function(RegionalIndexDefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDefBuilder toBuilder() =>
      RegionalIndexDefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDef &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        components == other.components &&
        weights == other.weights &&
        floors == other.floors &&
        target == other.target &&
        weightsVersion == other.weightsVersion &&
        weightsOrigin == other.weightsOrigin &&
        autoApplyFittedWeights == other.autoApplyFittedWeights &&
        enabled == other.enabled &&
        builtIn == other.builtIn &&
        ready == other.ready &&
        skill == other.skill &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, weights.hashCode);
    _$hash = $jc(_$hash, floors.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, weightsVersion.hashCode);
    _$hash = $jc(_$hash, weightsOrigin.hashCode);
    _$hash = $jc(_$hash, autoApplyFittedWeights.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, builtIn.hashCode);
    _$hash = $jc(_$hash, ready.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDef')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('components', components)
          ..add('weights', weights)
          ..add('floors', floors)
          ..add('target', target)
          ..add('weightsVersion', weightsVersion)
          ..add('weightsOrigin', weightsOrigin)
          ..add('autoApplyFittedWeights', autoApplyFittedWeights)
          ..add('enabled', enabled)
          ..add('builtIn', builtIn)
          ..add('ready', ready)
          ..add('skill', skill)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class RegionalIndexDefBuilder
    implements Builder<RegionalIndexDef, RegionalIndexDefBuilder> {
  _$RegionalIndexDef? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  int? _weightsVersion;
  int? get weightsVersion => _$this._weightsVersion;
  set weightsVersion(int? weightsVersion) =>
      _$this._weightsVersion = weightsVersion;

  RegionalIndexDefWeightsOriginEnum? _weightsOrigin;
  RegionalIndexDefWeightsOriginEnum? get weightsOrigin => _$this._weightsOrigin;
  set weightsOrigin(RegionalIndexDefWeightsOriginEnum? weightsOrigin) =>
      _$this._weightsOrigin = weightsOrigin;

  bool? _autoApplyFittedWeights;
  bool? get autoApplyFittedWeights => _$this._autoApplyFittedWeights;
  set autoApplyFittedWeights(bool? autoApplyFittedWeights) =>
      _$this._autoApplyFittedWeights = autoApplyFittedWeights;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _builtIn;
  bool? get builtIn => _$this._builtIn;
  set builtIn(bool? builtIn) => _$this._builtIn = builtIn;

  bool? _ready;
  bool? get ready => _$this._ready;
  set ready(bool? ready) => _$this._ready = ready;

  RegionalIndexDefSkillBuilder? _skill;
  RegionalIndexDefSkillBuilder get skill =>
      _$this._skill ??= RegionalIndexDefSkillBuilder();
  set skill(RegionalIndexDefSkillBuilder? skill) => _$this._skill = skill;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  RegionalIndexDefBuilder() {
    RegionalIndexDef._defaults(this);
  }

  RegionalIndexDefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _components = $v.components.toBuilder();
      _weights = $v.weights.toBuilder();
      _floors = $v.floors?.toBuilder();
      _target = $v.target;
      _weightsVersion = $v.weightsVersion;
      _weightsOrigin = $v.weightsOrigin;
      _autoApplyFittedWeights = $v.autoApplyFittedWeights;
      _enabled = $v.enabled;
      _builtIn = $v.builtIn;
      _ready = $v.ready;
      _skill = $v.skill?.toBuilder();
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDef other) {
    _$v = other as _$RegionalIndexDef;
  }

  @override
  void update(void Function(RegionalIndexDefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDef build() => _build();

  _$RegionalIndexDef _build() {
    _$RegionalIndexDef _$result;
    try {
      _$result = _$v ??
          _$RegionalIndexDef._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RegionalIndexDef', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RegionalIndexDef', 'name'),
            description: description,
            components: components.build(),
            weights: weights.build(),
            floors: _floors?.build(),
            target: BuiltValueNullFieldError.checkNotNull(
                target, r'RegionalIndexDef', 'target'),
            weightsVersion: BuiltValueNullFieldError.checkNotNull(
                weightsVersion, r'RegionalIndexDef', 'weightsVersion'),
            weightsOrigin: BuiltValueNullFieldError.checkNotNull(
                weightsOrigin, r'RegionalIndexDef', 'weightsOrigin'),
            autoApplyFittedWeights: autoApplyFittedWeights,
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'RegionalIndexDef', 'enabled'),
            builtIn: builtIn,
            ready: ready,
            skill: _skill?.build(),
            updatedAt: updatedAt,
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

        _$failedField = 'skill';
        _skill?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegionalIndexDef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
