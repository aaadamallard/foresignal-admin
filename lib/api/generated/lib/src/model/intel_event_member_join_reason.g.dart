// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_event_member_join_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelEventMemberJoinReason extends IntelEventMemberJoinReason {
  @override
  final String? clause;
  @override
  final num? distanceKm;
  @override
  final num? dtMinutes;
  @override
  final BuiltList<String>? matchedKeys;
  @override
  final String? regionTag;

  factory _$IntelEventMemberJoinReason([
    void Function(IntelEventMemberJoinReasonBuilder)? updates,
  ]) => (IntelEventMemberJoinReasonBuilder()..update(updates))._build();

  _$IntelEventMemberJoinReason._({
    this.clause,
    this.distanceKm,
    this.dtMinutes,
    this.matchedKeys,
    this.regionTag,
  }) : super._();
  @override
  IntelEventMemberJoinReason rebuild(
    void Function(IntelEventMemberJoinReasonBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelEventMemberJoinReasonBuilder toBuilder() =>
      IntelEventMemberJoinReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelEventMemberJoinReason &&
        clause == other.clause &&
        distanceKm == other.distanceKm &&
        dtMinutes == other.dtMinutes &&
        matchedKeys == other.matchedKeys &&
        regionTag == other.regionTag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clause.hashCode);
    _$hash = $jc(_$hash, distanceKm.hashCode);
    _$hash = $jc(_$hash, dtMinutes.hashCode);
    _$hash = $jc(_$hash, matchedKeys.hashCode);
    _$hash = $jc(_$hash, regionTag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelEventMemberJoinReason')
          ..add('clause', clause)
          ..add('distanceKm', distanceKm)
          ..add('dtMinutes', dtMinutes)
          ..add('matchedKeys', matchedKeys)
          ..add('regionTag', regionTag))
        .toString();
  }
}

class IntelEventMemberJoinReasonBuilder
    implements
        Builder<IntelEventMemberJoinReason, IntelEventMemberJoinReasonBuilder> {
  _$IntelEventMemberJoinReason? _$v;

  String? _clause;
  String? get clause => _$this._clause;
  set clause(String? clause) => _$this._clause = clause;

  num? _distanceKm;
  num? get distanceKm => _$this._distanceKm;
  set distanceKm(num? distanceKm) => _$this._distanceKm = distanceKm;

  num? _dtMinutes;
  num? get dtMinutes => _$this._dtMinutes;
  set dtMinutes(num? dtMinutes) => _$this._dtMinutes = dtMinutes;

  ListBuilder<String>? _matchedKeys;
  ListBuilder<String> get matchedKeys =>
      _$this._matchedKeys ??= ListBuilder<String>();
  set matchedKeys(ListBuilder<String>? matchedKeys) =>
      _$this._matchedKeys = matchedKeys;

  String? _regionTag;
  String? get regionTag => _$this._regionTag;
  set regionTag(String? regionTag) => _$this._regionTag = regionTag;

  IntelEventMemberJoinReasonBuilder() {
    IntelEventMemberJoinReason._defaults(this);
  }

  IntelEventMemberJoinReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clause = $v.clause;
      _distanceKm = $v.distanceKm;
      _dtMinutes = $v.dtMinutes;
      _matchedKeys = $v.matchedKeys?.toBuilder();
      _regionTag = $v.regionTag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelEventMemberJoinReason other) {
    _$v = other as _$IntelEventMemberJoinReason;
  }

  @override
  void update(void Function(IntelEventMemberJoinReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelEventMemberJoinReason build() => _build();

  _$IntelEventMemberJoinReason _build() {
    _$IntelEventMemberJoinReason _$result;
    try {
      _$result =
          _$v ??
          _$IntelEventMemberJoinReason._(
            clause: clause,
            distanceKm: distanceKm,
            dtMinutes: dtMinutes,
            matchedKeys: _matchedKeys?.build(),
            regionTag: regionTag,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchedKeys';
        _matchedKeys?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntelEventMemberJoinReason',
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
