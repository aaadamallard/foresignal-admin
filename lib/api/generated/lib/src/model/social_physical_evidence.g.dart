// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_physical_evidence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SocialPhysicalEvidence extends SocialPhysicalEvidence {
  @override
  final String ref;
  @override
  final String family;
  @override
  final String originator;
  @override
  final DateTime firstObservedAt;
  @override
  final num? distanceKm;
  @override
  final bool? negates;

  factory _$SocialPhysicalEvidence([
    void Function(SocialPhysicalEvidenceBuilder)? updates,
  ]) => (SocialPhysicalEvidenceBuilder()..update(updates))._build();

  _$SocialPhysicalEvidence._({
    required this.ref,
    required this.family,
    required this.originator,
    required this.firstObservedAt,
    this.distanceKm,
    this.negates,
  }) : super._();
  @override
  SocialPhysicalEvidence rebuild(
    void Function(SocialPhysicalEvidenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialPhysicalEvidenceBuilder toBuilder() =>
      SocialPhysicalEvidenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPhysicalEvidence &&
        ref == other.ref &&
        family == other.family &&
        originator == other.originator &&
        firstObservedAt == other.firstObservedAt &&
        distanceKm == other.distanceKm &&
        negates == other.negates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, originator.hashCode);
    _$hash = $jc(_$hash, firstObservedAt.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, negates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPhysicalEvidence')
          ..add('ref', ref)
          ..add('family', family)
          ..add('originator', originator)
          ..add('firstObservedAt', firstObservedAt)
          ..add('distanceKm', distanceKm)
          ..add('negates', negates))
        .toString();
  }
}

class SocialPhysicalEvidenceBuilder
    implements Builder<SocialPhysicalEvidence, SocialPhysicalEvidenceBuilder> {
  _$SocialPhysicalEvidence? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  String? _originator;
  String? get originator => _$this._originator;
  set originator(String? originator) => _$this._originator = originator;

  DateTime? _firstObservedAt;
  DateTime? get firstObservedAt => _$this._firstObservedAt;
  set firstObservedAt(DateTime? firstObservedAt) =>
      _$this._firstObservedAt = firstObservedAt;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  bool? _negates;
  bool? get negates => _$this._negates;
  set negates(bool? negates) => _$this._negates = negates;

  SocialPhysicalEvidenceBuilder() {
    SocialPhysicalEvidence._defaults(this);
  }

  SocialPhysicalEvidenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _family = $v.family;
      _originator = $v.originator;
      _firstObservedAt = $v.firstObservedAt;
      _distanceKm = $v.distanceKm;
      _negates = $v.negates;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPhysicalEvidence other) {
    _$v = other as _$SocialPhysicalEvidence;
  }

  @override
  void update(void Function(SocialPhysicalEvidenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPhysicalEvidence build() => _build();

  _$SocialPhysicalEvidence _build() {
    final _$result =
        _$v ??
        _$SocialPhysicalEvidence._(
          ref: BuiltValueNullFieldError.checkNotNull(
            ref,
            r'SocialPhysicalEvidence',
            'ref',
          ),
          family: BuiltValueNullFieldError.checkNotNull(
            family,
            r'SocialPhysicalEvidence',
            'family',
          ),
          originator: BuiltValueNullFieldError.checkNotNull(
            originator,
            r'SocialPhysicalEvidence',
            'originator',
          ),
          firstObservedAt: BuiltValueNullFieldError.checkNotNull(
            firstObservedAt,
            r'SocialPhysicalEvidence',
            'firstObservedAt',
          ),
          distanceKm: distanceKm,
          negates: negates,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
