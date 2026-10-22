// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_fit_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IndexFitResultStatusEnum _$indexFitResultStatusEnum_queued =
    const IndexFitResultStatusEnum._('queued');
const IndexFitResultStatusEnum _$indexFitResultStatusEnum_running =
    const IndexFitResultStatusEnum._('running');
const IndexFitResultStatusEnum _$indexFitResultStatusEnum_done =
    const IndexFitResultStatusEnum._('done');
const IndexFitResultStatusEnum _$indexFitResultStatusEnum_failed =
    const IndexFitResultStatusEnum._('failed');

IndexFitResultStatusEnum _$indexFitResultStatusEnumValueOf(String name) {
  switch (name) {
    case 'queued':
      return _$indexFitResultStatusEnum_queued;
    case 'running':
      return _$indexFitResultStatusEnum_running;
    case 'done':
      return _$indexFitResultStatusEnum_done;
    case 'failed':
      return _$indexFitResultStatusEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IndexFitResultStatusEnum> _$indexFitResultStatusEnumValues =
    BuiltSet<IndexFitResultStatusEnum>(const <IndexFitResultStatusEnum>[
  _$indexFitResultStatusEnum_queued,
  _$indexFitResultStatusEnum_running,
  _$indexFitResultStatusEnum_done,
  _$indexFitResultStatusEnum_failed,
]);

Serializer<IndexFitResultStatusEnum> _$indexFitResultStatusEnumSerializer =
    _$IndexFitResultStatusEnumSerializer();

class _$IndexFitResultStatusEnumSerializer
    implements PrimitiveSerializer<IndexFitResultStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'queued': 'queued',
    'running': 'running',
    'done': 'done',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[IndexFitResultStatusEnum];
  @override
  final String wireName = 'IndexFitResultStatusEnum';

  @override
  Object serialize(Serializers serializers, IndexFitResultStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IndexFitResultStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IndexFitResultStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IndexFitResult extends IndexFitResult {
  @override
  final String id;
  @override
  final String indexId;
  @override
  final IndexFitResultStatusEnum status;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? method;
  @override
  final num? lambda;
  @override
  final int? regions;
  @override
  final int? origins;
  @override
  final JsonObject? proposedWeights;
  @override
  final int? weightsVersion;
  @override
  final RegionalIndexDefSkill? skill;
  @override
  final BuiltList<IndexFitResultComponentsInner>? components;
  @override
  final bool? applied;
  @override
  final DateTime? appliedAt;
  @override
  final String? manifestId;
  @override
  final String? error;

  factory _$IndexFitResult([void Function(IndexFitResultBuilder)? updates]) =>
      (IndexFitResultBuilder()..update(updates))._build();

  _$IndexFitResult._(
      {required this.id,
      required this.indexId,
      required this.status,
      this.startedAt,
      this.finishedAt,
      this.method,
      this.lambda,
      this.regions,
      this.origins,
      this.proposedWeights,
      this.weightsVersion,
      this.skill,
      this.components,
      this.applied,
      this.appliedAt,
      this.manifestId,
      this.error})
      : super._();
  @override
  IndexFitResult rebuild(void Function(IndexFitResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexFitResultBuilder toBuilder() => IndexFitResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexFitResult &&
        id == other.id &&
        indexId == other.indexId &&
        status == other.status &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt &&
        method == other.method &&
        lambda == other.lambda &&
        regions == other.regions &&
        origins == other.origins &&
        proposedWeights == other.proposedWeights &&
        weightsVersion == other.weightsVersion &&
        skill == other.skill &&
        components == other.components &&
        applied == other.applied &&
        appliedAt == other.appliedAt &&
        manifestId == other.manifestId &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, indexId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, lambda.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jc(_$hash, origins.hashCode);
    _$hash = $jc(_$hash, proposedWeights.hashCode);
    _$hash = $jc(_$hash, weightsVersion.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, applied.hashCode);
    _$hash = $jc(_$hash, appliedAt.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexFitResult')
          ..add('id', id)
          ..add('indexId', indexId)
          ..add('status', status)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt)
          ..add('method', method)
          ..add('lambda', lambda)
          ..add('regions', regions)
          ..add('origins', origins)
          ..add('proposedWeights', proposedWeights)
          ..add('weightsVersion', weightsVersion)
          ..add('skill', skill)
          ..add('components', components)
          ..add('applied', applied)
          ..add('appliedAt', appliedAt)
          ..add('manifestId', manifestId)
          ..add('error', error))
        .toString();
  }
}

class IndexFitResultBuilder
    implements Builder<IndexFitResult, IndexFitResultBuilder> {
  _$IndexFitResult? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _indexId;
  String? get indexId => _$this._indexId;
  set indexId(String? indexId) => _$this._indexId = indexId;

  IndexFitResultStatusEnum? _status;
  IndexFitResultStatusEnum? get status => _$this._status;
  set status(IndexFitResultStatusEnum? status) => _$this._status = status;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _finishedAt;
  DateTime? get finishedAt => _$this._finishedAt;
  set finishedAt(DateTime? finishedAt) => _$this._finishedAt = finishedAt;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  num? _lambda;
  num? get lambda => _$this._lambda;
  set lambda(num? lambda) => _$this._lambda = lambda;

  int? _regions;
  int? get regions => _$this._regions;
  set regions(int? regions) => _$this._regions = regions;

  int? _origins;
  int? get origins => _$this._origins;
  set origins(int? origins) => _$this._origins = origins;

  JsonObject? _proposedWeights;
  JsonObject? get proposedWeights => _$this._proposedWeights;
  set proposedWeights(JsonObject? proposedWeights) =>
      _$this._proposedWeights = proposedWeights;

  int? _weightsVersion;
  int? get weightsVersion => _$this._weightsVersion;
  set weightsVersion(int? weightsVersion) =>
      _$this._weightsVersion = weightsVersion;

  RegionalIndexDefSkillBuilder? _skill;
  RegionalIndexDefSkillBuilder get skill =>
      _$this._skill ??= RegionalIndexDefSkillBuilder();
  set skill(RegionalIndexDefSkillBuilder? skill) => _$this._skill = skill;

  ListBuilder<IndexFitResultComponentsInner>? _components;
  ListBuilder<IndexFitResultComponentsInner> get components =>
      _$this._components ??= ListBuilder<IndexFitResultComponentsInner>();
  set components(ListBuilder<IndexFitResultComponentsInner>? components) =>
      _$this._components = components;

  bool? _applied;
  bool? get applied => _$this._applied;
  set applied(bool? applied) => _$this._applied = applied;

  DateTime? _appliedAt;
  DateTime? get appliedAt => _$this._appliedAt;
  set appliedAt(DateTime? appliedAt) => _$this._appliedAt = appliedAt;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  IndexFitResultBuilder() {
    IndexFitResult._defaults(this);
  }

  IndexFitResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _indexId = $v.indexId;
      _status = $v.status;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _method = $v.method;
      _lambda = $v.lambda;
      _regions = $v.regions;
      _origins = $v.origins;
      _proposedWeights = $v.proposedWeights;
      _weightsVersion = $v.weightsVersion;
      _skill = $v.skill?.toBuilder();
      _components = $v.components?.toBuilder();
      _applied = $v.applied;
      _appliedAt = $v.appliedAt;
      _manifestId = $v.manifestId;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexFitResult other) {
    _$v = other as _$IndexFitResult;
  }

  @override
  void update(void Function(IndexFitResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexFitResult build() => _build();

  _$IndexFitResult _build() {
    _$IndexFitResult _$result;
    try {
      _$result = _$v ??
          _$IndexFitResult._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'IndexFitResult', 'id'),
            indexId: BuiltValueNullFieldError.checkNotNull(
                indexId, r'IndexFitResult', 'indexId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'IndexFitResult', 'status'),
            startedAt: startedAt,
            finishedAt: finishedAt,
            method: method,
            lambda: lambda,
            regions: regions,
            origins: origins,
            proposedWeights: proposedWeights,
            weightsVersion: weightsVersion,
            skill: _skill?.build(),
            components: _components?.build(),
            applied: applied,
            appliedAt: appliedAt,
            manifestId: manifestId,
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'skill';
        _skill?.build();
        _$failedField = 'components';
        _components?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndexFitResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
