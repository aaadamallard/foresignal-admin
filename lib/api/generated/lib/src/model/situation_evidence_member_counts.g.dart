// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_evidence_member_counts.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationEvidenceMemberCounts extends SituationEvidenceMemberCounts {
  @override
  final BuiltMap<String, int>? byType;
  @override
  final BuiltMap<String, int>? byFamily;

  factory _$SituationEvidenceMemberCounts([
    void Function(SituationEvidenceMemberCountsBuilder)? updates,
  ]) => (SituationEvidenceMemberCountsBuilder()..update(updates))._build();

  _$SituationEvidenceMemberCounts._({this.byType, this.byFamily}) : super._();
  @override
  SituationEvidenceMemberCounts rebuild(
    void Function(SituationEvidenceMemberCountsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationEvidenceMemberCountsBuilder toBuilder() =>
      SituationEvidenceMemberCountsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationEvidenceMemberCounts &&
        byType == other.byType &&
        byFamily == other.byFamily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byType.hashCode);
    _$hash = $jc(_$hash, byFamily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationEvidenceMemberCounts')
          ..add('byType', byType)
          ..add('byFamily', byFamily))
        .toString();
  }
}

class SituationEvidenceMemberCountsBuilder
    implements
        Builder<
          SituationEvidenceMemberCounts,
          SituationEvidenceMemberCountsBuilder
        > {
  _$SituationEvidenceMemberCounts? _$v;

  MapBuilder<String, int>? _byType;
  MapBuilder<String, int> get byType =>
      _$this._byType ??= MapBuilder<String, int>();
  set byType(MapBuilder<String, int>? byType) => _$this._byType = byType;

  MapBuilder<String, int>? _byFamily;
  MapBuilder<String, int> get byFamily =>
      _$this._byFamily ??= MapBuilder<String, int>();
  set byFamily(MapBuilder<String, int>? byFamily) =>
      _$this._byFamily = byFamily;

  SituationEvidenceMemberCountsBuilder() {
    SituationEvidenceMemberCounts._defaults(this);
  }

  SituationEvidenceMemberCountsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byType = $v.byType?.toBuilder();
      _byFamily = $v.byFamily?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationEvidenceMemberCounts other) {
    _$v = other as _$SituationEvidenceMemberCounts;
  }

  @override
  void update(void Function(SituationEvidenceMemberCountsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationEvidenceMemberCounts build() => _build();

  _$SituationEvidenceMemberCounts _build() {
    _$SituationEvidenceMemberCounts _$result;
    try {
      _$result =
          _$v ??
          _$SituationEvidenceMemberCounts._(
            byType: _byType?.build(),
            byFamily: _byFamily?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byType';
        _byType?.build();
        _$failedField = 'byFamily';
        _byFamily?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SituationEvidenceMemberCounts',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
