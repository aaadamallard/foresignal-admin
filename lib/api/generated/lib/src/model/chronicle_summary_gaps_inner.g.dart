// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary_gaps_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummaryGapsInner extends ChronicleSummaryGapsInner {
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final String? reason;

  factory _$ChronicleSummaryGapsInner(
          [void Function(ChronicleSummaryGapsInnerBuilder)? updates]) =>
      (ChronicleSummaryGapsInnerBuilder()..update(updates))._build();

  _$ChronicleSummaryGapsInner._(
      {required this.from, required this.to, this.reason})
      : super._();
  @override
  ChronicleSummaryGapsInner rebuild(
          void Function(ChronicleSummaryGapsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryGapsInnerBuilder toBuilder() =>
      ChronicleSummaryGapsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummaryGapsInner &&
        from == other.from &&
        to == other.to &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSummaryGapsInner')
          ..add('from', from)
          ..add('to', to)
          ..add('reason', reason))
        .toString();
  }
}

class ChronicleSummaryGapsInnerBuilder
    implements
        Builder<ChronicleSummaryGapsInner, ChronicleSummaryGapsInnerBuilder> {
  _$ChronicleSummaryGapsInner? _$v;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ChronicleSummaryGapsInnerBuilder() {
    ChronicleSummaryGapsInner._defaults(this);
  }

  ChronicleSummaryGapsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummaryGapsInner other) {
    _$v = other as _$ChronicleSummaryGapsInner;
  }

  @override
  void update(void Function(ChronicleSummaryGapsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummaryGapsInner build() => _build();

  _$ChronicleSummaryGapsInner _build() {
    final _$result = _$v ??
        _$ChronicleSummaryGapsInner._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'ChronicleSummaryGapsInner', 'from'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'ChronicleSummaryGapsInner', 'to'),
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
