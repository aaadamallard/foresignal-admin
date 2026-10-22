// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observability_coverage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObservabilityCoverage extends ObservabilityCoverage {
  @override
  final String family;
  @override
  final DateTime at;
  @override
  final String? band;
  @override
  final num absenceMinDetect;
  @override
  final BuiltList<Detectability> items;
  @override
  final String? nextCursor;

  factory _$ObservabilityCoverage(
          [void Function(ObservabilityCoverageBuilder)? updates]) =>
      (ObservabilityCoverageBuilder()..update(updates))._build();

  _$ObservabilityCoverage._(
      {required this.family,
      required this.at,
      this.band,
      required this.absenceMinDetect,
      required this.items,
      this.nextCursor})
      : super._();
  @override
  ObservabilityCoverage rebuild(
          void Function(ObservabilityCoverageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObservabilityCoverageBuilder toBuilder() =>
      ObservabilityCoverageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObservabilityCoverage &&
        family == other.family &&
        at == other.at &&
        band == other.band &&
        absenceMinDetect == other.absenceMinDetect &&
        items == other.items &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, band.hashCode);
    _$hash = $jc(_$hash, absenceMinDetect.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObservabilityCoverage')
          ..add('family', family)
          ..add('at', at)
          ..add('band', band)
          ..add('absenceMinDetect', absenceMinDetect)
          ..add('items', items)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ObservabilityCoverageBuilder
    implements Builder<ObservabilityCoverage, ObservabilityCoverageBuilder> {
  _$ObservabilityCoverage? _$v;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _band;
  String? get band => _$this._band;
  set band(String? band) => _$this._band = band;

  num? _absenceMinDetect;
  num? get absenceMinDetect => _$this._absenceMinDetect;
  set absenceMinDetect(num? absenceMinDetect) =>
      _$this._absenceMinDetect = absenceMinDetect;

  ListBuilder<Detectability>? _items;
  ListBuilder<Detectability> get items =>
      _$this._items ??= ListBuilder<Detectability>();
  set items(ListBuilder<Detectability>? items) => _$this._items = items;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ObservabilityCoverageBuilder() {
    ObservabilityCoverage._defaults(this);
  }

  ObservabilityCoverageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _family = $v.family;
      _at = $v.at;
      _band = $v.band;
      _absenceMinDetect = $v.absenceMinDetect;
      _items = $v.items.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObservabilityCoverage other) {
    _$v = other as _$ObservabilityCoverage;
  }

  @override
  void update(void Function(ObservabilityCoverageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObservabilityCoverage build() => _build();

  _$ObservabilityCoverage _build() {
    _$ObservabilityCoverage _$result;
    try {
      _$result = _$v ??
          _$ObservabilityCoverage._(
            family: BuiltValueNullFieldError.checkNotNull(
                family, r'ObservabilityCoverage', 'family'),
            at: BuiltValueNullFieldError.checkNotNull(
                at, r'ObservabilityCoverage', 'at'),
            band: band,
            absenceMinDetect: BuiltValueNullFieldError.checkNotNull(
                absenceMinDetect, r'ObservabilityCoverage', 'absenceMinDetect'),
            items: items.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ObservabilityCoverage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
