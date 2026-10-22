// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_evidence_corroboration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationEvidenceCorroboration extends SituationEvidenceCorroboration {
  @override
  final int corroborated;
  @override
  final int uncorroborated;
  @override
  final int? unknown;
  @override
  final int? notApplicable;
  @override
  final num? share;
  @override
  final bool? uncorroboratedOnly;

  factory _$SituationEvidenceCorroboration(
          [void Function(SituationEvidenceCorroborationBuilder)? updates]) =>
      (SituationEvidenceCorroborationBuilder()..update(updates))._build();

  _$SituationEvidenceCorroboration._(
      {required this.corroborated,
      required this.uncorroborated,
      this.unknown,
      this.notApplicable,
      this.share,
      this.uncorroboratedOnly})
      : super._();
  @override
  SituationEvidenceCorroboration rebuild(
          void Function(SituationEvidenceCorroborationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SituationEvidenceCorroborationBuilder toBuilder() =>
      SituationEvidenceCorroborationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationEvidenceCorroboration &&
        corroborated == other.corroborated &&
        uncorroborated == other.uncorroborated &&
        unknown == other.unknown &&
        notApplicable == other.notApplicable &&
        share == other.share &&
        uncorroboratedOnly == other.uncorroboratedOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, corroborated.hashCode);
    _$hash = $jc(_$hash, uncorroborated.hashCode);
    _$hash = $jc(_$hash, unknown.hashCode);
    _$hash = $jc(_$hash, notApplicable.hashCode);
    _$hash = $jc(_$hash, share.hashCode);
    _$hash = $jc(_$hash, uncorroboratedOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationEvidenceCorroboration')
          ..add('corroborated', corroborated)
          ..add('uncorroborated', uncorroborated)
          ..add('unknown', unknown)
          ..add('notApplicable', notApplicable)
          ..add('share', share)
          ..add('uncorroboratedOnly', uncorroboratedOnly))
        .toString();
  }
}

class SituationEvidenceCorroborationBuilder
    implements
        Builder<SituationEvidenceCorroboration,
            SituationEvidenceCorroborationBuilder> {
  _$SituationEvidenceCorroboration? _$v;

  int? _corroborated;
  int? get corroborated => _$this._corroborated;
  set corroborated(int? corroborated) => _$this._corroborated = corroborated;

  int? _uncorroborated;
  int? get uncorroborated => _$this._uncorroborated;
  set uncorroborated(int? uncorroborated) =>
      _$this._uncorroborated = uncorroborated;

  int? _unknown;
  int? get unknown => _$this._unknown;
  set unknown(int? unknown) => _$this._unknown = unknown;

  int? _notApplicable;
  int? get notApplicable => _$this._notApplicable;
  set notApplicable(int? notApplicable) =>
      _$this._notApplicable = notApplicable;

  num? _share;
  num? get share => _$this._share;
  set share(num? share) => _$this._share = share;

  bool? _uncorroboratedOnly;
  bool? get uncorroboratedOnly => _$this._uncorroboratedOnly;
  set uncorroboratedOnly(bool? uncorroboratedOnly) =>
      _$this._uncorroboratedOnly = uncorroboratedOnly;

  SituationEvidenceCorroborationBuilder() {
    SituationEvidenceCorroboration._defaults(this);
  }

  SituationEvidenceCorroborationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _corroborated = $v.corroborated;
      _uncorroborated = $v.uncorroborated;
      _unknown = $v.unknown;
      _notApplicable = $v.notApplicable;
      _share = $v.share;
      _uncorroboratedOnly = $v.uncorroboratedOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationEvidenceCorroboration other) {
    _$v = other as _$SituationEvidenceCorroboration;
  }

  @override
  void update(void Function(SituationEvidenceCorroborationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationEvidenceCorroboration build() => _build();

  _$SituationEvidenceCorroboration _build() {
    final _$result = _$v ??
        _$SituationEvidenceCorroboration._(
          corroborated: BuiltValueNullFieldError.checkNotNull(
              corroborated, r'SituationEvidenceCorroboration', 'corroborated'),
          uncorroborated: BuiltValueNullFieldError.checkNotNull(uncorroborated,
              r'SituationEvidenceCorroboration', 'uncorroborated'),
          unknown: unknown,
          notApplicable: notApplicable,
          share: share,
          uncorroboratedOnly: uncorroboratedOnly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
