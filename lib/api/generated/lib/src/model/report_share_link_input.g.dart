// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_share_link_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportShareLinkInput extends ReportShareLinkInput {
  @override
  final DateTime? expiresAt;

  factory _$ReportShareLinkInput([
    void Function(ReportShareLinkInputBuilder)? updates,
  ]) => (ReportShareLinkInputBuilder()..update(updates))._build();

  _$ReportShareLinkInput._({this.expiresAt}) : super._();
  @override
  ReportShareLinkInput rebuild(
    void Function(ReportShareLinkInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportShareLinkInputBuilder toBuilder() =>
      ReportShareLinkInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportShareLinkInput && expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ReportShareLinkInput',
    )..add('expiresAt', expiresAt)).toString();
  }
}

class ReportShareLinkInputBuilder
    implements Builder<ReportShareLinkInput, ReportShareLinkInputBuilder> {
  _$ReportShareLinkInput? _$v;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ReportShareLinkInputBuilder() {
    ReportShareLinkInput._defaults(this);
  }

  ReportShareLinkInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportShareLinkInput other) {
    _$v = other as _$ReportShareLinkInput;
  }

  @override
  void update(void Function(ReportShareLinkInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportShareLinkInput build() => _build();

  _$ReportShareLinkInput _build() {
    final _$result = _$v ?? _$ReportShareLinkInput._(expiresAt: expiresAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
