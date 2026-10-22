// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_join_reason_components.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationJoinReasonComponents extends SituationJoinReasonComponents {
  @override
  final num? region;
  @override
  final num? distanceKm;
  @override
  final num? entity;
  @override
  final num? topic;
  @override
  final num? textSimilarity;
  @override
  final num? theme;
  @override
  final num? recencyHours;

  factory _$SituationJoinReasonComponents([
    void Function(SituationJoinReasonComponentsBuilder)? updates,
  ]) => (SituationJoinReasonComponentsBuilder()..update(updates))._build();

  _$SituationJoinReasonComponents._({
    this.region,
    this.distanceKm,
    this.entity,
    this.topic,
    this.textSimilarity,
    this.theme,
    this.recencyHours,
  }) : super._();
  @override
  SituationJoinReasonComponents rebuild(
    void Function(SituationJoinReasonComponentsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationJoinReasonComponentsBuilder toBuilder() =>
      SituationJoinReasonComponentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationJoinReasonComponents &&
        region == other.region &&
        distanceKm == other.distanceKm &&
        entity == other.entity &&
        topic == other.topic &&
        textSimilarity == other.textSimilarity &&
        theme == other.theme &&
        recencyHours == other.recencyHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, entity.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, textSimilarity.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, recencyHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationJoinReasonComponents')
          ..add('region', region)
          ..add('distanceKm', distanceKm)
          ..add('entity', entity)
          ..add('topic', topic)
          ..add('textSimilarity', textSimilarity)
          ..add('theme', theme)
          ..add('recencyHours', recencyHours))
        .toString();
  }
}

class SituationJoinReasonComponentsBuilder
    implements
        Builder<
          SituationJoinReasonComponents,
          SituationJoinReasonComponentsBuilder
        > {
  _$SituationJoinReasonComponents? _$v;

  num? _region;
  num? get region => _$this._region;
  set region(num? region) => _$this._region = region;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  num? _entity;
  num? get entity => _$this._entity;
  set entity(num? entity) => _$this._entity = entity;

  num? _topic;
  num? get topic => _$this._topic;
  set topic(num? topic) => _$this._topic = topic;

  num? _textSimilarity;
  num? get textSimilarity => _$this._textSimilarity;
  set textSimilarity(num? textSimilarity) =>
      _$this._textSimilarity = textSimilarity;

  num? _theme;
  num? get theme => _$this._theme;
  set theme(num? theme) => _$this._theme = theme;

  num? _recencyHours;
  num? get recencyHours => _$this._recencyHours;
  set recencyHours(num? recencyHours) => _$this._recencyHours = recencyHours;

  SituationJoinReasonComponentsBuilder() {
    SituationJoinReasonComponents._defaults(this);
  }

  SituationJoinReasonComponentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _distanceKm = $v.distanceKm;
      _entity = $v.entity;
      _topic = $v.topic;
      _textSimilarity = $v.textSimilarity;
      _theme = $v.theme;
      _recencyHours = $v.recencyHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationJoinReasonComponents other) {
    _$v = other as _$SituationJoinReasonComponents;
  }

  @override
  void update(void Function(SituationJoinReasonComponentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationJoinReasonComponents build() => _build();

  _$SituationJoinReasonComponents _build() {
    final _$result =
        _$v ??
        _$SituationJoinReasonComponents._(
          region: region,
          distanceKm: distanceKm,
          entity: entity,
          topic: topic,
          textSimilarity: textSimilarity,
          theme: theme,
          recencyHours: recencyHours,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
