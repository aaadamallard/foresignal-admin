// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_ingest_result_dropped.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederationIngestResultDropped extends FederationIngestResultDropped {
  @override
  final int? loop;
  @override
  final int? hops;
  @override
  final int? dedup;
  @override
  final int? licence;
  @override
  final int? private;
  @override
  final int? exercise;
  @override
  final int? expired;
  @override
  final int? selection;

  factory _$FederationIngestResultDropped([
    void Function(FederationIngestResultDroppedBuilder)? updates,
  ]) => (FederationIngestResultDroppedBuilder()..update(updates))._build();

  _$FederationIngestResultDropped._({
    this.loop,
    this.hops,
    this.dedup,
    this.licence,
    this.private,
    this.exercise,
    this.expired,
    this.selection,
  }) : super._();
  @override
  FederationIngestResultDropped rebuild(
    void Function(FederationIngestResultDroppedBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FederationIngestResultDroppedBuilder toBuilder() =>
      FederationIngestResultDroppedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationIngestResultDropped &&
        loop == other.loop &&
        hops == other.hops &&
        dedup == other.dedup &&
        licence == other.licence &&
        private == other.private &&
        exercise == other.exercise &&
        expired == other.expired &&
        selection == other.selection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loop.hashCode);
    _$hash = $jc(_$hash, hops.hashCode);
    _$hash = $jc(_$hash, dedup.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, exercise.hashCode);
    _$hash = $jc(_$hash, expired.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationIngestResultDropped')
          ..add('loop', loop)
          ..add('hops', hops)
          ..add('dedup', dedup)
          ..add('licence', licence)
          ..add('private', private)
          ..add('exercise', exercise)
          ..add('expired', expired)
          ..add('selection', selection))
        .toString();
  }
}

class FederationIngestResultDroppedBuilder
    implements
        Builder<
          FederationIngestResultDropped,
          FederationIngestResultDroppedBuilder
        > {
  _$FederationIngestResultDropped? _$v;

  int? _loop;
  int? get loop => _$this._loop;
  set loop(int? loop) => _$this._loop = loop;

  int? _hops;
  int? get hops => _$this._hops;
  set hops(int? hops) => _$this._hops = hops;

  int? _dedup;
  int? get dedup => _$this._dedup;
  set dedup(int? dedup) => _$this._dedup = dedup;

  int? _licence;
  int? get licence => _$this._licence;
  set licence(int? licence) => _$this._licence = licence;

  int? _private;
  int? get private => _$this._private;
  set private(int? private) => _$this._private = private;

  int? _exercise;
  int? get exercise => _$this._exercise;
  set exercise(int? exercise) => _$this._exercise = exercise;

  int? _expired;
  int? get expired => _$this._expired;
  set expired(int? expired) => _$this._expired = expired;

  int? _selection;
  int? get selection => _$this._selection;
  set selection(int? selection) => _$this._selection = selection;

  FederationIngestResultDroppedBuilder() {
    FederationIngestResultDropped._defaults(this);
  }

  FederationIngestResultDroppedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loop = $v.loop;
      _hops = $v.hops;
      _dedup = $v.dedup;
      _licence = $v.licence;
      _private = $v.private;
      _exercise = $v.exercise;
      _expired = $v.expired;
      _selection = $v.selection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationIngestResultDropped other) {
    _$v = other as _$FederationIngestResultDropped;
  }

  @override
  void update(void Function(FederationIngestResultDroppedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationIngestResultDropped build() => _build();

  _$FederationIngestResultDropped _build() {
    final _$result =
        _$v ??
        _$FederationIngestResultDropped._(
          loop: loop,
          hops: hops,
          dedup: dedup,
          licence: licence,
          private: private,
          exercise: exercise,
          expired: expired,
          selection: selection,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
