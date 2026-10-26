// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaStatus extends MfaStatus {
  @override
  final bool enabled;
  @override
  final DateTime? enrolledAt;
  @override
  final bool? required_;

  factory _$MfaStatus([void Function(MfaStatusBuilder)? updates]) =>
      (MfaStatusBuilder()..update(updates))._build();

  _$MfaStatus._({required this.enabled, this.enrolledAt, this.required_})
    : super._();
  @override
  MfaStatus rebuild(void Function(MfaStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaStatusBuilder toBuilder() => MfaStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaStatus &&
        enabled == other.enabled &&
        enrolledAt == other.enrolledAt &&
        required_ == other.required_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, enrolledAt.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MfaStatus')
          ..add('enabled', enabled)
          ..add('enrolledAt', enrolledAt)
          ..add('required_', required_))
        .toString();
  }
}

class MfaStatusBuilder implements Builder<MfaStatus, MfaStatusBuilder> {
  _$MfaStatus? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DateTime? _enrolledAt;
  DateTime? get enrolledAt => _$this._enrolledAt;
  set enrolledAt(DateTime? enrolledAt) => _$this._enrolledAt = enrolledAt;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  MfaStatusBuilder() {
    MfaStatus._defaults(this);
  }

  MfaStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _enrolledAt = $v.enrolledAt;
      _required_ = $v.required_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaStatus other) {
    _$v = other as _$MfaStatus;
  }

  @override
  void update(void Function(MfaStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaStatus build() => _build();

  _$MfaStatus _build() {
    final _$result =
        _$v ??
        _$MfaStatus._(
          enabled: BuiltValueNullFieldError.checkNotNull(
            enabled,
            r'MfaStatus',
            'enabled',
          ),
          enrolledAt: enrolledAt,
          required_: required_,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
