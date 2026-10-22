// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_count_entities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestCountEntities extends DigestCountEntities {
  @override
  final int? new_;
  @override
  final int? changed;
  @override
  final int? removed;
  @override
  final int? edges;

  factory _$DigestCountEntities([
    void Function(DigestCountEntitiesBuilder)? updates,
  ]) => (DigestCountEntitiesBuilder()..update(updates))._build();

  _$DigestCountEntities._({this.new_, this.changed, this.removed, this.edges})
    : super._();
  @override
  DigestCountEntities rebuild(
    void Function(DigestCountEntitiesBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DigestCountEntitiesBuilder toBuilder() =>
      DigestCountEntitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestCountEntities &&
        new_ == other.new_ &&
        changed == other.changed &&
        removed == other.removed &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, new_.hashCode);
    _$hash = $jc(_$hash, changed.hashCode);
    _$hash = $jc(_$hash, removed.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestCountEntities')
          ..add('new_', new_)
          ..add('changed', changed)
          ..add('removed', removed)
          ..add('edges', edges))
        .toString();
  }
}

class DigestCountEntitiesBuilder
    implements Builder<DigestCountEntities, DigestCountEntitiesBuilder> {
  _$DigestCountEntities? _$v;

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

  DigestCountEntitiesBuilder() {
    DigestCountEntities._defaults(this);
  }

  DigestCountEntitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _new_ = $v.new_;
      _changed = $v.changed;
      _removed = $v.removed;
      _edges = $v.edges;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestCountEntities other) {
    _$v = other as _$DigestCountEntities;
  }

  @override
  void update(void Function(DigestCountEntitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestCountEntities build() => _build();

  _$DigestCountEntities _build() {
    final _$result =
        _$v ??
        _$DigestCountEntities._(
          new_: new_,
          changed: changed,
          removed: removed,
          edges: edges,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
