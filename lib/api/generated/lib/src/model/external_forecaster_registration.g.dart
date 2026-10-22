// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_forecaster_registration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalForecasterRegistration extends ExternalForecasterRegistration {
  @override
  final String id;
  @override
  final String? name;
  @override
  final BuiltMap<String, JsonObject?>? config;

  factory _$ExternalForecasterRegistration(
          [void Function(ExternalForecasterRegistrationBuilder)? updates]) =>
      (ExternalForecasterRegistrationBuilder()..update(updates))._build();

  _$ExternalForecasterRegistration._({required this.id, this.name, this.config})
      : super._();
  @override
  ExternalForecasterRegistration rebuild(
          void Function(ExternalForecasterRegistrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalForecasterRegistrationBuilder toBuilder() =>
      ExternalForecasterRegistrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalForecasterRegistration &&
        id == other.id &&
        name == other.name &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalForecasterRegistration')
          ..add('id', id)
          ..add('name', name)
          ..add('config', config))
        .toString();
  }
}

class ExternalForecasterRegistrationBuilder
    implements
        Builder<ExternalForecasterRegistration,
            ExternalForecasterRegistrationBuilder> {
  _$ExternalForecasterRegistration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MapBuilder<String, JsonObject?>? _config;
  MapBuilder<String, JsonObject?> get config =>
      _$this._config ??= MapBuilder<String, JsonObject?>();
  set config(MapBuilder<String, JsonObject?>? config) =>
      _$this._config = config;

  ExternalForecasterRegistrationBuilder() {
    ExternalForecasterRegistration._defaults(this);
  }

  ExternalForecasterRegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _config = $v.config?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalForecasterRegistration other) {
    _$v = other as _$ExternalForecasterRegistration;
  }

  @override
  void update(void Function(ExternalForecasterRegistrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalForecasterRegistration build() => _build();

  _$ExternalForecasterRegistration _build() {
    _$ExternalForecasterRegistration _$result;
    try {
      _$result = _$v ??
          _$ExternalForecasterRegistration._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ExternalForecasterRegistration', 'id'),
            name: name,
            config: _config?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExternalForecasterRegistration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
