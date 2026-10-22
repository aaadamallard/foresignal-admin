// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_summary_top_entities_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSummaryTopEntitiesInner
    extends ChronicleSummaryTopEntitiesInner {
  @override
  final String ref;
  @override
  final String? title;
  @override
  final int count;

  factory _$ChronicleSummaryTopEntitiesInner(
          [void Function(ChronicleSummaryTopEntitiesInnerBuilder)? updates]) =>
      (ChronicleSummaryTopEntitiesInnerBuilder()..update(updates))._build();

  _$ChronicleSummaryTopEntitiesInner._(
      {required this.ref, this.title, required this.count})
      : super._();
  @override
  ChronicleSummaryTopEntitiesInner rebuild(
          void Function(ChronicleSummaryTopEntitiesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSummaryTopEntitiesInnerBuilder toBuilder() =>
      ChronicleSummaryTopEntitiesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSummaryTopEntitiesInner &&
        ref == other.ref &&
        title == other.title &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSummaryTopEntitiesInner')
          ..add('ref', ref)
          ..add('title', title)
          ..add('count', count))
        .toString();
  }
}

class ChronicleSummaryTopEntitiesInnerBuilder
    implements
        Builder<ChronicleSummaryTopEntitiesInner,
            ChronicleSummaryTopEntitiesInnerBuilder> {
  _$ChronicleSummaryTopEntitiesInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ChronicleSummaryTopEntitiesInnerBuilder() {
    ChronicleSummaryTopEntitiesInner._defaults(this);
  }

  ChronicleSummaryTopEntitiesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _title = $v.title;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSummaryTopEntitiesInner other) {
    _$v = other as _$ChronicleSummaryTopEntitiesInner;
  }

  @override
  void update(void Function(ChronicleSummaryTopEntitiesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSummaryTopEntitiesInner build() => _build();

  _$ChronicleSummaryTopEntitiesInner _build() {
    final _$result = _$v ??
        _$ChronicleSummaryTopEntitiesInner._(
          ref: BuiltValueNullFieldError.checkNotNull(
              ref, r'ChronicleSummaryTopEntitiesInner', 'ref'),
          title: title,
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'ChronicleSummaryTopEntitiesInner', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
