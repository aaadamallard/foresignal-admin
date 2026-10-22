// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushSettings extends PushSettings {
  @override
  final String? contact;
  @override
  final BuiltList<String>? allowedPrivateHosts;
  @override
  final String? defaultLang;

  factory _$PushSettings([void Function(PushSettingsBuilder)? updates]) =>
      (PushSettingsBuilder()..update(updates))._build();

  _$PushSettings._({this.contact, this.allowedPrivateHosts, this.defaultLang})
      : super._();
  @override
  PushSettings rebuild(void Function(PushSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushSettingsBuilder toBuilder() => PushSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSettings &&
        contact == other.contact &&
        allowedPrivateHosts == other.allowedPrivateHosts &&
        defaultLang == other.defaultLang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, allowedPrivateHosts.hashCode);
    _$hash = $jc(_$hash, defaultLang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushSettings')
          ..add('contact', contact)
          ..add('allowedPrivateHosts', allowedPrivateHosts)
          ..add('defaultLang', defaultLang))
        .toString();
  }
}

class PushSettingsBuilder
    implements Builder<PushSettings, PushSettingsBuilder> {
  _$PushSettings? _$v;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  ListBuilder<String>? _allowedPrivateHosts;
  ListBuilder<String> get allowedPrivateHosts =>
      _$this._allowedPrivateHosts ??= ListBuilder<String>();
  set allowedPrivateHosts(ListBuilder<String>? allowedPrivateHosts) =>
      _$this._allowedPrivateHosts = allowedPrivateHosts;

  String? _defaultLang;
  String? get defaultLang => _$this._defaultLang;
  set defaultLang(String? defaultLang) => _$this._defaultLang = defaultLang;

  PushSettingsBuilder() {
    PushSettings._defaults(this);
  }

  PushSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contact = $v.contact;
      _allowedPrivateHosts = $v.allowedPrivateHosts?.toBuilder();
      _defaultLang = $v.defaultLang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSettings other) {
    _$v = other as _$PushSettings;
  }

  @override
  void update(void Function(PushSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushSettings build() => _build();

  _$PushSettings _build() {
    _$PushSettings _$result;
    try {
      _$result = _$v ??
          _$PushSettings._(
            contact: contact,
            allowedPrivateHosts: _allowedPrivateHosts?.build(),
            defaultLang: defaultLang,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedPrivateHosts';
        _allowedPrivateHosts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PushSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
