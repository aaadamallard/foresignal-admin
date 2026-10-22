// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projected_impact_interval.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectedImpactInterval extends ProjectedImpactInterval {
  @override
  final num lo;
  @override
  final num hi;

  factory _$ProjectedImpactInterval([
    void Function(ProjectedImpactIntervalBuilder)? updates,
  ]) => (ProjectedImpactIntervalBuilder()..update(updates))._build();

  _$ProjectedImpactInterval._({required this.lo, required this.hi}) : super._();
  @override
  ProjectedImpactInterval rebuild(
    void Function(ProjectedImpactIntervalBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProjectedImpactIntervalBuilder toBuilder() =>
      ProjectedImpactIntervalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectedImpactInterval && lo == other.lo && hi == other.hi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lo.hashCode);
    _$hash = $jc(_$hash, hi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectedImpactInterval')
          ..add('lo', lo)
          ..add('hi', hi))
        .toString();
  }
}

class ProjectedImpactIntervalBuilder
    implements
        Builder<ProjectedImpactInterval, ProjectedImpactIntervalBuilder> {
  _$ProjectedImpactInterval? _$v;

  num? _lo;
  num? get lo => _$this._lo;
  set lo(num? lo) => _$this._lo = lo;

  num? _hi;
  num? get hi => _$this._hi;
  set hi(num? hi) => _$this._hi = hi;

  ProjectedImpactIntervalBuilder() {
    ProjectedImpactInterval._defaults(this);
  }

  ProjectedImpactIntervalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lo = $v.lo;
      _hi = $v.hi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectedImpactInterval other) {
    _$v = other as _$ProjectedImpactInterval;
  }

  @override
  void update(void Function(ProjectedImpactIntervalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectedImpactInterval build() => _build();

  _$ProjectedImpactInterval _build() {
    final _$result =
        _$v ??
        _$ProjectedImpactInterval._(
          lo: BuiltValueNullFieldError.checkNotNull(
            lo,
            r'ProjectedImpactInterval',
            'lo',
          ),
          hi: BuiltValueNullFieldError.checkNotNull(
            hi,
            r'ProjectedImpactInterval',
            'hi',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
