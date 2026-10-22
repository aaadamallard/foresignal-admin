// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outbound_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutboundSettings extends OutboundSettings {
  @override
  final BuiltList<String>? allowHosts;
  @override
  final BuiltList<String>? allowCidrs;
  @override
  final BuiltList<String>? denyHosts;
  @override
  final BuiltList<String>? denyCidrs;

  factory _$OutboundSettings(
          [void Function(OutboundSettingsBuilder)? updates]) =>
      (OutboundSettingsBuilder()..update(updates))._build();

  _$OutboundSettings._(
      {this.allowHosts, this.allowCidrs, this.denyHosts, this.denyCidrs})
      : super._();
  @override
  OutboundSettings rebuild(void Function(OutboundSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutboundSettingsBuilder toBuilder() =>
      OutboundSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutboundSettings &&
        allowHosts == other.allowHosts &&
        allowCidrs == other.allowCidrs &&
        denyHosts == other.denyHosts &&
        denyCidrs == other.denyCidrs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowHosts.hashCode);
    _$hash = $jc(_$hash, allowCidrs.hashCode);
    _$hash = $jc(_$hash, denyHosts.hashCode);
    _$hash = $jc(_$hash, denyCidrs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutboundSettings')
          ..add('allowHosts', allowHosts)
          ..add('allowCidrs', allowCidrs)
          ..add('denyHosts', denyHosts)
          ..add('denyCidrs', denyCidrs))
        .toString();
  }
}

class OutboundSettingsBuilder
    implements Builder<OutboundSettings, OutboundSettingsBuilder> {
  _$OutboundSettings? _$v;

  ListBuilder<String>? _allowHosts;
  ListBuilder<String> get allowHosts =>
      _$this._allowHosts ??= ListBuilder<String>();
  set allowHosts(ListBuilder<String>? allowHosts) =>
      _$this._allowHosts = allowHosts;

  ListBuilder<String>? _allowCidrs;
  ListBuilder<String> get allowCidrs =>
      _$this._allowCidrs ??= ListBuilder<String>();
  set allowCidrs(ListBuilder<String>? allowCidrs) =>
      _$this._allowCidrs = allowCidrs;

  ListBuilder<String>? _denyHosts;
  ListBuilder<String> get denyHosts =>
      _$this._denyHosts ??= ListBuilder<String>();
  set denyHosts(ListBuilder<String>? denyHosts) =>
      _$this._denyHosts = denyHosts;

  ListBuilder<String>? _denyCidrs;
  ListBuilder<String> get denyCidrs =>
      _$this._denyCidrs ??= ListBuilder<String>();
  set denyCidrs(ListBuilder<String>? denyCidrs) =>
      _$this._denyCidrs = denyCidrs;

  OutboundSettingsBuilder() {
    OutboundSettings._defaults(this);
  }

  OutboundSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowHosts = $v.allowHosts?.toBuilder();
      _allowCidrs = $v.allowCidrs?.toBuilder();
      _denyHosts = $v.denyHosts?.toBuilder();
      _denyCidrs = $v.denyCidrs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutboundSettings other) {
    _$v = other as _$OutboundSettings;
  }

  @override
  void update(void Function(OutboundSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutboundSettings build() => _build();

  _$OutboundSettings _build() {
    _$OutboundSettings _$result;
    try {
      _$result = _$v ??
          _$OutboundSettings._(
            allowHosts: _allowHosts?.build(),
            allowCidrs: _allowCidrs?.build(),
            denyHosts: _denyHosts?.build(),
            denyCidrs: _denyCidrs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowHosts';
        _allowHosts?.build();
        _$failedField = 'allowCidrs';
        _allowCidrs?.build();
        _$failedField = 'denyHosts';
        _denyHosts?.build();
        _$failedField = 'denyCidrs';
        _denyCidrs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OutboundSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
