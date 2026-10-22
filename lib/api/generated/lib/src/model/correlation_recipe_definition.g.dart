// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'correlation_recipe_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_maritimeDisruption =
    const CorrelationRecipeDefinitionTypeEnum._('maritimeDisruption');
const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_aviationAnomaly =
    const CorrelationRecipeDefinitionTypeEnum._('aviationAnomaly');
const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_infrastructureDisruption =
    const CorrelationRecipeDefinitionTypeEnum._('infrastructureDisruption');
const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_weatherImpact =
    const CorrelationRecipeDefinitionTypeEnum._('weatherImpact');
const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_seismic =
    const CorrelationRecipeDefinitionTypeEnum._('seismic');
const CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnum_custom =
    const CorrelationRecipeDefinitionTypeEnum._('custom');

CorrelationRecipeDefinitionTypeEnum
_$correlationRecipeDefinitionTypeEnumValueOf(String name) {
  switch (name) {
    case 'maritimeDisruption':
      return _$correlationRecipeDefinitionTypeEnum_maritimeDisruption;
    case 'aviationAnomaly':
      return _$correlationRecipeDefinitionTypeEnum_aviationAnomaly;
    case 'infrastructureDisruption':
      return _$correlationRecipeDefinitionTypeEnum_infrastructureDisruption;
    case 'weatherImpact':
      return _$correlationRecipeDefinitionTypeEnum_weatherImpact;
    case 'seismic':
      return _$correlationRecipeDefinitionTypeEnum_seismic;
    case 'custom':
      return _$correlationRecipeDefinitionTypeEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CorrelationRecipeDefinitionTypeEnum>
_$correlationRecipeDefinitionTypeEnumValues =
    BuiltSet<CorrelationRecipeDefinitionTypeEnum>(
      const <CorrelationRecipeDefinitionTypeEnum>[
        _$correlationRecipeDefinitionTypeEnum_maritimeDisruption,
        _$correlationRecipeDefinitionTypeEnum_aviationAnomaly,
        _$correlationRecipeDefinitionTypeEnum_infrastructureDisruption,
        _$correlationRecipeDefinitionTypeEnum_weatherImpact,
        _$correlationRecipeDefinitionTypeEnum_seismic,
        _$correlationRecipeDefinitionTypeEnum_custom,
      ],
    );

Serializer<CorrelationRecipeDefinitionTypeEnum>
_$correlationRecipeDefinitionTypeEnumSerializer =
    _$CorrelationRecipeDefinitionTypeEnumSerializer();

class _$CorrelationRecipeDefinitionTypeEnumSerializer
    implements PrimitiveSerializer<CorrelationRecipeDefinitionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'maritimeDisruption': 'maritime-disruption',
    'aviationAnomaly': 'aviation-anomaly',
    'infrastructureDisruption': 'infrastructure-disruption',
    'weatherImpact': 'weather-impact',
    'seismic': 'seismic',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'maritime-disruption': 'maritimeDisruption',
    'aviation-anomaly': 'aviationAnomaly',
    'infrastructure-disruption': 'infrastructureDisruption',
    'weather-impact': 'weatherImpact',
    'seismic': 'seismic',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CorrelationRecipeDefinitionTypeEnum,
  ];
  @override
  final String wireName = 'CorrelationRecipeDefinitionTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CorrelationRecipeDefinitionTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CorrelationRecipeDefinitionTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CorrelationRecipeDefinitionTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CorrelationRecipeDefinition extends CorrelationRecipeDefinition {
  @override
  final CorrelationRecipeDefinitionTypeEnum type;
  @override
  final CorrelationRecipeDefinitionSeed seed;
  @override
  final BuiltList<CorrelationRecipeDefinitionJoinsInner>? joins;
  @override
  final int? minMembers;
  @override
  final int? minSignalFamilies;
  @override
  final CorrelationRecipeDefinitionActivateAt? activateAt;
  @override
  final BuiltList<CorrelationRecipeDefinitionContradictionsInner>?
  contradictions;
  @override
  final BuiltMap<String, Severity>? severityMap;
  @override
  final CorrelationRecipeDefinitionDedup? dedup;
  @override
  final String? quietPeriod;
  @override
  final String? reopenWindow;

  factory _$CorrelationRecipeDefinition([
    void Function(CorrelationRecipeDefinitionBuilder)? updates,
  ]) => (CorrelationRecipeDefinitionBuilder()..update(updates))._build();

  _$CorrelationRecipeDefinition._({
    required this.type,
    required this.seed,
    this.joins,
    this.minMembers,
    this.minSignalFamilies,
    this.activateAt,
    this.contradictions,
    this.severityMap,
    this.dedup,
    this.quietPeriod,
    this.reopenWindow,
  }) : super._();
  @override
  CorrelationRecipeDefinition rebuild(
    void Function(CorrelationRecipeDefinitionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CorrelationRecipeDefinitionBuilder toBuilder() =>
      CorrelationRecipeDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrelationRecipeDefinition &&
        type == other.type &&
        seed == other.seed &&
        joins == other.joins &&
        minMembers == other.minMembers &&
        minSignalFamilies == other.minSignalFamilies &&
        activateAt == other.activateAt &&
        contradictions == other.contradictions &&
        severityMap == other.severityMap &&
        dedup == other.dedup &&
        quietPeriod == other.quietPeriod &&
        reopenWindow == other.reopenWindow;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, seed.hashCode);
    _$hash = $jc(_$hash, joins.hashCode);
    _$hash = $jc(_$hash, minMembers.hashCode);
    _$hash = $jc(_$hash, minSignalFamilies.hashCode);
    _$hash = $jc(_$hash, activateAt.hashCode);
    _$hash = $jc(_$hash, contradictions.hashCode);
    _$hash = $jc(_$hash, severityMap.hashCode);
    _$hash = $jc(_$hash, dedup.hashCode);
    _$hash = $jc(_$hash, quietPeriod.hashCode);
    _$hash = $jc(_$hash, reopenWindow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrelationRecipeDefinition')
          ..add('type', type)
          ..add('seed', seed)
          ..add('joins', joins)
          ..add('minMembers', minMembers)
          ..add('minSignalFamilies', minSignalFamilies)
          ..add('activateAt', activateAt)
          ..add('contradictions', contradictions)
          ..add('severityMap', severityMap)
          ..add('dedup', dedup)
          ..add('quietPeriod', quietPeriod)
          ..add('reopenWindow', reopenWindow))
        .toString();
  }
}

class CorrelationRecipeDefinitionBuilder
    implements
        Builder<
          CorrelationRecipeDefinition,
          CorrelationRecipeDefinitionBuilder
        > {
  _$CorrelationRecipeDefinition? _$v;

  CorrelationRecipeDefinitionTypeEnum? _type;
  CorrelationRecipeDefinitionTypeEnum? get type => _$this._type;
  set type(CorrelationRecipeDefinitionTypeEnum? type) => _$this._type = type;

  CorrelationRecipeDefinitionSeedBuilder? _seed;
  CorrelationRecipeDefinitionSeedBuilder get seed =>
      _$this._seed ??= CorrelationRecipeDefinitionSeedBuilder();
  set seed(CorrelationRecipeDefinitionSeedBuilder? seed) => _$this._seed = seed;

  ListBuilder<CorrelationRecipeDefinitionJoinsInner>? _joins;
  ListBuilder<CorrelationRecipeDefinitionJoinsInner> get joins =>
      _$this._joins ??= ListBuilder<CorrelationRecipeDefinitionJoinsInner>();
  set joins(ListBuilder<CorrelationRecipeDefinitionJoinsInner>? joins) =>
      _$this._joins = joins;

  int? _minMembers;
  int? get minMembers => _$this._minMembers;
  set minMembers(int? minMembers) => _$this._minMembers = minMembers;

  int? _minSignalFamilies;
  int? get minSignalFamilies => _$this._minSignalFamilies;
  set minSignalFamilies(int? minSignalFamilies) =>
      _$this._minSignalFamilies = minSignalFamilies;

  CorrelationRecipeDefinitionActivateAtBuilder? _activateAt;
  CorrelationRecipeDefinitionActivateAtBuilder get activateAt =>
      _$this._activateAt ??= CorrelationRecipeDefinitionActivateAtBuilder();
  set activateAt(CorrelationRecipeDefinitionActivateAtBuilder? activateAt) =>
      _$this._activateAt = activateAt;

  ListBuilder<CorrelationRecipeDefinitionContradictionsInner>? _contradictions;
  ListBuilder<CorrelationRecipeDefinitionContradictionsInner>
  get contradictions => _$this._contradictions ??=
      ListBuilder<CorrelationRecipeDefinitionContradictionsInner>();
  set contradictions(
    ListBuilder<CorrelationRecipeDefinitionContradictionsInner>? contradictions,
  ) => _$this._contradictions = contradictions;

  MapBuilder<String, Severity>? _severityMap;
  MapBuilder<String, Severity> get severityMap =>
      _$this._severityMap ??= MapBuilder<String, Severity>();
  set severityMap(MapBuilder<String, Severity>? severityMap) =>
      _$this._severityMap = severityMap;

  CorrelationRecipeDefinitionDedupBuilder? _dedup;
  CorrelationRecipeDefinitionDedupBuilder get dedup =>
      _$this._dedup ??= CorrelationRecipeDefinitionDedupBuilder();
  set dedup(CorrelationRecipeDefinitionDedupBuilder? dedup) =>
      _$this._dedup = dedup;

  String? _quietPeriod;
  String? get quietPeriod => _$this._quietPeriod;
  set quietPeriod(String? quietPeriod) => _$this._quietPeriod = quietPeriod;

  String? _reopenWindow;
  String? get reopenWindow => _$this._reopenWindow;
  set reopenWindow(String? reopenWindow) => _$this._reopenWindow = reopenWindow;

  CorrelationRecipeDefinitionBuilder() {
    CorrelationRecipeDefinition._defaults(this);
  }

  CorrelationRecipeDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _seed = $v.seed.toBuilder();
      _joins = $v.joins?.toBuilder();
      _minMembers = $v.minMembers;
      _minSignalFamilies = $v.minSignalFamilies;
      _activateAt = $v.activateAt?.toBuilder();
      _contradictions = $v.contradictions?.toBuilder();
      _severityMap = $v.severityMap?.toBuilder();
      _dedup = $v.dedup?.toBuilder();
      _quietPeriod = $v.quietPeriod;
      _reopenWindow = $v.reopenWindow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrelationRecipeDefinition other) {
    _$v = other as _$CorrelationRecipeDefinition;
  }

  @override
  void update(void Function(CorrelationRecipeDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrelationRecipeDefinition build() => _build();

  _$CorrelationRecipeDefinition _build() {
    _$CorrelationRecipeDefinition _$result;
    try {
      _$result =
          _$v ??
          _$CorrelationRecipeDefinition._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CorrelationRecipeDefinition',
              'type',
            ),
            seed: seed.build(),
            joins: _joins?.build(),
            minMembers: minMembers,
            minSignalFamilies: minSignalFamilies,
            activateAt: _activateAt?.build(),
            contradictions: _contradictions?.build(),
            severityMap: _severityMap?.build(),
            dedup: _dedup?.build(),
            quietPeriod: quietPeriod,
            reopenWindow: reopenWindow,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seed';
        seed.build();
        _$failedField = 'joins';
        _joins?.build();

        _$failedField = 'activateAt';
        _activateAt?.build();
        _$failedField = 'contradictions';
        _contradictions?.build();
        _$failedField = 'severityMap';
        _severityMap?.build();
        _$failedField = 'dedup';
        _dedup?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CorrelationRecipeDefinition',
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
