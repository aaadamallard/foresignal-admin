// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_rejection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingRejection extends MappingRejection {
  @override
  final int index;
  @override
  final String reason;
  @override
  final String? externalId;

  factory _$MappingRejection([
    void Function(MappingRejectionBuilder)? updates,
  ]) => (MappingRejectionBuilder()..update(updates))._build();

  _$MappingRejection._({
    required this.index,
    required this.reason,
    this.externalId,
  }) : super._();
  @override
  MappingRejection rebuild(void Function(MappingRejectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MappingRejectionBuilder toBuilder() =>
      MappingRejectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingRejection &&
        index == other.index &&
        reason == other.reason &&
        externalId == other.externalId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingRejection')
          ..add('index', index)
          ..add('reason', reason)
          ..add('externalId', externalId))
        .toString();
  }
}

class MappingRejectionBuilder
    implements Builder<MappingRejection, MappingRejectionBuilder> {
  _$MappingRejection? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  MappingRejectionBuilder() {
    MappingRejection._defaults(this);
  }

  MappingRejectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _reason = $v.reason;
      _externalId = $v.externalId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingRejection other) {
    _$v = other as _$MappingRejection;
  }

  @override
  void update(void Function(MappingRejectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingRejection build() => _build();

  _$MappingRejection _build() {
    final _$result =
        _$v ??
        _$MappingRejection._(
          index: BuiltValueNullFieldError.checkNotNull(
            index,
            r'MappingRejection',
            'index',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'MappingRejection',
            'reason',
          ),
          externalId: externalId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
