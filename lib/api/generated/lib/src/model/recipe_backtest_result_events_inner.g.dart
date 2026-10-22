// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_backtest_result_events_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_maritimeDisruption =
    const RecipeBacktestResultEventsInnerTypeEnum._('maritimeDisruption');
const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_aviationAnomaly =
    const RecipeBacktestResultEventsInnerTypeEnum._('aviationAnomaly');
const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_infrastructureDisruption =
    const RecipeBacktestResultEventsInnerTypeEnum._('infrastructureDisruption');
const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_weatherImpact =
    const RecipeBacktestResultEventsInnerTypeEnum._('weatherImpact');
const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_seismic =
    const RecipeBacktestResultEventsInnerTypeEnum._('seismic');
const RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnum_custom =
    const RecipeBacktestResultEventsInnerTypeEnum._('custom');

RecipeBacktestResultEventsInnerTypeEnum
    _$recipeBacktestResultEventsInnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'maritimeDisruption':
      return _$recipeBacktestResultEventsInnerTypeEnum_maritimeDisruption;
    case 'aviationAnomaly':
      return _$recipeBacktestResultEventsInnerTypeEnum_aviationAnomaly;
    case 'infrastructureDisruption':
      return _$recipeBacktestResultEventsInnerTypeEnum_infrastructureDisruption;
    case 'weatherImpact':
      return _$recipeBacktestResultEventsInnerTypeEnum_weatherImpact;
    case 'seismic':
      return _$recipeBacktestResultEventsInnerTypeEnum_seismic;
    case 'custom':
      return _$recipeBacktestResultEventsInnerTypeEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecipeBacktestResultEventsInnerTypeEnum>
    _$recipeBacktestResultEventsInnerTypeEnumValues = BuiltSet<
        RecipeBacktestResultEventsInnerTypeEnum>(const <RecipeBacktestResultEventsInnerTypeEnum>[
  _$recipeBacktestResultEventsInnerTypeEnum_maritimeDisruption,
  _$recipeBacktestResultEventsInnerTypeEnum_aviationAnomaly,
  _$recipeBacktestResultEventsInnerTypeEnum_infrastructureDisruption,
  _$recipeBacktestResultEventsInnerTypeEnum_weatherImpact,
  _$recipeBacktestResultEventsInnerTypeEnum_seismic,
  _$recipeBacktestResultEventsInnerTypeEnum_custom,
]);

const RecipeBacktestResultEventsInnerEvidenceQualityEnum
    _$recipeBacktestResultEventsInnerEvidenceQualityEnum_strong =
    const RecipeBacktestResultEventsInnerEvidenceQualityEnum._('strong');
const RecipeBacktestResultEventsInnerEvidenceQualityEnum
    _$recipeBacktestResultEventsInnerEvidenceQualityEnum_moderate =
    const RecipeBacktestResultEventsInnerEvidenceQualityEnum._('moderate');
const RecipeBacktestResultEventsInnerEvidenceQualityEnum
    _$recipeBacktestResultEventsInnerEvidenceQualityEnum_weak =
    const RecipeBacktestResultEventsInnerEvidenceQualityEnum._('weak');
const RecipeBacktestResultEventsInnerEvidenceQualityEnum
    _$recipeBacktestResultEventsInnerEvidenceQualityEnum_insufficient =
    const RecipeBacktestResultEventsInnerEvidenceQualityEnum._('insufficient');

RecipeBacktestResultEventsInnerEvidenceQualityEnum
    _$recipeBacktestResultEventsInnerEvidenceQualityEnumValueOf(String name) {
  switch (name) {
    case 'strong':
      return _$recipeBacktestResultEventsInnerEvidenceQualityEnum_strong;
    case 'moderate':
      return _$recipeBacktestResultEventsInnerEvidenceQualityEnum_moderate;
    case 'weak':
      return _$recipeBacktestResultEventsInnerEvidenceQualityEnum_weak;
    case 'insufficient':
      return _$recipeBacktestResultEventsInnerEvidenceQualityEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecipeBacktestResultEventsInnerEvidenceQualityEnum>
    _$recipeBacktestResultEventsInnerEvidenceQualityEnumValues = BuiltSet<
        RecipeBacktestResultEventsInnerEvidenceQualityEnum>(const <RecipeBacktestResultEventsInnerEvidenceQualityEnum>[
  _$recipeBacktestResultEventsInnerEvidenceQualityEnum_strong,
  _$recipeBacktestResultEventsInnerEvidenceQualityEnum_moderate,
  _$recipeBacktestResultEventsInnerEvidenceQualityEnum_weak,
  _$recipeBacktestResultEventsInnerEvidenceQualityEnum_insufficient,
]);

Serializer<RecipeBacktestResultEventsInnerTypeEnum>
    _$recipeBacktestResultEventsInnerTypeEnumSerializer =
    _$RecipeBacktestResultEventsInnerTypeEnumSerializer();
Serializer<RecipeBacktestResultEventsInnerEvidenceQualityEnum>
    _$recipeBacktestResultEventsInnerEvidenceQualityEnumSerializer =
    _$RecipeBacktestResultEventsInnerEvidenceQualityEnumSerializer();

class _$RecipeBacktestResultEventsInnerTypeEnumSerializer
    implements PrimitiveSerializer<RecipeBacktestResultEventsInnerTypeEnum> {
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
    RecipeBacktestResultEventsInnerTypeEnum
  ];
  @override
  final String wireName = 'RecipeBacktestResultEventsInnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          RecipeBacktestResultEventsInnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecipeBacktestResultEventsInnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecipeBacktestResultEventsInnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RecipeBacktestResultEventsInnerEvidenceQualityEnumSerializer
    implements
        PrimitiveSerializer<
            RecipeBacktestResultEventsInnerEvidenceQualityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'strong': 'strong',
    'moderate': 'moderate',
    'weak': 'weak',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'strong': 'strong',
    'moderate': 'moderate',
    'weak': 'weak',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RecipeBacktestResultEventsInnerEvidenceQualityEnum
  ];
  @override
  final String wireName = 'RecipeBacktestResultEventsInnerEvidenceQualityEnum';

  @override
  Object serialize(Serializers serializers,
          RecipeBacktestResultEventsInnerEvidenceQualityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecipeBacktestResultEventsInnerEvidenceQualityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecipeBacktestResultEventsInnerEvidenceQualityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RecipeBacktestResultEventsInner
    extends RecipeBacktestResultEventsInner {
  @override
  final RecipeBacktestResultEventsInnerTypeEnum type;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final BuiltList<IntelEventMember> members;
  @override
  final num? confidence;
  @override
  final RecipeBacktestResultEventsInnerEvidenceQualityEnum? evidenceQuality;

  factory _$RecipeBacktestResultEventsInner(
          [void Function(RecipeBacktestResultEventsInnerBuilder)? updates]) =>
      (RecipeBacktestResultEventsInnerBuilder()..update(updates))._build();

  _$RecipeBacktestResultEventsInner._(
      {required this.type,
      required this.startTime,
      this.endTime,
      required this.members,
      this.confidence,
      this.evidenceQuality})
      : super._();
  @override
  RecipeBacktestResultEventsInner rebuild(
          void Function(RecipeBacktestResultEventsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeBacktestResultEventsInnerBuilder toBuilder() =>
      RecipeBacktestResultEventsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipeBacktestResultEventsInner &&
        type == other.type &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        members == other.members &&
        confidence == other.confidence &&
        evidenceQuality == other.evidenceQuality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, members.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, evidenceQuality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipeBacktestResultEventsInner')
          ..add('type', type)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('members', members)
          ..add('confidence', confidence)
          ..add('evidenceQuality', evidenceQuality))
        .toString();
  }
}

class RecipeBacktestResultEventsInnerBuilder
    implements
        Builder<RecipeBacktestResultEventsInner,
            RecipeBacktestResultEventsInnerBuilder> {
  _$RecipeBacktestResultEventsInner? _$v;

  RecipeBacktestResultEventsInnerTypeEnum? _type;
  RecipeBacktestResultEventsInnerTypeEnum? get type => _$this._type;
  set type(RecipeBacktestResultEventsInnerTypeEnum? type) =>
      _$this._type = type;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  ListBuilder<IntelEventMember>? _members;
  ListBuilder<IntelEventMember> get members =>
      _$this._members ??= ListBuilder<IntelEventMember>();
  set members(ListBuilder<IntelEventMember>? members) =>
      _$this._members = members;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  RecipeBacktestResultEventsInnerEvidenceQualityEnum? _evidenceQuality;
  RecipeBacktestResultEventsInnerEvidenceQualityEnum? get evidenceQuality =>
      _$this._evidenceQuality;
  set evidenceQuality(
          RecipeBacktestResultEventsInnerEvidenceQualityEnum?
              evidenceQuality) =>
      _$this._evidenceQuality = evidenceQuality;

  RecipeBacktestResultEventsInnerBuilder() {
    RecipeBacktestResultEventsInner._defaults(this);
  }

  RecipeBacktestResultEventsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _members = $v.members.toBuilder();
      _confidence = $v.confidence;
      _evidenceQuality = $v.evidenceQuality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeBacktestResultEventsInner other) {
    _$v = other as _$RecipeBacktestResultEventsInner;
  }

  @override
  void update(void Function(RecipeBacktestResultEventsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipeBacktestResultEventsInner build() => _build();

  _$RecipeBacktestResultEventsInner _build() {
    _$RecipeBacktestResultEventsInner _$result;
    try {
      _$result = _$v ??
          _$RecipeBacktestResultEventsInner._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'RecipeBacktestResultEventsInner', 'type'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'RecipeBacktestResultEventsInner', 'startTime'),
            endTime: endTime,
            members: members.build(),
            confidence: confidence,
            evidenceQuality: evidenceQuality,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'members';
        members.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RecipeBacktestResultEventsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
