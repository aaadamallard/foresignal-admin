// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_binding.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalBindingTargetEnum _$externalBindingTargetEnum_series =
    const ExternalBindingTargetEnum._('series');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_canonicalFamily =
    const ExternalBindingTargetEnum._('canonicalFamily');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_social =
    const ExternalBindingTargetEnum._('social');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_news =
    const ExternalBindingTargetEnum._('news');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_evidence =
    const ExternalBindingTargetEnum._('evidence');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_indicator =
    const ExternalBindingTargetEnum._('indicator');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_forecast =
    const ExternalBindingTargetEnum._('forecast');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_place =
    const ExternalBindingTargetEnum._('place');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_situation =
    const ExternalBindingTargetEnum._('situation');
const ExternalBindingTargetEnum _$externalBindingTargetEnum_chronicle =
    const ExternalBindingTargetEnum._('chronicle');

ExternalBindingTargetEnum _$externalBindingTargetEnumValueOf(String name) {
  switch (name) {
    case 'series':
      return _$externalBindingTargetEnum_series;
    case 'canonicalFamily':
      return _$externalBindingTargetEnum_canonicalFamily;
    case 'social':
      return _$externalBindingTargetEnum_social;
    case 'news':
      return _$externalBindingTargetEnum_news;
    case 'evidence':
      return _$externalBindingTargetEnum_evidence;
    case 'indicator':
      return _$externalBindingTargetEnum_indicator;
    case 'forecast':
      return _$externalBindingTargetEnum_forecast;
    case 'place':
      return _$externalBindingTargetEnum_place;
    case 'situation':
      return _$externalBindingTargetEnum_situation;
    case 'chronicle':
      return _$externalBindingTargetEnum_chronicle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalBindingTargetEnum> _$externalBindingTargetEnumValues =
    BuiltSet<ExternalBindingTargetEnum>(const <ExternalBindingTargetEnum>[
  _$externalBindingTargetEnum_series,
  _$externalBindingTargetEnum_canonicalFamily,
  _$externalBindingTargetEnum_social,
  _$externalBindingTargetEnum_news,
  _$externalBindingTargetEnum_evidence,
  _$externalBindingTargetEnum_indicator,
  _$externalBindingTargetEnum_forecast,
  _$externalBindingTargetEnum_place,
  _$externalBindingTargetEnum_situation,
  _$externalBindingTargetEnum_chronicle,
]);

const ExternalBindingStateEnum _$externalBindingStateEnum_active =
    const ExternalBindingStateEnum._('active');
const ExternalBindingStateEnum _$externalBindingStateEnum_disabled =
    const ExternalBindingStateEnum._('disabled');
const ExternalBindingStateEnum _$externalBindingStateEnum_backfilling =
    const ExternalBindingStateEnum._('backfilling');
const ExternalBindingStateEnum _$externalBindingStateEnum_error =
    const ExternalBindingStateEnum._('error');

ExternalBindingStateEnum _$externalBindingStateEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$externalBindingStateEnum_active;
    case 'disabled':
      return _$externalBindingStateEnum_disabled;
    case 'backfilling':
      return _$externalBindingStateEnum_backfilling;
    case 'error':
      return _$externalBindingStateEnum_error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalBindingStateEnum> _$externalBindingStateEnumValues =
    BuiltSet<ExternalBindingStateEnum>(const <ExternalBindingStateEnum>[
  _$externalBindingStateEnum_active,
  _$externalBindingStateEnum_disabled,
  _$externalBindingStateEnum_backfilling,
  _$externalBindingStateEnum_error,
]);

Serializer<ExternalBindingTargetEnum> _$externalBindingTargetEnumSerializer =
    _$ExternalBindingTargetEnumSerializer();
Serializer<ExternalBindingStateEnum> _$externalBindingStateEnumSerializer =
    _$ExternalBindingStateEnumSerializer();

class _$ExternalBindingTargetEnumSerializer
    implements PrimitiveSerializer<ExternalBindingTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'series': 'series',
    'canonicalFamily': 'canonical-family',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'series': 'series',
    'canonical-family': 'canonicalFamily',
    'social': 'social',
    'news': 'news',
    'evidence': 'evidence',
    'indicator': 'indicator',
    'forecast': 'forecast',
    'place': 'place',
    'situation': 'situation',
    'chronicle': 'chronicle',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalBindingTargetEnum];
  @override
  final String wireName = 'ExternalBindingTargetEnum';

  @override
  Object serialize(Serializers serializers, ExternalBindingTargetEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExternalBindingTargetEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExternalBindingTargetEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExternalBindingStateEnumSerializer
    implements PrimitiveSerializer<ExternalBindingStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'disabled': 'disabled',
    'backfilling': 'backfilling',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'disabled': 'disabled',
    'backfilling': 'backfilling',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[ExternalBindingStateEnum];
  @override
  final String wireName = 'ExternalBindingStateEnum';

  @override
  Object serialize(Serializers serializers, ExternalBindingStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExternalBindingStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExternalBindingStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExternalBinding extends ExternalBinding {
  @override
  final String streamId;
  @override
  final ExternalBindingTargetEnum target;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? filter;
  @override
  final bool? enabled;
  @override
  final bool? backfill;
  @override
  final String id;
  @override
  final String sourceId;
  @override
  final String? manifestSha256;
  @override
  final ExternalBindingStateEnum state;
  @override
  final int? applied;
  @override
  final String? lastError;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final String? targetRef;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? lastAppliedAt;

  factory _$ExternalBinding([void Function(ExternalBindingBuilder)? updates]) =>
      (ExternalBindingBuilder()..update(updates))._build();

  _$ExternalBinding._(
      {required this.streamId,
      required this.target,
      this.config,
      this.filter,
      this.enabled,
      this.backfill,
      required this.id,
      required this.sourceId,
      this.manifestSha256,
      required this.state,
      this.applied,
      this.lastError,
      this.createdBy,
      required this.createdAt,
      this.targetRef,
      this.updatedAt,
      this.lastAppliedAt})
      : super._();
  @override
  ExternalBinding rebuild(void Function(ExternalBindingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalBindingBuilder toBuilder() => ExternalBindingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalBinding &&
        streamId == other.streamId &&
        target == other.target &&
        config == other.config &&
        filter == other.filter &&
        enabled == other.enabled &&
        backfill == other.backfill &&
        id == other.id &&
        sourceId == other.sourceId &&
        manifestSha256 == other.manifestSha256 &&
        state == other.state &&
        applied == other.applied &&
        lastError == other.lastError &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt &&
        targetRef == other.targetRef &&
        updatedAt == other.updatedAt &&
        lastAppliedAt == other.lastAppliedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, backfill.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, manifestSha256.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, applied.hashCode);
    _$hash = $jc(_$hash, lastError.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, targetRef.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, lastAppliedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalBinding')
          ..add('streamId', streamId)
          ..add('target', target)
          ..add('config', config)
          ..add('filter', filter)
          ..add('enabled', enabled)
          ..add('backfill', backfill)
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('manifestSha256', manifestSha256)
          ..add('state', state)
          ..add('applied', applied)
          ..add('lastError', lastError)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt)
          ..add('targetRef', targetRef)
          ..add('updatedAt', updatedAt)
          ..add('lastAppliedAt', lastAppliedAt))
        .toString();
  }
}

class ExternalBindingBuilder
    implements Builder<ExternalBinding, ExternalBindingBuilder> {
  _$ExternalBinding? _$v;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  ExternalBindingTargetEnum? _target;
  ExternalBindingTargetEnum? get target => _$this._target;
  set target(ExternalBindingTargetEnum? target) => _$this._target = target;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ListBuilder<BuiltMap<String, JsonObject?>>? _filter;
  ListBuilder<BuiltMap<String, JsonObject?>> get filter =>
      _$this._filter ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set filter(ListBuilder<BuiltMap<String, JsonObject?>>? filter) =>
      _$this._filter = filter;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _backfill;
  bool? get backfill => _$this._backfill;
  set backfill(bool? backfill) => _$this._backfill = backfill;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _manifestSha256;
  String? get manifestSha256 => _$this._manifestSha256;
  set manifestSha256(String? manifestSha256) =>
      _$this._manifestSha256 = manifestSha256;

  ExternalBindingStateEnum? _state;
  ExternalBindingStateEnum? get state => _$this._state;
  set state(ExternalBindingStateEnum? state) => _$this._state = state;

  int? _applied;
  int? get applied => _$this._applied;
  set applied(int? applied) => _$this._applied = applied;

  String? _lastError;
  String? get lastError => _$this._lastError;
  set lastError(String? lastError) => _$this._lastError = lastError;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _targetRef;
  String? get targetRef => _$this._targetRef;
  set targetRef(String? targetRef) => _$this._targetRef = targetRef;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _lastAppliedAt;
  DateTime? get lastAppliedAt => _$this._lastAppliedAt;
  set lastAppliedAt(DateTime? lastAppliedAt) =>
      _$this._lastAppliedAt = lastAppliedAt;

  ExternalBindingBuilder() {
    ExternalBinding._defaults(this);
  }

  ExternalBindingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _target = $v.target;
      _config = $v.config?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _enabled = $v.enabled;
      _backfill = $v.backfill;
      _id = $v.id;
      _sourceId = $v.sourceId;
      _manifestSha256 = $v.manifestSha256;
      _state = $v.state;
      _applied = $v.applied;
      _lastError = $v.lastError;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _targetRef = $v.targetRef;
      _updatedAt = $v.updatedAt;
      _lastAppliedAt = $v.lastAppliedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalBinding other) {
    _$v = other as _$ExternalBinding;
  }

  @override
  void update(void Function(ExternalBindingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalBinding build() => _build();

  _$ExternalBinding _build() {
    _$ExternalBinding _$result;
    try {
      _$result = _$v ??
          _$ExternalBinding._(
            streamId: BuiltValueNullFieldError.checkNotNull(
                streamId, r'ExternalBinding', 'streamId'),
            target: BuiltValueNullFieldError.checkNotNull(
                target, r'ExternalBinding', 'target'),
            config: _config?.build(),
            filter: _filter?.build(),
            enabled: enabled,
            backfill: backfill,
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ExternalBinding', 'id'),
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'ExternalBinding', 'sourceId'),
            manifestSha256: manifestSha256,
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'ExternalBinding', 'state'),
            applied: applied,
            lastError: lastError,
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ExternalBinding', 'createdAt'),
            targetRef: targetRef,
            updatedAt: updatedAt,
            lastAppliedAt: lastAppliedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExternalBinding', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
