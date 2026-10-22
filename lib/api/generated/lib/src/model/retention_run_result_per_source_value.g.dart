// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retention_run_result_per_source_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetentionRunResultPerSourceValue
    extends RetentionRunResultPerSourceValue {
  @override
  final int? versionsDeleted;
  @override
  final int? floorSeq;

  factory _$RetentionRunResultPerSourceValue([
    void Function(RetentionRunResultPerSourceValueBuilder)? updates,
  ]) => (RetentionRunResultPerSourceValueBuilder()..update(updates))._build();

  _$RetentionRunResultPerSourceValue._({this.versionsDeleted, this.floorSeq})
    : super._();
  @override
  RetentionRunResultPerSourceValue rebuild(
    void Function(RetentionRunResultPerSourceValueBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RetentionRunResultPerSourceValueBuilder toBuilder() =>
      RetentionRunResultPerSourceValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetentionRunResultPerSourceValue &&
        versionsDeleted == other.versionsDeleted &&
        floorSeq == other.floorSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, versionsDeleted.hashCode);
    _$hash = $jc(_$hash, floorSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetentionRunResultPerSourceValue')
          ..add('versionsDeleted', versionsDeleted)
          ..add('floorSeq', floorSeq))
        .toString();
  }
}

class RetentionRunResultPerSourceValueBuilder
    implements
        Builder<
          RetentionRunResultPerSourceValue,
          RetentionRunResultPerSourceValueBuilder
        > {
  _$RetentionRunResultPerSourceValue? _$v;

  int? _versionsDeleted;
  int? get versionsDeleted => _$this._versionsDeleted;
  set versionsDeleted(int? versionsDeleted) =>
      _$this._versionsDeleted = versionsDeleted;

  int? _floorSeq;
  int? get floorSeq => _$this._floorSeq;
  set floorSeq(int? floorSeq) => _$this._floorSeq = floorSeq;

  RetentionRunResultPerSourceValueBuilder() {
    RetentionRunResultPerSourceValue._defaults(this);
  }

  RetentionRunResultPerSourceValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionsDeleted = $v.versionsDeleted;
      _floorSeq = $v.floorSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetentionRunResultPerSourceValue other) {
    _$v = other as _$RetentionRunResultPerSourceValue;
  }

  @override
  void update(void Function(RetentionRunResultPerSourceValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetentionRunResultPerSourceValue build() => _build();

  _$RetentionRunResultPerSourceValue _build() {
    final _$result =
        _$v ??
        _$RetentionRunResultPerSourceValue._(
          versionsDeleted: versionsDeleted,
          floorSeq: floorSeq,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
