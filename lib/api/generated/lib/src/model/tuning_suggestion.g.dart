// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuning_suggestion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_raiseThreshold =
    const TuningSuggestionKindEnum._('raiseThreshold');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_lowerThreshold =
    const TuningSuggestionKindEnum._('lowerThreshold');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_addCooldown =
    const TuningSuggestionKindEnum._('addCooldown');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_switchToEnter =
    const TuningSuggestionKindEnum._('switchToEnter');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_addEdgeMinInterval =
    const TuningSuggestionKindEnum._('addEdgeMinInterval');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_shrinkGeofence =
    const TuningSuggestionKindEnum._('shrinkGeofence');
const TuningSuggestionKindEnum
    _$tuningSuggestionKindEnum_lowerAnomalySensitivity =
    const TuningSuggestionKindEnum._('lowerAnomalySensitivity');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_ACTIVE_WINDOW =
    const TuningSuggestionKindEnum._('ACTIVE_WINDOW');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_SEVERITY_UP =
    const TuningSuggestionKindEnum._('SEVERITY_UP');
const TuningSuggestionKindEnum _$tuningSuggestionKindEnum_SEVERITY_DOWN =
    const TuningSuggestionKindEnum._('SEVERITY_DOWN');

TuningSuggestionKindEnum _$tuningSuggestionKindEnumValueOf(String name) {
  switch (name) {
    case 'raiseThreshold':
      return _$tuningSuggestionKindEnum_raiseThreshold;
    case 'lowerThreshold':
      return _$tuningSuggestionKindEnum_lowerThreshold;
    case 'addCooldown':
      return _$tuningSuggestionKindEnum_addCooldown;
    case 'switchToEnter':
      return _$tuningSuggestionKindEnum_switchToEnter;
    case 'addEdgeMinInterval':
      return _$tuningSuggestionKindEnum_addEdgeMinInterval;
    case 'shrinkGeofence':
      return _$tuningSuggestionKindEnum_shrinkGeofence;
    case 'lowerAnomalySensitivity':
      return _$tuningSuggestionKindEnum_lowerAnomalySensitivity;
    case 'ACTIVE_WINDOW':
      return _$tuningSuggestionKindEnum_ACTIVE_WINDOW;
    case 'SEVERITY_UP':
      return _$tuningSuggestionKindEnum_SEVERITY_UP;
    case 'SEVERITY_DOWN':
      return _$tuningSuggestionKindEnum_SEVERITY_DOWN;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TuningSuggestionKindEnum> _$tuningSuggestionKindEnumValues =
    BuiltSet<TuningSuggestionKindEnum>(const <TuningSuggestionKindEnum>[
  _$tuningSuggestionKindEnum_raiseThreshold,
  _$tuningSuggestionKindEnum_lowerThreshold,
  _$tuningSuggestionKindEnum_addCooldown,
  _$tuningSuggestionKindEnum_switchToEnter,
  _$tuningSuggestionKindEnum_addEdgeMinInterval,
  _$tuningSuggestionKindEnum_shrinkGeofence,
  _$tuningSuggestionKindEnum_lowerAnomalySensitivity,
  _$tuningSuggestionKindEnum_ACTIVE_WINDOW,
  _$tuningSuggestionKindEnum_SEVERITY_UP,
  _$tuningSuggestionKindEnum_SEVERITY_DOWN,
]);

Serializer<TuningSuggestionKindEnum> _$tuningSuggestionKindEnumSerializer =
    _$TuningSuggestionKindEnumSerializer();

class _$TuningSuggestionKindEnumSerializer
    implements PrimitiveSerializer<TuningSuggestionKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'raiseThreshold': 'raise-threshold',
    'lowerThreshold': 'lower-threshold',
    'addCooldown': 'add-cooldown',
    'switchToEnter': 'switch-to-enter',
    'addEdgeMinInterval': 'add-edge-min-interval',
    'shrinkGeofence': 'shrink-geofence',
    'lowerAnomalySensitivity': 'lower-anomaly-sensitivity',
    'ACTIVE_WINDOW': 'ACTIVE_WINDOW',
    'SEVERITY_UP': 'SEVERITY_UP',
    'SEVERITY_DOWN': 'SEVERITY_DOWN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'raise-threshold': 'raiseThreshold',
    'lower-threshold': 'lowerThreshold',
    'add-cooldown': 'addCooldown',
    'switch-to-enter': 'switchToEnter',
    'add-edge-min-interval': 'addEdgeMinInterval',
    'shrink-geofence': 'shrinkGeofence',
    'lower-anomaly-sensitivity': 'lowerAnomalySensitivity',
    'ACTIVE_WINDOW': 'ACTIVE_WINDOW',
    'SEVERITY_UP': 'SEVERITY_UP',
    'SEVERITY_DOWN': 'SEVERITY_DOWN',
  };

  @override
  final Iterable<Type> types = const <Type>[TuningSuggestionKindEnum];
  @override
  final String wireName = 'TuningSuggestionKindEnum';

  @override
  Object serialize(Serializers serializers, TuningSuggestionKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TuningSuggestionKindEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TuningSuggestionKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TuningSuggestion extends TuningSuggestion {
  @override
  final String id;
  @override
  final TuningSuggestionKindEnum kind;
  @override
  final String rationale;
  @override
  final BuiltMap<String, JsonObject?> patch_;
  @override
  final TuningSuggestionExpectedEffect? expectedEffect;
  @override
  final BuiltList<Caveat>? caveats;

  factory _$TuningSuggestion(
          [void Function(TuningSuggestionBuilder)? updates]) =>
      (TuningSuggestionBuilder()..update(updates))._build();

  _$TuningSuggestion._(
      {required this.id,
      required this.kind,
      required this.rationale,
      required this.patch_,
      this.expectedEffect,
      this.caveats})
      : super._();
  @override
  TuningSuggestion rebuild(void Function(TuningSuggestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TuningSuggestionBuilder toBuilder() =>
      TuningSuggestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TuningSuggestion &&
        id == other.id &&
        kind == other.kind &&
        rationale == other.rationale &&
        patch_ == other.patch_ &&
        expectedEffect == other.expectedEffect &&
        caveats == other.caveats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, patch_.hashCode);
    _$hash = $jc(_$hash, expectedEffect.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TuningSuggestion')
          ..add('id', id)
          ..add('kind', kind)
          ..add('rationale', rationale)
          ..add('patch_', patch_)
          ..add('expectedEffect', expectedEffect)
          ..add('caveats', caveats))
        .toString();
  }
}

class TuningSuggestionBuilder
    implements Builder<TuningSuggestion, TuningSuggestionBuilder> {
  _$TuningSuggestion? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TuningSuggestionKindEnum? _kind;
  TuningSuggestionKindEnum? get kind => _$this._kind;
  set kind(TuningSuggestionKindEnum? kind) => _$this._kind = kind;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  MapBuilder<String, JsonObject?>? _patch_;
  MapBuilder<String, JsonObject?> get patch_ =>
      _$this._patch_ ??= MapBuilder<String, JsonObject?>();
  set patch_(MapBuilder<String, JsonObject?>? patch_) =>
      _$this._patch_ = patch_;

  TuningSuggestionExpectedEffectBuilder? _expectedEffect;
  TuningSuggestionExpectedEffectBuilder get expectedEffect =>
      _$this._expectedEffect ??= TuningSuggestionExpectedEffectBuilder();
  set expectedEffect(TuningSuggestionExpectedEffectBuilder? expectedEffect) =>
      _$this._expectedEffect = expectedEffect;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  TuningSuggestionBuilder() {
    TuningSuggestion._defaults(this);
  }

  TuningSuggestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _kind = $v.kind;
      _rationale = $v.rationale;
      _patch_ = $v.patch_.toBuilder();
      _expectedEffect = $v.expectedEffect?.toBuilder();
      _caveats = $v.caveats?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TuningSuggestion other) {
    _$v = other as _$TuningSuggestion;
  }

  @override
  void update(void Function(TuningSuggestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TuningSuggestion build() => _build();

  _$TuningSuggestion _build() {
    _$TuningSuggestion _$result;
    try {
      _$result = _$v ??
          _$TuningSuggestion._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TuningSuggestion', 'id'),
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'TuningSuggestion', 'kind'),
            rationale: BuiltValueNullFieldError.checkNotNull(
                rationale, r'TuningSuggestion', 'rationale'),
            patch_: patch_.build(),
            expectedEffect: _expectedEffect?.build(),
            caveats: _caveats?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patch_';
        patch_.build();
        _$failedField = 'expectedEffect';
        _expectedEffect?.build();
        _$failedField = 'caveats';
        _caveats?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TuningSuggestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
