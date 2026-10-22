// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_profile_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_maritimeDisruption =
    const AnalystProfileScopeEventTypesEnum._('maritimeDisruption');
const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_aviationAnomaly =
    const AnalystProfileScopeEventTypesEnum._('aviationAnomaly');
const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_infrastructureDisruption =
    const AnalystProfileScopeEventTypesEnum._('infrastructureDisruption');
const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_weatherImpact =
    const AnalystProfileScopeEventTypesEnum._('weatherImpact');
const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_seismic =
    const AnalystProfileScopeEventTypesEnum._('seismic');
const AnalystProfileScopeEventTypesEnum
    _$analystProfileScopeEventTypesEnum_custom =
    const AnalystProfileScopeEventTypesEnum._('custom');

AnalystProfileScopeEventTypesEnum _$analystProfileScopeEventTypesEnumValueOf(
    String name) {
  switch (name) {
    case 'maritimeDisruption':
      return _$analystProfileScopeEventTypesEnum_maritimeDisruption;
    case 'aviationAnomaly':
      return _$analystProfileScopeEventTypesEnum_aviationAnomaly;
    case 'infrastructureDisruption':
      return _$analystProfileScopeEventTypesEnum_infrastructureDisruption;
    case 'weatherImpact':
      return _$analystProfileScopeEventTypesEnum_weatherImpact;
    case 'seismic':
      return _$analystProfileScopeEventTypesEnum_seismic;
    case 'custom':
      return _$analystProfileScopeEventTypesEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystProfileScopeEventTypesEnum>
    _$analystProfileScopeEventTypesEnumValues = BuiltSet<
        AnalystProfileScopeEventTypesEnum>(const <AnalystProfileScopeEventTypesEnum>[
  _$analystProfileScopeEventTypesEnum_maritimeDisruption,
  _$analystProfileScopeEventTypesEnum_aviationAnomaly,
  _$analystProfileScopeEventTypesEnum_infrastructureDisruption,
  _$analystProfileScopeEventTypesEnum_weatherImpact,
  _$analystProfileScopeEventTypesEnum_seismic,
  _$analystProfileScopeEventTypesEnum_custom,
]);

Serializer<AnalystProfileScopeEventTypesEnum>
    _$analystProfileScopeEventTypesEnumSerializer =
    _$AnalystProfileScopeEventTypesEnumSerializer();

class _$AnalystProfileScopeEventTypesEnumSerializer
    implements PrimitiveSerializer<AnalystProfileScopeEventTypesEnum> {
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
  final Iterable<Type> types = const <Type>[AnalystProfileScopeEventTypesEnum];
  @override
  final String wireName = 'AnalystProfileScopeEventTypesEnum';

  @override
  Object serialize(
          Serializers serializers, AnalystProfileScopeEventTypesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystProfileScopeEventTypesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystProfileScopeEventTypesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystProfileScope extends AnalystProfileScope {
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<String>? places;
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<AnalystProfileScopeEventTypesEnum>? eventTypes;
  @override
  final BuiltList<String>? ruleTags;
  @override
  final Severity? minSeverity;

  factory _$AnalystProfileScope(
          [void Function(AnalystProfileScopeBuilder)? updates]) =>
      (AnalystProfileScopeBuilder()..update(updates))._build();

  _$AnalystProfileScope._(
      {this.sources,
      this.kinds,
      this.places,
      this.bbox,
      this.eventTypes,
      this.ruleTags,
      this.minSeverity})
      : super._();
  @override
  AnalystProfileScope rebuild(
          void Function(AnalystProfileScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystProfileScopeBuilder toBuilder() =>
      AnalystProfileScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystProfileScope &&
        sources == other.sources &&
        kinds == other.kinds &&
        places == other.places &&
        bbox == other.bbox &&
        eventTypes == other.eventTypes &&
        ruleTags == other.ruleTags &&
        minSeverity == other.minSeverity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, places.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, eventTypes.hashCode);
    _$hash = $jc(_$hash, ruleTags.hashCode);
    _$hash = $jc(_$hash, minSeverity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystProfileScope')
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('places', places)
          ..add('bbox', bbox)
          ..add('eventTypes', eventTypes)
          ..add('ruleTags', ruleTags)
          ..add('minSeverity', minSeverity))
        .toString();
  }
}

class AnalystProfileScopeBuilder
    implements Builder<AnalystProfileScope, AnalystProfileScopeBuilder> {
  _$AnalystProfileScope? _$v;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _places;
  ListBuilder<String> get places => _$this._places ??= ListBuilder<String>();
  set places(ListBuilder<String>? places) => _$this._places = places;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<AnalystProfileScopeEventTypesEnum>? _eventTypes;
  ListBuilder<AnalystProfileScopeEventTypesEnum> get eventTypes =>
      _$this._eventTypes ??= ListBuilder<AnalystProfileScopeEventTypesEnum>();
  set eventTypes(ListBuilder<AnalystProfileScopeEventTypesEnum>? eventTypes) =>
      _$this._eventTypes = eventTypes;

  ListBuilder<String>? _ruleTags;
  ListBuilder<String> get ruleTags =>
      _$this._ruleTags ??= ListBuilder<String>();
  set ruleTags(ListBuilder<String>? ruleTags) => _$this._ruleTags = ruleTags;

  Severity? _minSeverity;
  Severity? get minSeverity => _$this._minSeverity;
  set minSeverity(Severity? minSeverity) => _$this._minSeverity = minSeverity;

  AnalystProfileScopeBuilder() {
    AnalystProfileScope._defaults(this);
  }

  AnalystProfileScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _places = $v.places?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _eventTypes = $v.eventTypes?.toBuilder();
      _ruleTags = $v.ruleTags?.toBuilder();
      _minSeverity = $v.minSeverity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystProfileScope other) {
    _$v = other as _$AnalystProfileScope;
  }

  @override
  void update(void Function(AnalystProfileScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystProfileScope build() => _build();

  _$AnalystProfileScope _build() {
    _$AnalystProfileScope _$result;
    try {
      _$result = _$v ??
          _$AnalystProfileScope._(
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            places: _places?.build(),
            bbox: _bbox?.build(),
            eventTypes: _eventTypes?.build(),
            ruleTags: _ruleTags?.build(),
            minSeverity: minSeverity,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'places';
        _places?.build();
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'eventTypes';
        _eventTypes?.build();
        _$failedField = 'ruleTags';
        _ruleTags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnalystProfileScope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
