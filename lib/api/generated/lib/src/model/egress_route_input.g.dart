// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egress_route_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressRouteInput extends EgressRouteInput {
  @override
  final String name;
  @override
  final String type;
  @override
  final bool? enabled;
  @override
  final String? url;
  @override
  final String? boundInterface;
  @override
  final EgressRouteInputSecrets? secrets;

  factory _$EgressRouteInput([
    void Function(EgressRouteInputBuilder)? updates,
  ]) => (EgressRouteInputBuilder()..update(updates))._build();

  _$EgressRouteInput._({
    required this.name,
    required this.type,
    this.enabled,
    this.url,
    this.boundInterface,
    this.secrets,
  }) : super._();
  @override
  EgressRouteInput rebuild(void Function(EgressRouteInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressRouteInputBuilder toBuilder() =>
      EgressRouteInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressRouteInput &&
        name == other.name &&
        type == other.type &&
        enabled == other.enabled &&
        url == other.url &&
        boundInterface == other.boundInterface &&
        secrets == other.secrets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, boundInterface.hashCode);
    _$hash = $jc(_$hash, secrets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EgressRouteInput')
          ..add('name', name)
          ..add('type', type)
          ..add('enabled', enabled)
          ..add('url', url)
          ..add('boundInterface', boundInterface)
          ..add('secrets', secrets))
        .toString();
  }
}

class EgressRouteInputBuilder
    implements Builder<EgressRouteInput, EgressRouteInputBuilder> {
  _$EgressRouteInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _boundInterface;
  String? get boundInterface => _$this._boundInterface;
  set boundInterface(String? boundInterface) =>
      _$this._boundInterface = boundInterface;

  EgressRouteInputSecretsBuilder? _secrets;
  EgressRouteInputSecretsBuilder get secrets =>
      _$this._secrets ??= EgressRouteInputSecretsBuilder();
  set secrets(EgressRouteInputSecretsBuilder? secrets) =>
      _$this._secrets = secrets;

  EgressRouteInputBuilder() {
    EgressRouteInput._defaults(this);
  }

  EgressRouteInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _enabled = $v.enabled;
      _url = $v.url;
      _boundInterface = $v.boundInterface;
      _secrets = $v.secrets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressRouteInput other) {
    _$v = other as _$EgressRouteInput;
  }

  @override
  void update(void Function(EgressRouteInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressRouteInput build() => _build();

  _$EgressRouteInput _build() {
    _$EgressRouteInput _$result;
    try {
      _$result =
          _$v ??
          _$EgressRouteInput._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'EgressRouteInput',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EgressRouteInput',
              'type',
            ),
            enabled: enabled,
            url: url,
            boundInterface: boundInterface,
            secrets: _secrets?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'secrets';
        _secrets?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EgressRouteInput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
