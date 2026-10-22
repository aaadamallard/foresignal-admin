// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapping_preset_setup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MappingPresetSetup extends MappingPresetSetup {
  @override
  final String instructions;
  @override
  final String urlTemplate;
  @override
  final String? url;

  factory _$MappingPresetSetup([
    void Function(MappingPresetSetupBuilder)? updates,
  ]) => (MappingPresetSetupBuilder()..update(updates))._build();

  _$MappingPresetSetup._({
    required this.instructions,
    required this.urlTemplate,
    this.url,
  }) : super._();
  @override
  MappingPresetSetup rebuild(
    void Function(MappingPresetSetupBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MappingPresetSetupBuilder toBuilder() =>
      MappingPresetSetupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MappingPresetSetup &&
        instructions == other.instructions &&
        urlTemplate == other.urlTemplate &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instructions.hashCode);
    _$hash = $jc(_$hash, urlTemplate.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MappingPresetSetup')
          ..add('instructions', instructions)
          ..add('urlTemplate', urlTemplate)
          ..add('url', url))
        .toString();
  }
}

class MappingPresetSetupBuilder
    implements Builder<MappingPresetSetup, MappingPresetSetupBuilder> {
  _$MappingPresetSetup? _$v;

  String? _instructions;
  String? get instructions => _$this._instructions;
  set instructions(String? instructions) => _$this._instructions = instructions;

  String? _urlTemplate;
  String? get urlTemplate => _$this._urlTemplate;
  set urlTemplate(String? urlTemplate) => _$this._urlTemplate = urlTemplate;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  MappingPresetSetupBuilder() {
    MappingPresetSetup._defaults(this);
  }

  MappingPresetSetupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instructions = $v.instructions;
      _urlTemplate = $v.urlTemplate;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MappingPresetSetup other) {
    _$v = other as _$MappingPresetSetup;
  }

  @override
  void update(void Function(MappingPresetSetupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MappingPresetSetup build() => _build();

  _$MappingPresetSetup _build() {
    final _$result =
        _$v ??
        _$MappingPresetSetup._(
          instructions: BuiltValueNullFieldError.checkNotNull(
            instructions,
            r'MappingPresetSetup',
            'instructions',
          ),
          urlTemplate: BuiltValueNullFieldError.checkNotNull(
            urlTemplate,
            r'MappingPresetSetup',
            'urlTemplate',
          ),
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
