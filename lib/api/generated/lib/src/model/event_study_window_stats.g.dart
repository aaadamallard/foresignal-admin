// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_window_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyWindowStats extends EventStudyWindowStats {
  @override
  final BuiltList<int> window;
  @override
  final num? caar;
  @override
  final num? standardisedZ;
  @override
  final num? standardisedP;
  @override
  final num? corradoStat;
  @override
  final num? corradoP;
  @override
  final num? placeboP;
  @override
  final EventStudyWindowStatsPlacebo? placebo;

  factory _$EventStudyWindowStats(
          [void Function(EventStudyWindowStatsBuilder)? updates]) =>
      (EventStudyWindowStatsBuilder()..update(updates))._build();

  _$EventStudyWindowStats._(
      {required this.window,
      this.caar,
      this.standardisedZ,
      this.standardisedP,
      this.corradoStat,
      this.corradoP,
      this.placeboP,
      this.placebo})
      : super._();
  @override
  EventStudyWindowStats rebuild(
          void Function(EventStudyWindowStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyWindowStatsBuilder toBuilder() =>
      EventStudyWindowStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyWindowStats &&
        window == other.window &&
        caar == other.caar &&
        standardisedZ == other.standardisedZ &&
        standardisedP == other.standardisedP &&
        corradoStat == other.corradoStat &&
        corradoP == other.corradoP &&
        placeboP == other.placeboP &&
        placebo == other.placebo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, caar.hashCode);
    _$hash = $jc(_$hash, standardisedZ.hashCode);
    _$hash = $jc(_$hash, standardisedP.hashCode);
    _$hash = $jc(_$hash, corradoStat.hashCode);
    _$hash = $jc(_$hash, corradoP.hashCode);
    _$hash = $jc(_$hash, placeboP.hashCode);
    _$hash = $jc(_$hash, placebo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyWindowStats')
          ..add('window', window)
          ..add('caar', caar)
          ..add('standardisedZ', standardisedZ)
          ..add('standardisedP', standardisedP)
          ..add('corradoStat', corradoStat)
          ..add('corradoP', corradoP)
          ..add('placeboP', placeboP)
          ..add('placebo', placebo))
        .toString();
  }
}

class EventStudyWindowStatsBuilder
    implements Builder<EventStudyWindowStats, EventStudyWindowStatsBuilder> {
  _$EventStudyWindowStats? _$v;

  ListBuilder<int>? _window;
  ListBuilder<int> get window => _$this._window ??= ListBuilder<int>();
  set window(ListBuilder<int>? window) => _$this._window = window;

  num? _caar;
  num? get caar => _$this._caar;
  set caar(num? caar) => _$this._caar = caar;

  num? _standardisedZ;
  num? get standardisedZ => _$this._standardisedZ;
  set standardisedZ(num? standardisedZ) =>
      _$this._standardisedZ = standardisedZ;

  num? _standardisedP;
  num? get standardisedP => _$this._standardisedP;
  set standardisedP(num? standardisedP) =>
      _$this._standardisedP = standardisedP;

  num? _corradoStat;
  num? get corradoStat => _$this._corradoStat;
  set corradoStat(num? corradoStat) => _$this._corradoStat = corradoStat;

  num? _corradoP;
  num? get corradoP => _$this._corradoP;
  set corradoP(num? corradoP) => _$this._corradoP = corradoP;

  num? _placeboP;
  num? get placeboP => _$this._placeboP;
  set placeboP(num? placeboP) => _$this._placeboP = placeboP;

  EventStudyWindowStatsPlaceboBuilder? _placebo;
  EventStudyWindowStatsPlaceboBuilder get placebo =>
      _$this._placebo ??= EventStudyWindowStatsPlaceboBuilder();
  set placebo(EventStudyWindowStatsPlaceboBuilder? placebo) =>
      _$this._placebo = placebo;

  EventStudyWindowStatsBuilder() {
    EventStudyWindowStats._defaults(this);
  }

  EventStudyWindowStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window.toBuilder();
      _caar = $v.caar;
      _standardisedZ = $v.standardisedZ;
      _standardisedP = $v.standardisedP;
      _corradoStat = $v.corradoStat;
      _corradoP = $v.corradoP;
      _placeboP = $v.placeboP;
      _placebo = $v.placebo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyWindowStats other) {
    _$v = other as _$EventStudyWindowStats;
  }

  @override
  void update(void Function(EventStudyWindowStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyWindowStats build() => _build();

  _$EventStudyWindowStats _build() {
    _$EventStudyWindowStats _$result;
    try {
      _$result = _$v ??
          _$EventStudyWindowStats._(
            window: window.build(),
            caar: caar,
            standardisedZ: standardisedZ,
            standardisedP: standardisedP,
            corradoStat: corradoStat,
            corradoP: corradoP,
            placeboP: placeboP,
            placebo: _placebo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'window';
        window.build();

        _$failedField = 'placebo';
        _placebo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EventStudyWindowStats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
