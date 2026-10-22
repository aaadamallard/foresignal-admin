// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposed_patch_sanity_checks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProposedPatchSanityChecks extends ProposedPatchSanityChecks {
  @override
  final bool? bracesBalanced;
  @override
  final bool? classNameUnchanged;

  factory _$ProposedPatchSanityChecks(
          [void Function(ProposedPatchSanityChecksBuilder)? updates]) =>
      (ProposedPatchSanityChecksBuilder()..update(updates))._build();

  _$ProposedPatchSanityChecks._({this.bracesBalanced, this.classNameUnchanged})
      : super._();
  @override
  ProposedPatchSanityChecks rebuild(
          void Function(ProposedPatchSanityChecksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProposedPatchSanityChecksBuilder toBuilder() =>
      ProposedPatchSanityChecksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProposedPatchSanityChecks &&
        bracesBalanced == other.bracesBalanced &&
        classNameUnchanged == other.classNameUnchanged;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bracesBalanced.hashCode);
    _$hash = $jc(_$hash, classNameUnchanged.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProposedPatchSanityChecks')
          ..add('bracesBalanced', bracesBalanced)
          ..add('classNameUnchanged', classNameUnchanged))
        .toString();
  }
}

class ProposedPatchSanityChecksBuilder
    implements
        Builder<ProposedPatchSanityChecks, ProposedPatchSanityChecksBuilder> {
  _$ProposedPatchSanityChecks? _$v;

  bool? _bracesBalanced;
  bool? get bracesBalanced => _$this._bracesBalanced;
  set bracesBalanced(bool? bracesBalanced) =>
      _$this._bracesBalanced = bracesBalanced;

  bool? _classNameUnchanged;
  bool? get classNameUnchanged => _$this._classNameUnchanged;
  set classNameUnchanged(bool? classNameUnchanged) =>
      _$this._classNameUnchanged = classNameUnchanged;

  ProposedPatchSanityChecksBuilder() {
    ProposedPatchSanityChecks._defaults(this);
  }

  ProposedPatchSanityChecksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bracesBalanced = $v.bracesBalanced;
      _classNameUnchanged = $v.classNameUnchanged;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProposedPatchSanityChecks other) {
    _$v = other as _$ProposedPatchSanityChecks;
  }

  @override
  void update(void Function(ProposedPatchSanityChecksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProposedPatchSanityChecks build() => _build();

  _$ProposedPatchSanityChecks _build() {
    final _$result = _$v ??
        _$ProposedPatchSanityChecks._(
          bracesBalanced: bracesBalanced,
          classNameUnchanged: classNameUnchanged,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
