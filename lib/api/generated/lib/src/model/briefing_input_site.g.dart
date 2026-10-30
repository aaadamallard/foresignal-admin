// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'briefing_input_site.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BriefingInputSite extends BriefingInputSite {
  @override
  final bool? enabled;
  @override
  final bool? shareable;

  factory _$BriefingInputSite([
    void Function(BriefingInputSiteBuilder)? updates,
  ]) => (BriefingInputSiteBuilder()..update(updates))._build();

  _$BriefingInputSite._({this.enabled, this.shareable}) : super._();
  @override
  BriefingInputSite rebuild(void Function(BriefingInputSiteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BriefingInputSiteBuilder toBuilder() =>
      BriefingInputSiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BriefingInputSite &&
        enabled == other.enabled &&
        shareable == other.shareable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, shareable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BriefingInputSite')
          ..add('enabled', enabled)
          ..add('shareable', shareable))
        .toString();
  }
}

class BriefingInputSiteBuilder
    implements Builder<BriefingInputSite, BriefingInputSiteBuilder> {
  _$BriefingInputSite? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _shareable;
  bool? get shareable => _$this._shareable;
  set shareable(bool? shareable) => _$this._shareable = shareable;

  BriefingInputSiteBuilder() {
    BriefingInputSite._defaults(this);
  }

  BriefingInputSiteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _shareable = $v.shareable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BriefingInputSite other) {
    _$v = other as _$BriefingInputSite;
  }

  @override
  void update(void Function(BriefingInputSiteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BriefingInputSite build() => _build();

  _$BriefingInputSite _build() {
    final _$result =
        _$v ?? _$BriefingInputSite._(enabled: enabled, shareable: shareable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
