// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_link_scores.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLinkScores extends ChronicleLinkScores {
  @override
  final ChronicleLinkScoresEvidence? evidence;
  @override
  final ChronicleLinkScoresEvidence? entities;
  @override
  final ChronicleLinkScoresEvidence? areaTime;
  @override
  final ChronicleLinkScoresEvidence? topics;

  factory _$ChronicleLinkScores(
          [void Function(ChronicleLinkScoresBuilder)? updates]) =>
      (ChronicleLinkScoresBuilder()..update(updates))._build();

  _$ChronicleLinkScores._(
      {this.evidence, this.entities, this.areaTime, this.topics})
      : super._();
  @override
  ChronicleLinkScores rebuild(
          void Function(ChronicleLinkScoresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleLinkScoresBuilder toBuilder() =>
      ChronicleLinkScoresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLinkScores &&
        evidence == other.evidence &&
        entities == other.entities &&
        areaTime == other.areaTime &&
        topics == other.topics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evidence.hashCode);
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jc(_$hash, areaTime.hashCode);
    _$hash = $jc(_$hash, topics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLinkScores')
          ..add('evidence', evidence)
          ..add('entities', entities)
          ..add('areaTime', areaTime)
          ..add('topics', topics))
        .toString();
  }
}

class ChronicleLinkScoresBuilder
    implements Builder<ChronicleLinkScores, ChronicleLinkScoresBuilder> {
  _$ChronicleLinkScores? _$v;

  ChronicleLinkScoresEvidenceBuilder? _evidence;
  ChronicleLinkScoresEvidenceBuilder get evidence =>
      _$this._evidence ??= ChronicleLinkScoresEvidenceBuilder();
  set evidence(ChronicleLinkScoresEvidenceBuilder? evidence) =>
      _$this._evidence = evidence;

  ChronicleLinkScoresEvidenceBuilder? _entities;
  ChronicleLinkScoresEvidenceBuilder get entities =>
      _$this._entities ??= ChronicleLinkScoresEvidenceBuilder();
  set entities(ChronicleLinkScoresEvidenceBuilder? entities) =>
      _$this._entities = entities;

  ChronicleLinkScoresEvidenceBuilder? _areaTime;
  ChronicleLinkScoresEvidenceBuilder get areaTime =>
      _$this._areaTime ??= ChronicleLinkScoresEvidenceBuilder();
  set areaTime(ChronicleLinkScoresEvidenceBuilder? areaTime) =>
      _$this._areaTime = areaTime;

  ChronicleLinkScoresEvidenceBuilder? _topics;
  ChronicleLinkScoresEvidenceBuilder get topics =>
      _$this._topics ??= ChronicleLinkScoresEvidenceBuilder();
  set topics(ChronicleLinkScoresEvidenceBuilder? topics) =>
      _$this._topics = topics;

  ChronicleLinkScoresBuilder() {
    ChronicleLinkScores._defaults(this);
  }

  ChronicleLinkScoresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evidence = $v.evidence?.toBuilder();
      _entities = $v.entities?.toBuilder();
      _areaTime = $v.areaTime?.toBuilder();
      _topics = $v.topics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLinkScores other) {
    _$v = other as _$ChronicleLinkScores;
  }

  @override
  void update(void Function(ChronicleLinkScoresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLinkScores build() => _build();

  _$ChronicleLinkScores _build() {
    _$ChronicleLinkScores _$result;
    try {
      _$result = _$v ??
          _$ChronicleLinkScores._(
            evidence: _evidence?.build(),
            entities: _entities?.build(),
            areaTime: _areaTime?.build(),
            topics: _topics?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'evidence';
        _evidence?.build();
        _$failedField = 'entities';
        _entities?.build();
        _$failedField = 'areaTime';
        _areaTime?.build();
        _$failedField = 'topics';
        _topics?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleLinkScores', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
