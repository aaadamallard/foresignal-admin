// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_packet_forecasts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CyclePacketForecasts extends CyclePacketForecasts {
  @override
  final BuiltList<CyclePacketItem>? opened;
  @override
  final BuiltList<CyclePacketItem>? due;
  @override
  final BuiltList<CyclePacketItem>? resolved;
  @override
  final BuiltList<CyclePacketItem>? scorecardChanges;

  factory _$CyclePacketForecasts([
    void Function(CyclePacketForecastsBuilder)? updates,
  ]) => (CyclePacketForecastsBuilder()..update(updates))._build();

  _$CyclePacketForecasts._({
    this.opened,
    this.due,
    this.resolved,
    this.scorecardChanges,
  }) : super._();
  @override
  CyclePacketForecasts rebuild(
    void Function(CyclePacketForecastsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CyclePacketForecastsBuilder toBuilder() =>
      CyclePacketForecastsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CyclePacketForecasts &&
        opened == other.opened &&
        due == other.due &&
        resolved == other.resolved &&
        scorecardChanges == other.scorecardChanges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, opened.hashCode);
    _$hash = $jc(_$hash, due.hashCode);
    _$hash = $jc(_$hash, resolved.hashCode);
    _$hash = $jc(_$hash, scorecardChanges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CyclePacketForecasts')
          ..add('opened', opened)
          ..add('due', due)
          ..add('resolved', resolved)
          ..add('scorecardChanges', scorecardChanges))
        .toString();
  }
}

class CyclePacketForecastsBuilder
    implements Builder<CyclePacketForecasts, CyclePacketForecastsBuilder> {
  _$CyclePacketForecasts? _$v;

  ListBuilder<CyclePacketItem>? _opened;
  ListBuilder<CyclePacketItem> get opened =>
      _$this._opened ??= ListBuilder<CyclePacketItem>();
  set opened(ListBuilder<CyclePacketItem>? opened) => _$this._opened = opened;

  ListBuilder<CyclePacketItem>? _due;
  ListBuilder<CyclePacketItem> get due =>
      _$this._due ??= ListBuilder<CyclePacketItem>();
  set due(ListBuilder<CyclePacketItem>? due) => _$this._due = due;

  ListBuilder<CyclePacketItem>? _resolved;
  ListBuilder<CyclePacketItem> get resolved =>
      _$this._resolved ??= ListBuilder<CyclePacketItem>();
  set resolved(ListBuilder<CyclePacketItem>? resolved) =>
      _$this._resolved = resolved;

  ListBuilder<CyclePacketItem>? _scorecardChanges;
  ListBuilder<CyclePacketItem> get scorecardChanges =>
      _$this._scorecardChanges ??= ListBuilder<CyclePacketItem>();
  set scorecardChanges(ListBuilder<CyclePacketItem>? scorecardChanges) =>
      _$this._scorecardChanges = scorecardChanges;

  CyclePacketForecastsBuilder() {
    CyclePacketForecasts._defaults(this);
  }

  CyclePacketForecastsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _opened = $v.opened?.toBuilder();
      _due = $v.due?.toBuilder();
      _resolved = $v.resolved?.toBuilder();
      _scorecardChanges = $v.scorecardChanges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CyclePacketForecasts other) {
    _$v = other as _$CyclePacketForecasts;
  }

  @override
  void update(void Function(CyclePacketForecastsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CyclePacketForecasts build() => _build();

  _$CyclePacketForecasts _build() {
    _$CyclePacketForecasts _$result;
    try {
      _$result =
          _$v ??
          _$CyclePacketForecasts._(
            opened: _opened?.build(),
            due: _due?.build(),
            resolved: _resolved?.build(),
            scorecardChanges: _scorecardChanges?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'opened';
        _opened?.build();
        _$failedField = 'due';
        _due?.build();
        _$failedField = 'resolved';
        _resolved?.build();
        _$failedField = 'scorecardChanges';
        _scorecardChanges?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CyclePacketForecasts',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
