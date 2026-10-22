// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'digest_alerts_by_severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DigestAlertsBySeverity extends DigestAlertsBySeverity {
  @override
  final int? critical;
  @override
  final int? warning;
  @override
  final int? info;

  factory _$DigestAlertsBySeverity(
          [void Function(DigestAlertsBySeverityBuilder)? updates]) =>
      (DigestAlertsBySeverityBuilder()..update(updates))._build();

  _$DigestAlertsBySeverity._({this.critical, this.warning, this.info})
      : super._();
  @override
  DigestAlertsBySeverity rebuild(
          void Function(DigestAlertsBySeverityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DigestAlertsBySeverityBuilder toBuilder() =>
      DigestAlertsBySeverityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DigestAlertsBySeverity &&
        critical == other.critical &&
        warning == other.warning &&
        info == other.info;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, critical.hashCode);
    _$hash = $jc(_$hash, warning.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DigestAlertsBySeverity')
          ..add('critical', critical)
          ..add('warning', warning)
          ..add('info', info))
        .toString();
  }
}

class DigestAlertsBySeverityBuilder
    implements Builder<DigestAlertsBySeverity, DigestAlertsBySeverityBuilder> {
  _$DigestAlertsBySeverity? _$v;

  int? _critical;
  int? get critical => _$this._critical;
  set critical(int? critical) => _$this._critical = critical;

  int? _warning;
  int? get warning => _$this._warning;
  set warning(int? warning) => _$this._warning = warning;

  int? _info;
  int? get info => _$this._info;
  set info(int? info) => _$this._info = info;

  DigestAlertsBySeverityBuilder() {
    DigestAlertsBySeverity._defaults(this);
  }

  DigestAlertsBySeverityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _critical = $v.critical;
      _warning = $v.warning;
      _info = $v.info;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DigestAlertsBySeverity other) {
    _$v = other as _$DigestAlertsBySeverity;
  }

  @override
  void update(void Function(DigestAlertsBySeverityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DigestAlertsBySeverity build() => _build();

  _$DigestAlertsBySeverity _build() {
    final _$result = _$v ??
        _$DigestAlertsBySeverity._(
          critical: critical,
          warning: warning,
          info: info,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
