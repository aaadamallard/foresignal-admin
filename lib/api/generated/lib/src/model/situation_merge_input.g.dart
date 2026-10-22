// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'situation_merge_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SituationMergeInput extends SituationMergeInput {
  @override
  final String intoId;
  @override
  final int? version;
  @override
  final String? reason;

  factory _$SituationMergeInput([
    void Function(SituationMergeInputBuilder)? updates,
  ]) => (SituationMergeInputBuilder()..update(updates))._build();

  _$SituationMergeInput._({required this.intoId, this.version, this.reason})
    : super._();
  @override
  SituationMergeInput rebuild(
    void Function(SituationMergeInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SituationMergeInputBuilder toBuilder() =>
      SituationMergeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SituationMergeInput &&
        intoId == other.intoId &&
        version == other.version &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, intoId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SituationMergeInput')
          ..add('intoId', intoId)
          ..add('version', version)
          ..add('reason', reason))
        .toString();
  }
}

class SituationMergeInputBuilder
    implements Builder<SituationMergeInput, SituationMergeInputBuilder> {
  _$SituationMergeInput? _$v;

  String? _intoId;
  String? get intoId => _$this._intoId;
  set intoId(String? intoId) => _$this._intoId = intoId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SituationMergeInputBuilder() {
    SituationMergeInput._defaults(this);
  }

  SituationMergeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intoId = $v.intoId;
      _version = $v.version;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SituationMergeInput other) {
    _$v = other as _$SituationMergeInput;
  }

  @override
  void update(void Function(SituationMergeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SituationMergeInput build() => _build();

  _$SituationMergeInput _build() {
    final _$result =
        _$v ??
        _$SituationMergeInput._(
          intoId: BuiltValueNullFieldError.checkNotNull(
            intoId,
            r'SituationMergeInput',
            'intoId',
          ),
          version: version,
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
