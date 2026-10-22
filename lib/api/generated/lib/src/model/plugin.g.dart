// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PluginAbiEnum _$pluginAbiEnum_number1 = const PluginAbiEnum._('number1');

PluginAbiEnum _$pluginAbiEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$pluginAbiEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PluginAbiEnum> _$pluginAbiEnumValues =
    BuiltSet<PluginAbiEnum>(const <PluginAbiEnum>[
  _$pluginAbiEnum_number1,
]);

const PluginKindEnum _$pluginKindEnum_parser = const PluginKindEnum._('parser');

PluginKindEnum _$pluginKindEnumValueOf(String name) {
  switch (name) {
    case 'parser':
      return _$pluginKindEnum_parser;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PluginKindEnum> _$pluginKindEnumValues =
    BuiltSet<PluginKindEnum>(const <PluginKindEnum>[
  _$pluginKindEnum_parser,
]);

const PluginStateEnum _$pluginStateEnum_disabled =
    const PluginStateEnum._('disabled');
const PluginStateEnum _$pluginStateEnum_enabled =
    const PluginStateEnum._('enabled');
const PluginStateEnum _$pluginStateEnum_hashMismatch =
    const PluginStateEnum._('hashMismatch');
const PluginStateEnum _$pluginStateEnum_error =
    const PluginStateEnum._('error');

PluginStateEnum _$pluginStateEnumValueOf(String name) {
  switch (name) {
    case 'disabled':
      return _$pluginStateEnum_disabled;
    case 'enabled':
      return _$pluginStateEnum_enabled;
    case 'hashMismatch':
      return _$pluginStateEnum_hashMismatch;
    case 'error':
      return _$pluginStateEnum_error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PluginStateEnum> _$pluginStateEnumValues =
    BuiltSet<PluginStateEnum>(const <PluginStateEnum>[
  _$pluginStateEnum_disabled,
  _$pluginStateEnum_enabled,
  _$pluginStateEnum_hashMismatch,
  _$pluginStateEnum_error,
]);

Serializer<PluginAbiEnum> _$pluginAbiEnumSerializer =
    _$PluginAbiEnumSerializer();
Serializer<PluginKindEnum> _$pluginKindEnumSerializer =
    _$PluginKindEnumSerializer();
Serializer<PluginStateEnum> _$pluginStateEnumSerializer =
    _$PluginStateEnumSerializer();

class _$PluginAbiEnumSerializer implements PrimitiveSerializer<PluginAbiEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[PluginAbiEnum];
  @override
  final String wireName = 'PluginAbiEnum';

  @override
  Object serialize(Serializers serializers, PluginAbiEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PluginAbiEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PluginAbiEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PluginKindEnumSerializer
    implements PrimitiveSerializer<PluginKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'parser': 'parser',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'parser': 'parser',
  };

  @override
  final Iterable<Type> types = const <Type>[PluginKindEnum];
  @override
  final String wireName = 'PluginKindEnum';

  @override
  Object serialize(Serializers serializers, PluginKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PluginKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PluginKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PluginStateEnumSerializer
    implements PrimitiveSerializer<PluginStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'disabled': 'disabled',
    'enabled': 'enabled',
    'hashMismatch': 'hash-mismatch',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'disabled': 'disabled',
    'enabled': 'enabled',
    'hash-mismatch': 'hashMismatch',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[PluginStateEnum];
  @override
  final String wireName = 'PluginStateEnum';

  @override
  Object serialize(Serializers serializers, PluginStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PluginStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PluginStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Plugin extends Plugin {
  @override
  final String name;
  @override
  final String version;
  @override
  final PluginAbiEnum abi;
  @override
  final PluginKindEnum kind;
  @override
  final String sha256;
  @override
  final String? actualSha256;
  @override
  final bool hashMatches;
  @override
  final bool enabled;
  @override
  final PluginStateEnum state;
  @override
  final String? error;
  @override
  final BuiltList<String>? sourceIds;
  @override
  final DateTime? loadedAt;

  factory _$Plugin([void Function(PluginBuilder)? updates]) =>
      (PluginBuilder()..update(updates))._build();

  _$Plugin._(
      {required this.name,
      required this.version,
      required this.abi,
      required this.kind,
      required this.sha256,
      this.actualSha256,
      required this.hashMatches,
      required this.enabled,
      required this.state,
      this.error,
      this.sourceIds,
      this.loadedAt})
      : super._();
  @override
  Plugin rebuild(void Function(PluginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PluginBuilder toBuilder() => PluginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Plugin &&
        name == other.name &&
        version == other.version &&
        abi == other.abi &&
        kind == other.kind &&
        sha256 == other.sha256 &&
        actualSha256 == other.actualSha256 &&
        hashMatches == other.hashMatches &&
        enabled == other.enabled &&
        state == other.state &&
        error == other.error &&
        sourceIds == other.sourceIds &&
        loadedAt == other.loadedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, abi.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, actualSha256.hashCode);
    _$hash = $jc(_$hash, hashMatches.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, sourceIds.hashCode);
    _$hash = $jc(_$hash, loadedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Plugin')
          ..add('name', name)
          ..add('version', version)
          ..add('abi', abi)
          ..add('kind', kind)
          ..add('sha256', sha256)
          ..add('actualSha256', actualSha256)
          ..add('hashMatches', hashMatches)
          ..add('enabled', enabled)
          ..add('state', state)
          ..add('error', error)
          ..add('sourceIds', sourceIds)
          ..add('loadedAt', loadedAt))
        .toString();
  }
}

class PluginBuilder implements Builder<Plugin, PluginBuilder> {
  _$Plugin? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  PluginAbiEnum? _abi;
  PluginAbiEnum? get abi => _$this._abi;
  set abi(PluginAbiEnum? abi) => _$this._abi = abi;

  PluginKindEnum? _kind;
  PluginKindEnum? get kind => _$this._kind;
  set kind(PluginKindEnum? kind) => _$this._kind = kind;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _actualSha256;
  String? get actualSha256 => _$this._actualSha256;
  set actualSha256(String? actualSha256) => _$this._actualSha256 = actualSha256;

  bool? _hashMatches;
  bool? get hashMatches => _$this._hashMatches;
  set hashMatches(bool? hashMatches) => _$this._hashMatches = hashMatches;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  PluginStateEnum? _state;
  PluginStateEnum? get state => _$this._state;
  set state(PluginStateEnum? state) => _$this._state = state;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ListBuilder<String>? _sourceIds;
  ListBuilder<String> get sourceIds =>
      _$this._sourceIds ??= ListBuilder<String>();
  set sourceIds(ListBuilder<String>? sourceIds) =>
      _$this._sourceIds = sourceIds;

  DateTime? _loadedAt;
  DateTime? get loadedAt => _$this._loadedAt;
  set loadedAt(DateTime? loadedAt) => _$this._loadedAt = loadedAt;

  PluginBuilder() {
    Plugin._defaults(this);
  }

  PluginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _version = $v.version;
      _abi = $v.abi;
      _kind = $v.kind;
      _sha256 = $v.sha256;
      _actualSha256 = $v.actualSha256;
      _hashMatches = $v.hashMatches;
      _enabled = $v.enabled;
      _state = $v.state;
      _error = $v.error;
      _sourceIds = $v.sourceIds?.toBuilder();
      _loadedAt = $v.loadedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Plugin other) {
    _$v = other as _$Plugin;
  }

  @override
  void update(void Function(PluginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Plugin build() => _build();

  _$Plugin _build() {
    _$Plugin _$result;
    try {
      _$result = _$v ??
          _$Plugin._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Plugin', 'name'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'Plugin', 'version'),
            abi: BuiltValueNullFieldError.checkNotNull(abi, r'Plugin', 'abi'),
            kind:
                BuiltValueNullFieldError.checkNotNull(kind, r'Plugin', 'kind'),
            sha256: BuiltValueNullFieldError.checkNotNull(
                sha256, r'Plugin', 'sha256'),
            actualSha256: actualSha256,
            hashMatches: BuiltValueNullFieldError.checkNotNull(
                hashMatches, r'Plugin', 'hashMatches'),
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'Plugin', 'enabled'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'Plugin', 'state'),
            error: error,
            sourceIds: _sourceIds?.build(),
            loadedAt: loadedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceIds';
        _sourceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Plugin', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
