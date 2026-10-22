// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sink_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SinkUpdate extends SinkUpdate {
  @override
  final String name;
  @override
  final bool? enabled;
  @override
  final BuiltMap<String, JsonObject?> config;
  @override
  final BuiltMap<String, String?>? secrets;
  @override
  final SinkFilter? filter;

  factory _$SinkUpdate([void Function(SinkUpdateBuilder)? updates]) =>
      (SinkUpdateBuilder()..update(updates))._build();

  _$SinkUpdate._(
      {required this.name,
      this.enabled,
      required this.config,
      this.secrets,
      this.filter})
      : super._();
  @override
  SinkUpdate rebuild(void Function(SinkUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SinkUpdateBuilder toBuilder() => SinkUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SinkUpdate &&
        name == other.name &&
        enabled == other.enabled &&
        config == other.config &&
        secrets == other.secrets &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SinkUpdate')
          ..add('name', name)
          ..add('enabled', enabled)
          ..add('config', config)
          ..add('secrets', secrets)
          ..add('filter', filter))
        .toString();
  }
}

class SinkUpdateBuilder implements Builder<SinkUpdate, SinkUpdateBuilder> {
  _$SinkUpdate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  MapBuilder<String, String?>? _secrets;
  MapBuilder<String, String?> get secrets =>
      _$this._secrets ??= MapBuilder<String, String?>();
  set secrets(MapBuilder<String, String?>? secrets) =>
      _$this._secrets = secrets;

  SinkFilterBuilder? _filter;
  SinkFilterBuilder get filter => _$this._filter ??= SinkFilterBuilder();
  set filter(SinkFilterBuilder? filter) => _$this._filter = filter;

  SinkUpdateBuilder() {
    SinkUpdate._defaults(this);
  }

  SinkUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _enabled = $v.enabled;
      _config = $v.config.toBuilder();
      _secrets = $v.secrets?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SinkUpdate other) {
    _$v = other as _$SinkUpdate;
  }

  @override
  void update(void Function(SinkUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SinkUpdate build() => _build();

  _$SinkUpdate _build() {
    _$SinkUpdate _$result;
    try {
      _$result = _$v ??
          _$SinkUpdate._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SinkUpdate', 'name'),
            enabled: enabled,
            config: config.build(),
            secrets: _secrets?.build(),
            filter: _filter?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        config.build();
        _$failedField = 'secrets';
        _secrets?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SinkUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
