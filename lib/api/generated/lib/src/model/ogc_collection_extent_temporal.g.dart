// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_collection_extent_temporal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcCollectionExtentTemporal extends OgcCollectionExtentTemporal {
  @override
  final BuiltList<BuiltList<DateTime?>>? interval;
  @override
  final String? trs;

  factory _$OgcCollectionExtentTemporal(
          [void Function(OgcCollectionExtentTemporalBuilder)? updates]) =>
      (OgcCollectionExtentTemporalBuilder()..update(updates))._build();

  _$OgcCollectionExtentTemporal._({this.interval, this.trs}) : super._();
  @override
  OgcCollectionExtentTemporal rebuild(
          void Function(OgcCollectionExtentTemporalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcCollectionExtentTemporalBuilder toBuilder() =>
      OgcCollectionExtentTemporalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcCollectionExtentTemporal &&
        interval == other.interval &&
        trs == other.trs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, trs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcCollectionExtentTemporal')
          ..add('interval', interval)
          ..add('trs', trs))
        .toString();
  }
}

class OgcCollectionExtentTemporalBuilder
    implements
        Builder<OgcCollectionExtentTemporal,
            OgcCollectionExtentTemporalBuilder> {
  _$OgcCollectionExtentTemporal? _$v;

  ListBuilder<BuiltList<DateTime?>>? _interval;
  ListBuilder<BuiltList<DateTime?>> get interval =>
      _$this._interval ??= ListBuilder<BuiltList<DateTime?>>();
  set interval(ListBuilder<BuiltList<DateTime?>>? interval) =>
      _$this._interval = interval;

  String? _trs;
  String? get trs => _$this._trs;
  set trs(String? trs) => _$this._trs = trs;

  OgcCollectionExtentTemporalBuilder() {
    OgcCollectionExtentTemporal._defaults(this);
  }

  OgcCollectionExtentTemporalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interval = $v.interval?.toBuilder();
      _trs = $v.trs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcCollectionExtentTemporal other) {
    _$v = other as _$OgcCollectionExtentTemporal;
  }

  @override
  void update(void Function(OgcCollectionExtentTemporalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcCollectionExtentTemporal build() => _build();

  _$OgcCollectionExtentTemporal _build() {
    _$OgcCollectionExtentTemporal _$result;
    try {
      _$result = _$v ??
          _$OgcCollectionExtentTemporal._(
            interval: _interval?.build(),
            trs: trs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcCollectionExtentTemporal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
