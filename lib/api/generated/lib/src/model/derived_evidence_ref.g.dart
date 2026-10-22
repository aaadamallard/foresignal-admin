// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'derived_evidence_ref.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DerivedEvidenceRef extends DerivedEvidenceRef {
  @override
  final String sourceId;
  @override
  final String externalId;
  @override
  final DateTime observedAt;

  factory _$DerivedEvidenceRef(
          [void Function(DerivedEvidenceRefBuilder)? updates]) =>
      (DerivedEvidenceRefBuilder()..update(updates))._build();

  _$DerivedEvidenceRef._(
      {required this.sourceId,
      required this.externalId,
      required this.observedAt})
      : super._();
  @override
  DerivedEvidenceRef rebuild(
          void Function(DerivedEvidenceRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DerivedEvidenceRefBuilder toBuilder() =>
      DerivedEvidenceRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DerivedEvidenceRef &&
        sourceId == other.sourceId &&
        externalId == other.externalId &&
        observedAt == other.observedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DerivedEvidenceRef')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId)
          ..add('observedAt', observedAt))
        .toString();
  }
}

class DerivedEvidenceRefBuilder
    implements Builder<DerivedEvidenceRef, DerivedEvidenceRefBuilder> {
  _$DerivedEvidenceRef? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  DerivedEvidenceRefBuilder() {
    DerivedEvidenceRef._defaults(this);
  }

  DerivedEvidenceRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _observedAt = $v.observedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DerivedEvidenceRef other) {
    _$v = other as _$DerivedEvidenceRef;
  }

  @override
  void update(void Function(DerivedEvidenceRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DerivedEvidenceRef build() => _build();

  _$DerivedEvidenceRef _build() {
    final _$result = _$v ??
        _$DerivedEvidenceRef._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'DerivedEvidenceRef', 'sourceId'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'DerivedEvidenceRef', 'externalId'),
          observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt, r'DerivedEvidenceRef', 'observedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
