// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_coverage_collection_extent_temporal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCoverageCollectionExtentTemporal
    extends OgcCoverageCollectionExtentTemporal {
  @override
  final BuiltList<BuiltList<DateTime?>>? interval;
  @override
  final BuiltList<String>? values;
  @override
  final String? trs;

  factory _$OgcCoverageCollectionExtentTemporal(
          [void Function(OgcCoverageCollectionExtentTemporalBuilder)?
              updates]) =>
      (OgcCoverageCollectionExtentTemporalBuilder()..update(updates))._build();

  _$OgcCoverageCollectionExtentTemporal._(
      {this.interval, this.values, this.trs})
      : super._();
  @override
  OgcCoverageCollectionExtentTemporal rebuild(
          void Function(OgcCoverageCollectionExtentTemporalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCoverageCollectionExtentTemporalBuilder toBuilder() =>
      OgcCoverageCollectionExtentTemporalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCoverageCollectionExtentTemporal &&
        interval == other.interval &&
        values == other.values &&
        trs == other.trs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jc(_$hash, trs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCoverageCollectionExtentTemporal')
          ..add('interval', interval)
          ..add('values', values)
          ..add('trs', trs))
        .toString();
  }
}

class OgcCoverageCollectionExtentTemporalBuilder
    implements
        Builder<OgcCoverageCollectionExtentTemporal,
            OgcCoverageCollectionExtentTemporalBuilder> {
  _$OgcCoverageCollectionExtentTemporal? _$v;

  ListBuilder<BuiltList<DateTime?>>? _interval;
  ListBuilder<BuiltList<DateTime?>> get interval =>
      _$this._interval ??= ListBuilder<BuiltList<DateTime?>>();
  set interval(ListBuilder<BuiltList<DateTime?>>? interval) =>
      _$this._interval = interval;

  ListBuilder<String>? _values;
  ListBuilder<String> get values => _$this._values ??= ListBuilder<String>();
  set values(ListBuilder<String>? values) => _$this._values = values;

  String? _trs;
  String? get trs => _$this._trs;
  set trs(String? trs) => _$this._trs = trs;

  OgcCoverageCollectionExtentTemporalBuilder() {
    OgcCoverageCollectionExtentTemporal._defaults(this);
  }

  OgcCoverageCollectionExtentTemporalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interval = $v.interval?.toBuilder();
      _values = $v.values?.toBuilder();
      _trs = $v.trs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCoverageCollectionExtentTemporal other) {
    _$v = other as _$OgcCoverageCollectionExtentTemporal;
  }

  @override
  void update(
      void Function(OgcCoverageCollectionExtentTemporalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCoverageCollectionExtentTemporal build() => _build();

  _$OgcCoverageCollectionExtentTemporal _build() {
    _$OgcCoverageCollectionExtentTemporal _$result;
    try {
      _$result = _$v ??
          _$OgcCoverageCollectionExtentTemporal._(
            interval: _interval?.build(),
            values: _values?.build(),
            trs: trs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'OgcCoverageCollectionExtentTemporal',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
