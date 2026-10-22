// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_weather_digest_period.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaceWeatherDigestPeriod extends PlaceWeatherDigestPeriod {
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final bool? partial;
  @override
  final num? maxDbz;
  @override
  final num? maxMeshMm;
  @override
  final int? lightningTotal;
  @override
  final BuiltList<PlaceWeatherDigestPeriodHazardsEnteredInner>? hazardsEntered;
  @override
  final BuiltList<String>? notes;

  factory _$PlaceWeatherDigestPeriod(
          [void Function(PlaceWeatherDigestPeriodBuilder)? updates]) =>
      (PlaceWeatherDigestPeriodBuilder()..update(updates))._build();

  _$PlaceWeatherDigestPeriod._(
      {this.from,
      this.to,
      this.partial,
      this.maxDbz,
      this.maxMeshMm,
      this.lightningTotal,
      this.hazardsEntered,
      this.notes})
      : super._();
  @override
  PlaceWeatherDigestPeriod rebuild(
          void Function(PlaceWeatherDigestPeriodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceWeatherDigestPeriodBuilder toBuilder() =>
      PlaceWeatherDigestPeriodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceWeatherDigestPeriod &&
        from == other.from &&
        to == other.to &&
        partial == other.partial &&
        maxDbz == other.maxDbz &&
        maxMeshMm == other.maxMeshMm &&
        lightningTotal == other.lightningTotal &&
        hazardsEntered == other.hazardsEntered &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, partial.hashCode);
    _$hash = $jc(_$hash, maxDbz.hashCode);
    _$hash = $jc(_$hash, maxMeshMm.hashCode);
    _$hash = $jc(_$hash, lightningTotal.hashCode);
    _$hash = $jc(_$hash, hazardsEntered.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceWeatherDigestPeriod')
          ..add('from', from)
          ..add('to', to)
          ..add('partial', partial)
          ..add('maxDbz', maxDbz)
          ..add('maxMeshMm', maxMeshMm)
          ..add('lightningTotal', lightningTotal)
          ..add('hazardsEntered', hazardsEntered)
          ..add('notes', notes))
        .toString();
  }
}

class PlaceWeatherDigestPeriodBuilder
    implements
        Builder<PlaceWeatherDigestPeriod, PlaceWeatherDigestPeriodBuilder> {
  _$PlaceWeatherDigestPeriod? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  bool? _partial;
  bool? get partial => _$this._partial;
  set partial(bool? partial) => _$this._partial = partial;

  num? _maxDbz;
  num? get maxDbz => _$this._maxDbz;
  set maxDbz(num? maxDbz) => _$this._maxDbz = maxDbz;

  num? _maxMeshMm;
  num? get maxMeshMm => _$this._maxMeshMm;
  set maxMeshMm(num? maxMeshMm) => _$this._maxMeshMm = maxMeshMm;

  int? _lightningTotal;
  int? get lightningTotal => _$this._lightningTotal;
  set lightningTotal(int? lightningTotal) =>
      _$this._lightningTotal = lightningTotal;

  ListBuilder<PlaceWeatherDigestPeriodHazardsEnteredInner>? _hazardsEntered;
  ListBuilder<PlaceWeatherDigestPeriodHazardsEnteredInner> get hazardsEntered =>
      _$this._hazardsEntered ??=
          ListBuilder<PlaceWeatherDigestPeriodHazardsEnteredInner>();
  set hazardsEntered(
          ListBuilder<PlaceWeatherDigestPeriodHazardsEnteredInner>?
              hazardsEntered) =>
      _$this._hazardsEntered = hazardsEntered;

  ListBuilder<String>? _notes;
  ListBuilder<String> get notes => _$this._notes ??= ListBuilder<String>();
  set notes(ListBuilder<String>? notes) => _$this._notes = notes;

  PlaceWeatherDigestPeriodBuilder() {
    PlaceWeatherDigestPeriod._defaults(this);
  }

  PlaceWeatherDigestPeriodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _partial = $v.partial;
      _maxDbz = $v.maxDbz;
      _maxMeshMm = $v.maxMeshMm;
      _lightningTotal = $v.lightningTotal;
      _hazardsEntered = $v.hazardsEntered?.toBuilder();
      _notes = $v.notes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceWeatherDigestPeriod other) {
    _$v = other as _$PlaceWeatherDigestPeriod;
  }

  @override
  void update(void Function(PlaceWeatherDigestPeriodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceWeatherDigestPeriod build() => _build();

  _$PlaceWeatherDigestPeriod _build() {
    _$PlaceWeatherDigestPeriod _$result;
    try {
      _$result = _$v ??
          _$PlaceWeatherDigestPeriod._(
            from: from,
            to: to,
            partial: partial,
            maxDbz: maxDbz,
            maxMeshMm: maxMeshMm,
            lightningTotal: lightningTotal,
            hazardsEntered: _hazardsEntered?.build(),
            notes: _notes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hazardsEntered';
        _hazardsEntered?.build();
        _$failedField = 'notes';
        _notes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PlaceWeatherDigestPeriod', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
