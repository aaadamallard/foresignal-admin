// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pattern_payload_nearest_airport.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldingPatternPayloadNearestAirport
    extends HoldingPatternPayloadNearestAirport {
  @override
  final String ident;
  @override
  final String? name;
  @override
  final num? distanceKm;

  factory _$HoldingPatternPayloadNearestAirport([
    void Function(HoldingPatternPayloadNearestAirportBuilder)? updates,
  ]) =>
      (HoldingPatternPayloadNearestAirportBuilder()..update(updates))._build();

  _$HoldingPatternPayloadNearestAirport._({
    required this.ident,
    this.name,
    this.distanceKm,
  }) : super._();
  @override
  HoldingPatternPayloadNearestAirport rebuild(
    void Function(HoldingPatternPayloadNearestAirportBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HoldingPatternPayloadNearestAirportBuilder toBuilder() =>
      HoldingPatternPayloadNearestAirportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPatternPayloadNearestAirport &&
        ident == other.ident &&
        name == other.name &&
        distanceKm == other.distanceKm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ident.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPatternPayloadNearestAirport')
          ..add('ident', ident)
          ..add('name', name)
          ..add('distanceKm', distanceKm))
        .toString();
  }
}

class HoldingPatternPayloadNearestAirportBuilder
    implements
        Builder<
          HoldingPatternPayloadNearestAirport,
          HoldingPatternPayloadNearestAirportBuilder
        > {
  _$HoldingPatternPayloadNearestAirport? _$v;

  String? _ident;
  String? get ident => _$this._ident;
  set ident(String? ident) => _$this._ident = ident;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  HoldingPatternPayloadNearestAirportBuilder() {
    HoldingPatternPayloadNearestAirport._defaults(this);
  }

  HoldingPatternPayloadNearestAirportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ident = $v.ident;
      _name = $v.name;
      _distanceKm = $v.distanceKm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingPatternPayloadNearestAirport other) {
    _$v = other as _$HoldingPatternPayloadNearestAirport;
  }

  @override
  void update(
    void Function(HoldingPatternPayloadNearestAirportBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPatternPayloadNearestAirport build() => _build();

  _$HoldingPatternPayloadNearestAirport _build() {
    final _$result =
        _$v ??
        _$HoldingPatternPayloadNearestAirport._(
          ident: BuiltValueNullFieldError.checkNotNull(
            ident,
            r'HoldingPatternPayloadNearestAirport',
            'ident',
          ),
          name: name,
          distanceKm: distanceKm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
