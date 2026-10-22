// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_impact_request_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraImpactRequestRecord extends InfraImpactRequestRecord {
  @override
  final String sourceId;
  @override
  final String externalId;

  factory _$InfraImpactRequestRecord(
          [void Function(InfraImpactRequestRecordBuilder)? updates]) =>
      (InfraImpactRequestRecordBuilder()..update(updates))._build();

  _$InfraImpactRequestRecord._(
      {required this.sourceId, required this.externalId})
      : super._();
  @override
  InfraImpactRequestRecord rebuild(
          void Function(InfraImpactRequestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraImpactRequestRecordBuilder toBuilder() =>
      InfraImpactRequestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraImpactRequestRecord &&
        sourceId == other.sourceId &&
        externalId == other.externalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraImpactRequestRecord')
          ..add('sourceId', sourceId)
          ..add('externalId', externalId))
        .toString();
  }
}

class InfraImpactRequestRecordBuilder
    implements
        Builder<InfraImpactRequestRecord, InfraImpactRequestRecordBuilder> {
  _$InfraImpactRequestRecord? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  InfraImpactRequestRecordBuilder() {
    InfraImpactRequestRecord._defaults(this);
  }

  InfraImpactRequestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _externalId = $v.externalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraImpactRequestRecord other) {
    _$v = other as _$InfraImpactRequestRecord;
  }

  @override
  void update(void Function(InfraImpactRequestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraImpactRequestRecord build() => _build();

  _$InfraImpactRequestRecord _build() {
    final _$result = _$v ??
        _$InfraImpactRequestRecord._(
          sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId, r'InfraImpactRequestRecord', 'sourceId'),
          externalId: BuiltValueNullFieldError.checkNotNull(
              externalId, r'InfraImpactRequestRecord', 'externalId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
