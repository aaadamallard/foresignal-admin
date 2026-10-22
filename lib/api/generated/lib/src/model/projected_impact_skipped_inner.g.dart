// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_skipped_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactSkippedInner extends ProjectedImpactSkippedInner {
  @override
  final String impactFamily;
  @override
  final String? regionClass;
  @override
  final int? n;
  @override
  final String reason;

  factory _$ProjectedImpactSkippedInner([
    void Function(ProjectedImpactSkippedInnerBuilder)? updates,
  ]) => (ProjectedImpactSkippedInnerBuilder()..update(updates))._build();

  _$ProjectedImpactSkippedInner._({
    required this.impactFamily,
    this.regionClass,
    this.n,
    required this.reason,
  }) : super._();
  @override
  ProjectedImpactSkippedInner rebuild(
    void Function(ProjectedImpactSkippedInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactSkippedInnerBuilder toBuilder() =>
      ProjectedImpactSkippedInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactSkippedInner &&
        impactFamily == other.impactFamily &&
        regionClass == other.regionClass &&
        n == other.n &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, impactFamily.hashCode);
    _$hash = $jc(_$hash, regionClass.hashCode);
    _$hash = $jc(_$hash, n.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactSkippedInner')
          ..add('impactFamily', impactFamily)
          ..add('regionClass', regionClass)
          ..add('n', n)
          ..add('reason', reason))
        .toString();
  }
}

class ProjectedImpactSkippedInnerBuilder
    implements
        Builder<
          ProjectedImpactSkippedInner,
          ProjectedImpactSkippedInnerBuilder
        > {
  _$ProjectedImpactSkippedInner? _$v;

  String? _impactFamily;
  String? get impactFamily => _$this._impactFamily;
  set impactFamily(String? impactFamily) => _$this._impactFamily = impactFamily;

  String? _regionClass;
  String? get regionClass => _$this._regionClass;
  set regionClass(String? regionClass) => _$this._regionClass = regionClass;

  int? _n;
  int? get n => _$this._n;
  set n(int? n) => _$this._n = n;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ProjectedImpactSkippedInnerBuilder() {
    ProjectedImpactSkippedInner._defaults(this);
  }

  ProjectedImpactSkippedInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _impactFamily = $v.impactFamily;
      _regionClass = $v.regionClass;
      _n = $v.n;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactSkippedInner other) {
    _$v = other as _$ProjectedImpactSkippedInner;
  }

  @override
  void update(void Function(ProjectedImpactSkippedInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactSkippedInner build() => _build();

  _$ProjectedImpactSkippedInner _build() {
    final _$result =
        _$v ??
        _$ProjectedImpactSkippedInner._(
          impactFamily: BuiltValueNullFieldError.checkNotNull(
            impactFamily,
            r'ProjectedImpactSkippedInner',
            'impactFamily',
          ),
          regionClass: regionClass,
          n: n,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ProjectedImpactSkippedInner',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
