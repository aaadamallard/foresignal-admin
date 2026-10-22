// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precursor_window_stats_reverse.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrecursorWindowStatsReverse extends PrecursorWindowStatsReverse {
  @override
  final num? p;
  @override
  final num? statistic;
  @override
  final bool coMovement;

  factory _$PrecursorWindowStatsReverse(
          [void Function(PrecursorWindowStatsReverseBuilder)? updates]) =>
      (PrecursorWindowStatsReverseBuilder()..update(updates))._build();

  _$PrecursorWindowStatsReverse._(
      {this.p, this.statistic, required this.coMovement})
      : super._();
  @override
  PrecursorWindowStatsReverse rebuild(
          void Function(PrecursorWindowStatsReverseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecursorWindowStatsReverseBuilder toBuilder() =>
      PrecursorWindowStatsReverseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrecursorWindowStatsReverse &&
        p == other.p &&
        statistic == other.statistic &&
        coMovement == other.coMovement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, p.hashCode);
    _$hash = $jc(_$hash, statistic.hashCode);
    _$hash = $jc(_$hash, coMovement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrecursorWindowStatsReverse')
          ..add('p', p)
          ..add('statistic', statistic)
          ..add('coMovement', coMovement))
        .toString();
  }
}

class PrecursorWindowStatsReverseBuilder
    implements
        Builder<PrecursorWindowStatsReverse,
            PrecursorWindowStatsReverseBuilder> {
  _$PrecursorWindowStatsReverse? _$v;

  num? _p;
  num? get p => _$this._p;
  set p(num? p) => _$this._p = p;

  num? _statistic;
  num? get statistic => _$this._statistic;
  set statistic(num? statistic) => _$this._statistic = statistic;

  bool? _coMovement;
  bool? get coMovement => _$this._coMovement;
  set coMovement(bool? coMovement) => _$this._coMovement = coMovement;

  PrecursorWindowStatsReverseBuilder() {
    PrecursorWindowStatsReverse._defaults(this);
  }

  PrecursorWindowStatsReverseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _p = $v.p;
      _statistic = $v.statistic;
      _coMovement = $v.coMovement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrecursorWindowStatsReverse other) {
    _$v = other as _$PrecursorWindowStatsReverse;
  }

  @override
  void update(void Function(PrecursorWindowStatsReverseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrecursorWindowStatsReverse build() => _build();

  _$PrecursorWindowStatsReverse _build() {
    final _$result = _$v ??
        _$PrecursorWindowStatsReverse._(
          p: p,
          statistic: statistic,
          coMovement: BuiltValueNullFieldError.checkNotNull(
              coMovement, r'PrecursorWindowStatsReverse', 'coMovement'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
