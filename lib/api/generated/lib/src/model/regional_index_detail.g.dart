// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regional_index_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionalIndexDetail extends RegionalIndexDetail {
  @override
  final RegionalIndexDef index;
  @override
  final String? region;
  @override
  final Date? from;
  @override
  final Date? to;
  @override
  final BuiltList<RegionalIndexValue> values;
  @override
  final IndexFitResult? latestFit;

  factory _$RegionalIndexDetail(
          [void Function(RegionalIndexDetailBuilder)? updates]) =>
      (RegionalIndexDetailBuilder()..update(updates))._build();

  _$RegionalIndexDetail._(
      {required this.index,
      this.region,
      this.from,
      this.to,
      required this.values,
      this.latestFit})
      : super._();
  @override
  RegionalIndexDetail rebuild(
          void Function(RegionalIndexDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionalIndexDetailBuilder toBuilder() =>
      RegionalIndexDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionalIndexDetail &&
        index == other.index &&
        region == other.region &&
        from == other.from &&
        to == other.to &&
        values == other.values &&
        latestFit == other.latestFit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jc(_$hash, latestFit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionalIndexDetail')
          ..add('index', index)
          ..add('region', region)
          ..add('from', from)
          ..add('to', to)
          ..add('values', values)
          ..add('latestFit', latestFit))
        .toString();
  }
}

class RegionalIndexDetailBuilder
    implements Builder<RegionalIndexDetail, RegionalIndexDetailBuilder> {
  _$RegionalIndexDetail? _$v;

  RegionalIndexDefBuilder? _index;
  RegionalIndexDefBuilder get index =>
      _$this._index ??= RegionalIndexDefBuilder();
  set index(RegionalIndexDefBuilder? index) => _$this._index = index;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  Date? _from;
  Date? get from => _$this._from;
  set from(Date? from) => _$this._from = from;

  Date? _to;
  Date? get to => _$this._to;
  set to(Date? to) => _$this._to = to;

  ListBuilder<RegionalIndexValue>? _values;
  ListBuilder<RegionalIndexValue> get values =>
      _$this._values ??= ListBuilder<RegionalIndexValue>();
  set values(ListBuilder<RegionalIndexValue>? values) =>
      _$this._values = values;

  IndexFitResultBuilder? _latestFit;
  IndexFitResultBuilder get latestFit =>
      _$this._latestFit ??= IndexFitResultBuilder();
  set latestFit(IndexFitResultBuilder? latestFit) =>
      _$this._latestFit = latestFit;

  RegionalIndexDetailBuilder() {
    RegionalIndexDetail._defaults(this);
  }

  RegionalIndexDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index.toBuilder();
      _region = $v.region;
      _from = $v.from;
      _to = $v.to;
      _values = $v.values.toBuilder();
      _latestFit = $v.latestFit?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionalIndexDetail other) {
    _$v = other as _$RegionalIndexDetail;
  }

  @override
  void update(void Function(RegionalIndexDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionalIndexDetail build() => _build();

  _$RegionalIndexDetail _build() {
    _$RegionalIndexDetail _$result;
    try {
      _$result = _$v ??
          _$RegionalIndexDetail._(
            index: index.build(),
            region: region,
            from: from,
            to: to,
            values: values.build(),
            latestFit: _latestFit?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'index';
        index.build();

        _$failedField = 'values';
        values.build();
        _$failedField = 'latestFit';
        _latestFit?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegionalIndexDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
