// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_alerts_by_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestAlertsByStatus extends DigestAlertsByStatus {
  @override
  final int? firing;
  @override
  final int? acknowledged;
  @override
  final int? resolved;

  factory _$DigestAlertsByStatus([
    void Function(DigestAlertsByStatusBuilder)? updates,
  ]) => (DigestAlertsByStatusBuilder()..update(updates))._build();

  _$DigestAlertsByStatus._({this.firing, this.acknowledged, this.resolved})
    : super._();
  @override
  DigestAlertsByStatus rebuild(
    void Function(DigestAlertsByStatusBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DigestAlertsByStatusBuilder toBuilder() =>
      DigestAlertsByStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestAlertsByStatus &&
        firing == other.firing &&
        acknowledged == other.acknowledged &&
        resolved == other.resolved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firing.hashCode);
    _$hash = $jc(_$hash, acknowledged.hashCode);
    _$hash = $jc(_$hash, resolved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestAlertsByStatus')
          ..add('firing', firing)
          ..add('acknowledged', acknowledged)
          ..add('resolved', resolved))
        .toString();
  }
}

class DigestAlertsByStatusBuilder
    implements Builder<DigestAlertsByStatus, DigestAlertsByStatusBuilder> {
  _$DigestAlertsByStatus? _$v;

  int? _firing;
  int? get firing => _$this._firing;
  set firing(int? firing) => _$this._firing = firing;

  int? _acknowledged;
  int? get acknowledged => _$this._acknowledged;
  set acknowledged(int? acknowledged) => _$this._acknowledged = acknowledged;

  int? _resolved;
  int? get resolved => _$this._resolved;
  set resolved(int? resolved) => _$this._resolved = resolved;

  DigestAlertsByStatusBuilder() {
    DigestAlertsByStatus._defaults(this);
  }

  DigestAlertsByStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firing = $v.firing;
      _acknowledged = $v.acknowledged;
      _resolved = $v.resolved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestAlertsByStatus other) {
    _$v = other as _$DigestAlertsByStatus;
  }

  @override
  void update(void Function(DigestAlertsByStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestAlertsByStatus build() => _build();

  _$DigestAlertsByStatus _build() {
    final _$result =
        _$v ??
        _$DigestAlertsByStatus._(
          firing: firing,
          acknowledged: acknowledged,
          resolved: resolved,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
