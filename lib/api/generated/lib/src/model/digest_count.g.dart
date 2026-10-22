// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestCount extends DigestCount {
  @override
  final String sourceId;
  @override
  final String kind;
  @override
  final int new_;
  @override
  final int changed;
  @override
  final int removed;
  @override
  final int? edges;
  @override
  final int? routine;
  @override
  final DigestCountEntities? entities;
  @override
  final BuiltMap<String, int>? byReason;
  @override
  final DigestCountPrevious? previous;

  factory _$DigestCount([void Function(DigestCountBuilder)? updates]) =>
      (DigestCountBuilder()..update(updates))._build();

  _$DigestCount._(
      {required this.sourceId,
      required this.kind,
      required this.new_,
      required this.changed,
      required this.removed,
      this.edges,
      this.routine,
      this.entities,
      this.byReason,
      this.previous})
      : super._();
  @override
  DigestCount rebuild(void Function(DigestCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestCountBuilder toBuilder() => DigestCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestCount &&
        sourceId == other.sourceId &&
        kind == other.kind &&
        new_ == other.new_ &&
        changed == other.changed &&
        removed == other.removed &&
        edges == other.edges &&
        routine == other.routine &&
        entities == other.entities &&
        byReason == other.byReason &&
        previous == other.previous;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, new_.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jc(_$hash, routine.hashCode);
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jc(_$hash, byReason.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestCount')
          ..add('sourceId', sourceId)
          ..add('kind', kind)
          ..add('new_', new_)
          ..add('changed', changed)
          ..add('removed', removed)
          ..add('edges', edges)
          ..add('routine', routine)
          ..add('entities', entities)
          ..add('byReason', byReason)
          ..add('previous', previous))
        .toString();
  }
}

class DigestCountBuilder implements Builder<DigestCount, DigestCountBuilder> {
  _$DigestCount? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _new_;
  int? get new_ => _$this._new_;
  set new_(int? new_) => _$this._new_ = new_;

  int? _changed;
  int? get changed => _$this._changed;
  set changed(int? changed) => _$this._changed = changed;

  int? _removed;
  int? get removed => _$this._removed;
  set removed(int? removed) => _$this._removed = removed;

  int? _edges;
  int? get edges => _$this._edges;
  set edges(int? edges) => _$this._edges = edges;

  int? _routine;
  int? get routine => _$this._routine;
  set routine(int? routine) => _$this._routine = routine;

  DigestCountEntitiesBuilder? _entities;
  DigestCountEntitiesBuilder get entities =>
      _$this._entities ??= DigestCountEntitiesBuilder();
  set entities(DigestCountEntitiesBuilder? entities) =>
      _$this._entities = entities;

  MapBuilder<String, int>? _byReason;
  MapBuilder<String, int> get byReason =>
      _$this._byReason ??= MapBuilder<String, int>();
  set byReason(MapBuilder<String, int>? byReason) =>
      _$this._byReason = byReason;

  DigestCountPreviousBuilder? _previous;
  DigestCountPreviousBuilder get previous =>
      _$this._previous ??= DigestCountPreviousBuilder();
  set previous(DigestCountPreviousBuilder? previous) =>
      _$this._previous = previous;

  DigestCountBuilder() {
    DigestCount._defaults(this);
  }

  DigestCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _kind = $v.kind;
      _new_ = $v.new_;
      _changed = $v.changed;
      _removed = $v.removed;
      _edges = $v.edges;
      _routine = $v.routine;
      _entities = $v.entities?.toBuilder();
      _byReason = $v.byReason?.toBuilder();
      _previous = $v.previous?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestCount other) {
    _$v = other as _$DigestCount;
  }

  @override
  void update(void Function(DigestCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestCount build() => _build();

  _$DigestCount _build() {
    _$DigestCount _$result;
    try {
      _$result = _$v ??
          _$DigestCount._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
                sourceId, r'DigestCount', 'sourceId'),
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'DigestCount', 'kind'),
            new_: BuiltValueNullFieldError.checkNotNull(
                new_, r'DigestCount', 'new_'),
            changed: BuiltValueNullFieldError.checkNotNull(
                changed, r'DigestCount', 'changed'),
            removed: BuiltValueNullFieldError.checkNotNull(
                removed, r'DigestCount', 'removed'),
            edges: edges,
            routine: routine,
            entities: _entities?.build(),
            byReason: _byReason?.build(),
            previous: _previous?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entities';
        _entities?.build();
        _$failedField = 'byReason';
        _byReason?.build();
        _$failedField = 'previous';
        _previous?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DigestCount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
