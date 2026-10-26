// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientLinks extends ClientLinks {
  @override
  final String? alert;
  @override
  final String? record;
  @override
  final String? briefingRun;
  @override
  final String? pair;
  @override
  final String? share;
  @override
  final String? activate;
  @override
  final String? passwordReset;

  factory _$ClientLinks([void Function(ClientLinksBuilder)? updates]) =>
      (ClientLinksBuilder()..update(updates))._build();

  _$ClientLinks._({
    this.alert,
    this.record,
    this.briefingRun,
    this.pair,
    this.share,
    this.activate,
    this.passwordReset,
  }) : super._();
  @override
  ClientLinks rebuild(void Function(ClientLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientLinksBuilder toBuilder() => ClientLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientLinks &&
        alert == other.alert &&
        record == other.record &&
        briefingRun == other.briefingRun &&
        pair == other.pair &&
        share == other.share &&
        activate == other.activate &&
        passwordReset == other.passwordReset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alert.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, briefingRun.hashCode);
    _$hash = $jc(_$hash, pair.hashCode);
    _$hash = $jc(_$hash, share.hashCode);
    _$hash = $jc(_$hash, activate.hashCode);
    _$hash = $jc(_$hash, passwordReset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientLinks')
          ..add('alert', alert)
          ..add('record', record)
          ..add('briefingRun', briefingRun)
          ..add('pair', pair)
          ..add('share', share)
          ..add('activate', activate)
          ..add('passwordReset', passwordReset))
        .toString();
  }
}

class ClientLinksBuilder implements Builder<ClientLinks, ClientLinksBuilder> {
  _$ClientLinks? _$v;

  String? _alert;
  String? get alert => _$this._alert;
  set alert(String? alert) => _$this._alert = alert;

  String? _record;
  String? get record => _$this._record;
  set record(String? record) => _$this._record = record;

  String? _briefingRun;
  String? get briefingRun => _$this._briefingRun;
  set briefingRun(String? briefingRun) => _$this._briefingRun = briefingRun;

  String? _pair;
  String? get pair => _$this._pair;
  set pair(String? pair) => _$this._pair = pair;

  String? _share;
  String? get share => _$this._share;
  set share(String? share) => _$this._share = share;

  String? _activate;
  String? get activate => _$this._activate;
  set activate(String? activate) => _$this._activate = activate;

  String? _passwordReset;
  String? get passwordReset => _$this._passwordReset;
  set passwordReset(String? passwordReset) =>
      _$this._passwordReset = passwordReset;

  ClientLinksBuilder() {
    ClientLinks._defaults(this);
  }

  ClientLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alert = $v.alert;
      _record = $v.record;
      _briefingRun = $v.briefingRun;
      _pair = $v.pair;
      _share = $v.share;
      _activate = $v.activate;
      _passwordReset = $v.passwordReset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientLinks other) {
    _$v = other as _$ClientLinks;
  }

  @override
  void update(void Function(ClientLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientLinks build() => _build();

  _$ClientLinks _build() {
    final _$result =
        _$v ??
        _$ClientLinks._(
          alert: alert,
          record: record,
          briefingRun: briefingRun,
          pair: pair,
          share: share,
          activate: activate,
          passwordReset: passwordReset,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
