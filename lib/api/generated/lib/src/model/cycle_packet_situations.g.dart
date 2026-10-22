// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_situations.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketSituations extends CyclePacketSituations {
  @override
  final BuiltList<CyclePacketItem>? new_;
  @override
  final BuiltList<CyclePacketItem>? activated;
  @override
  final BuiltList<CyclePacketItem>? escalated;
  @override
  final BuiltList<CyclePacketItem>? dormant;
  @override
  final BuiltList<CyclePacketItem>? closed;

  factory _$CyclePacketSituations(
          [void Function(CyclePacketSituationsBuilder)? updates]) =>
      (CyclePacketSituationsBuilder()..update(updates))._build();

  _$CyclePacketSituations._(
      {this.new_, this.activated, this.escalated, this.dormant, this.closed})
      : super._();
  @override
  CyclePacketSituations rebuild(
          void Function(CyclePacketSituationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CyclePacketSituationsBuilder toBuilder() =>
      CyclePacketSituationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketSituations &&
        new_ == other.new_ &&
        activated == other.activated &&
        escalated == other.escalated &&
        dormant == other.dormant &&
        closed == other.closed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, new_.hashCode);
    _$hash = $jc(_$hash, activated.hashCode);
    _$hash = $jc(_$hash, escalated.hashCode);
    _$hash = $jc(_$hash, dormant.hashCode);
    _$hash = $jc(_$hash, closed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketSituations')
          ..add('new_', new_)
          ..add('activated', activated)
          ..add('escalated', escalated)
          ..add('dormant', dormant)
          ..add('closed', closed))
        .toString();
  }
}

class CyclePacketSituationsBuilder
    implements Builder<CyclePacketSituations, CyclePacketSituationsBuilder> {
  _$CyclePacketSituations? _$v;

  ListBuilder<CyclePacketItem>? _new_;
  ListBuilder<CyclePacketItem> get new_ =>
      _$this._new_ ??= ListBuilder<CyclePacketItem>();
  set new_(ListBuilder<CyclePacketItem>? new_) => _$this._new_ = new_;

  ListBuilder<CyclePacketItem>? _activated;
  ListBuilder<CyclePacketItem> get activated =>
      _$this._activated ??= ListBuilder<CyclePacketItem>();
  set activated(ListBuilder<CyclePacketItem>? activated) =>
      _$this._activated = activated;

  ListBuilder<CyclePacketItem>? _escalated;
  ListBuilder<CyclePacketItem> get escalated =>
      _$this._escalated ??= ListBuilder<CyclePacketItem>();
  set escalated(ListBuilder<CyclePacketItem>? escalated) =>
      _$this._escalated = escalated;

  ListBuilder<CyclePacketItem>? _dormant;
  ListBuilder<CyclePacketItem> get dormant =>
      _$this._dormant ??= ListBuilder<CyclePacketItem>();
  set dormant(ListBuilder<CyclePacketItem>? dormant) =>
      _$this._dormant = dormant;

  ListBuilder<CyclePacketItem>? _closed;
  ListBuilder<CyclePacketItem> get closed =>
      _$this._closed ??= ListBuilder<CyclePacketItem>();
  set closed(ListBuilder<CyclePacketItem>? closed) => _$this._closed = closed;

  CyclePacketSituationsBuilder() {
    CyclePacketSituations._defaults(this);
  }

  CyclePacketSituationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _new_ = $v.new_?.toBuilder();
      _activated = $v.activated?.toBuilder();
      _escalated = $v.escalated?.toBuilder();
      _dormant = $v.dormant?.toBuilder();
      _closed = $v.closed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketSituations other) {
    _$v = other as _$CyclePacketSituations;
  }

  @override
  void update(void Function(CyclePacketSituationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketSituations build() => _build();

  _$CyclePacketSituations _build() {
    _$CyclePacketSituations _$result;
    try {
      _$result = _$v ??
          _$CyclePacketSituations._(
            new_: _new_?.build(),
            activated: _activated?.build(),
            escalated: _escalated?.build(),
            dormant: _dormant?.build(),
            closed: _closed?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'new_';
        _new_?.build();
        _$failedField = 'activated';
        _activated?.build();
        _$failedField = 'escalated';
        _escalated?.build();
        _$failedField = 'dormant';
        _dormant?.build();
        _$failedField = 'closed';
        _closed?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CyclePacketSituations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
