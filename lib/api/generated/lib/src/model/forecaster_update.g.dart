// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecaster_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecasterUpdate extends ForecasterUpdate {
  @override
  final bool active;
  @override
  final BuiltMap<String, JsonObject?>? config;
  @override
  final String? name;

  factory _$ForecasterUpdate(
          [void Function(ForecasterUpdateBuilder)? updates]) =>
      (ForecasterUpdateBuilder()..update(updates))._build();

  _$ForecasterUpdate._({required this.active, this.config, this.name})
      : super._();
  @override
  ForecasterUpdate rebuild(void Function(ForecasterUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecasterUpdateBuilder toBuilder() =>
      ForecasterUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecasterUpdate &&
        active == other.active &&
        config == other.config &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecasterUpdate')
          ..add('active', active)
          ..add('config', config)
          ..add('name', name))
        .toString();
  }
}

class ForecasterUpdateBuilder
    implements Builder<ForecasterUpdate, ForecasterUpdateBuilder> {
  _$ForecasterUpdate? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ForecasterUpdateBuilder() {
    ForecasterUpdate._defaults(this);
  }

  ForecasterUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _config = $v.config?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecasterUpdate other) {
    _$v = other as _$ForecasterUpdate;
  }

  @override
  void update(void Function(ForecasterUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecasterUpdate build() => _build();

  _$ForecasterUpdate _build() {
    _$ForecasterUpdate _$result;
    try {
      _$result = _$v ??
          _$ForecasterUpdate._(
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'ForecasterUpdate', 'active'),
            config: _config?.build(),
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ForecasterUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
