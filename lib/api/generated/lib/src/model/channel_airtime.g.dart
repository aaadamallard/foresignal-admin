// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_airtime.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChannelAirtime extends ChannelAirtime {
  @override
  final int windowSeconds;
  @override
  final num usedSeconds;
  @override
  final num limitSeconds;
  @override
  final num dutyCyclePercent;
  @override
  final int queued;
  @override
  final int foldedLastHour;
  @override
  final int droppedLastHour;

  factory _$ChannelAirtime([void Function(ChannelAirtimeBuilder)? updates]) =>
      (ChannelAirtimeBuilder()..update(updates))._build();

  _$ChannelAirtime._(
      {required this.windowSeconds,
      required this.usedSeconds,
      required this.limitSeconds,
      required this.dutyCyclePercent,
      required this.queued,
      required this.foldedLastHour,
      required this.droppedLastHour})
      : super._();
  @override
  ChannelAirtime rebuild(void Function(ChannelAirtimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChannelAirtimeBuilder toBuilder() => ChannelAirtimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChannelAirtime &&
        windowSeconds == other.windowSeconds &&
        usedSeconds == other.usedSeconds &&
        limitSeconds == other.limitSeconds &&
        dutyCyclePercent == other.dutyCyclePercent &&
        queued == other.queued &&
        foldedLastHour == other.foldedLastHour &&
        droppedLastHour == other.droppedLastHour;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, windowSeconds.hashCode);
    _$hash = $jc(_$hash, usedSeconds.hashCode);
    _$hash = $jc(_$hash, limitSeconds.hashCode);
    _$hash = $jc(_$hash, dutyCyclePercent.hashCode);
    _$hash = $jc(_$hash, queued.hashCode);
    _$hash = $jc(_$hash, foldedLastHour.hashCode);
    _$hash = $jc(_$hash, droppedLastHour.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChannelAirtime')
          ..add('windowSeconds', windowSeconds)
          ..add('usedSeconds', usedSeconds)
          ..add('limitSeconds', limitSeconds)
          ..add('dutyCyclePercent', dutyCyclePercent)
          ..add('queued', queued)
          ..add('foldedLastHour', foldedLastHour)
          ..add('droppedLastHour', droppedLastHour))
        .toString();
  }
}

class ChannelAirtimeBuilder
    implements Builder<ChannelAirtime, ChannelAirtimeBuilder> {
  _$ChannelAirtime? _$v;

  int? _windowSeconds;
  int? get windowSeconds => _$this._windowSeconds;
  set windowSeconds(int? windowSeconds) =>
      _$this._windowSeconds = windowSeconds;

  num? _usedSeconds;
  num? get usedSeconds => _$this._usedSeconds;
  set usedSeconds(num? usedSeconds) => _$this._usedSeconds = usedSeconds;

  num? _limitSeconds;
  num? get limitSeconds => _$this._limitSeconds;
  set limitSeconds(num? limitSeconds) => _$this._limitSeconds = limitSeconds;

  num? _dutyCyclePercent;
  num? get dutyCyclePercent => _$this._dutyCyclePercent;
  set dutyCyclePercent(num? dutyCyclePercent) =>
      _$this._dutyCyclePercent = dutyCyclePercent;

  int? _queued;
  int? get queued => _$this._queued;
  set queued(int? queued) => _$this._queued = queued;

  int? _foldedLastHour;
  int? get foldedLastHour => _$this._foldedLastHour;
  set foldedLastHour(int? foldedLastHour) =>
      _$this._foldedLastHour = foldedLastHour;

  int? _droppedLastHour;
  int? get droppedLastHour => _$this._droppedLastHour;
  set droppedLastHour(int? droppedLastHour) =>
      _$this._droppedLastHour = droppedLastHour;

  ChannelAirtimeBuilder() {
    ChannelAirtime._defaults(this);
  }

  ChannelAirtimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _windowSeconds = $v.windowSeconds;
      _usedSeconds = $v.usedSeconds;
      _limitSeconds = $v.limitSeconds;
      _dutyCyclePercent = $v.dutyCyclePercent;
      _queued = $v.queued;
      _foldedLastHour = $v.foldedLastHour;
      _droppedLastHour = $v.droppedLastHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChannelAirtime other) {
    _$v = other as _$ChannelAirtime;
  }

  @override
  void update(void Function(ChannelAirtimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChannelAirtime build() => _build();

  _$ChannelAirtime _build() {
    final _$result = _$v ??
        _$ChannelAirtime._(
          windowSeconds: BuiltValueNullFieldError.checkNotNull(
              windowSeconds, r'ChannelAirtime', 'windowSeconds'),
          usedSeconds: BuiltValueNullFieldError.checkNotNull(
              usedSeconds, r'ChannelAirtime', 'usedSeconds'),
          limitSeconds: BuiltValueNullFieldError.checkNotNull(
              limitSeconds, r'ChannelAirtime', 'limitSeconds'),
          dutyCyclePercent: BuiltValueNullFieldError.checkNotNull(
              dutyCyclePercent, r'ChannelAirtime', 'dutyCyclePercent'),
          queued: BuiltValueNullFieldError.checkNotNull(
              queued, r'ChannelAirtime', 'queued'),
          foldedLastHour: BuiltValueNullFieldError.checkNotNull(
              foldedLastHour, r'ChannelAirtime', 'foldedLastHour'),
          droppedLastHour: BuiltValueNullFieldError.checkNotNull(
              droppedLastHour, r'ChannelAirtime', 'droppedLastHour'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
