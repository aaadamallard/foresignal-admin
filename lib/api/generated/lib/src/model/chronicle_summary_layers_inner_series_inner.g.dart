// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary_layers_inner_series_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummaryLayersInnerSeriesInner
    extends ChronicleSummaryLayersInnerSeriesInner {
  @override
  final DateTime t;
  @override
  final int count;

  factory _$ChronicleSummaryLayersInnerSeriesInner(
          [void Function(ChronicleSummaryLayersInnerSeriesInnerBuilder)?
              updates]) =>
      (ChronicleSummaryLayersInnerSeriesInnerBuilder()..update(updates))
          ._build();

  _$ChronicleSummaryLayersInnerSeriesInner._(
      {required this.t, required this.count})
      : super._();
  @override
  ChronicleSummaryLayersInnerSeriesInner rebuild(
          void Function(ChronicleSummaryLayersInnerSeriesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryLayersInnerSeriesInnerBuilder toBuilder() =>
      ChronicleSummaryLayersInnerSeriesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummaryLayersInnerSeriesInner &&
        t == other.t &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ChronicleSummaryLayersInnerSeriesInner')
          ..add('t', t)
          ..add('count', count))
        .toString();
  }
}

class ChronicleSummaryLayersInnerSeriesInnerBuilder
    implements
        Builder<ChronicleSummaryLayersInnerSeriesInner,
            ChronicleSummaryLayersInnerSeriesInnerBuilder> {
  _$ChronicleSummaryLayersInnerSeriesInner? _$v;

  DateTime? _t;
  DateTime? get t => _$this._t;
  set t(DateTime? t) => _$this._t = t;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ChronicleSummaryLayersInnerSeriesInnerBuilder() {
    ChronicleSummaryLayersInnerSeriesInner._defaults(this);
  }

  ChronicleSummaryLayersInnerSeriesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _t = $v.t;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummaryLayersInnerSeriesInner other) {
    _$v = other as _$ChronicleSummaryLayersInnerSeriesInner;
  }

  @override
  void update(
      void Function(ChronicleSummaryLayersInnerSeriesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummaryLayersInnerSeriesInner build() => _build();

  _$ChronicleSummaryLayersInnerSeriesInner _build() {
    final _$result = _$v ??
        _$ChronicleSummaryLayersInnerSeriesInner._(
          t: BuiltValueNullFieldError.checkNotNull(
              t, r'ChronicleSummaryLayersInnerSeriesInner', 't'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'ChronicleSummaryLayersInnerSeriesInner', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
