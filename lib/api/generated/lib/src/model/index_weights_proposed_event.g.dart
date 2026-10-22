// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_weights_proposed_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndexWeightsProposedEvent extends IndexWeightsProposedEvent {
  @override
  final String indexId;
  @override
  final String fitId;
  @override
  final int weightsVersion;
  @override
  final BuiltMap<String, num> proposedWeights;
  @override
  final RegionalIndexDefSkill? skill;
  @override
  final bool? autoApplied;

  factory _$IndexWeightsProposedEvent(
          [void Function(IndexWeightsProposedEventBuilder)? updates]) =>
      (IndexWeightsProposedEventBuilder()..update(updates))._build();

  _$IndexWeightsProposedEvent._(
      {required this.indexId,
      required this.fitId,
      required this.weightsVersion,
      required this.proposedWeights,
      this.skill,
      this.autoApplied})
      : super._();
  @override
  IndexWeightsProposedEvent rebuild(
          void Function(IndexWeightsProposedEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndexWeightsProposedEventBuilder toBuilder() =>
      IndexWeightsProposedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndexWeightsProposedEvent &&
        indexId == other.indexId &&
        fitId == other.fitId &&
        weightsVersion == other.weightsVersion &&
        proposedWeights == other.proposedWeights &&
        skill == other.skill &&
        autoApplied == other.autoApplied;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, indexId.hashCode);
    _$hash = $jc(_$hash, fitId.hashCode);
    _$hash = $jc(_$hash, weightsVersion.hashCode);
    _$hash = $jc(_$hash, proposedWeights.hashCode);
    _$hash = $jc(_$hash, skill.hashCode);
    _$hash = $jc(_$hash, autoApplied.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndexWeightsProposedEvent')
          ..add('indexId', indexId)
          ..add('fitId', fitId)
          ..add('weightsVersion', weightsVersion)
          ..add('proposedWeights', proposedWeights)
          ..add('skill', skill)
          ..add('autoApplied', autoApplied))
        .toString();
  }
}

class IndexWeightsProposedEventBuilder
    implements
        Builder<IndexWeightsProposedEvent, IndexWeightsProposedEventBuilder> {
  _$IndexWeightsProposedEvent? _$v;

  String? _indexId;
  String? get indexId => _$this._indexId;
  set indexId(String? indexId) => _$this._indexId = indexId;

  String? _fitId;
  String? get fitId => _$this._fitId;
  set fitId(String? fitId) => _$this._fitId = fitId;

  int? _weightsVersion;
  int? get weightsVersion => _$this._weightsVersion;
  set weightsVersion(int? weightsVersion) =>
      _$this._weightsVersion = weightsVersion;

  MapBuilder<String, num>? _proposedWeights;
  MapBuilder<String, num> get proposedWeights =>
      _$this._proposedWeights ??= MapBuilder<String, num>();
  set proposedWeights(MapBuilder<String, num>? proposedWeights) =>
      _$this._proposedWeights = proposedWeights;

  RegionalIndexDefSkillBuilder? _skill;
  RegionalIndexDefSkillBuilder get skill =>
      _$this._skill ??= RegionalIndexDefSkillBuilder();
  set skill(RegionalIndexDefSkillBuilder? skill) => _$this._skill = skill;

  bool? _autoApplied;
  bool? get autoApplied => _$this._autoApplied;
  set autoApplied(bool? autoApplied) => _$this._autoApplied = autoApplied;

  IndexWeightsProposedEventBuilder() {
    IndexWeightsProposedEvent._defaults(this);
  }

  IndexWeightsProposedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _indexId = $v.indexId;
      _fitId = $v.fitId;
      _weightsVersion = $v.weightsVersion;
      _proposedWeights = $v.proposedWeights.toBuilder();
      _skill = $v.skill?.toBuilder();
      _autoApplied = $v.autoApplied;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndexWeightsProposedEvent other) {
    _$v = other as _$IndexWeightsProposedEvent;
  }

  @override
  void update(void Function(IndexWeightsProposedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndexWeightsProposedEvent build() => _build();

  _$IndexWeightsProposedEvent _build() {
    _$IndexWeightsProposedEvent _$result;
    try {
      _$result = _$v ??
          _$IndexWeightsProposedEvent._(
            indexId: BuiltValueNullFieldError.checkNotNull(
                indexId, r'IndexWeightsProposedEvent', 'indexId'),
            fitId: BuiltValueNullFieldError.checkNotNull(
                fitId, r'IndexWeightsProposedEvent', 'fitId'),
            weightsVersion: BuiltValueNullFieldError.checkNotNull(
                weightsVersion, r'IndexWeightsProposedEvent', 'weightsVersion'),
            proposedWeights: proposedWeights.build(),
            skill: _skill?.build(),
            autoApplied: autoApplied,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'proposedWeights';
        proposedWeights.build();
        _$failedField = 'skill';
        _skill?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndexWeightsProposedEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
