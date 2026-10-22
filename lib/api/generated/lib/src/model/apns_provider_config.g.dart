// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apns_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApnsProviderConfigKeyEnvironmentEnum
    _$apnsProviderConfigKeyEnvironmentEnum_sandbox =
    const ApnsProviderConfigKeyEnvironmentEnum._('sandbox');
const ApnsProviderConfigKeyEnvironmentEnum
    _$apnsProviderConfigKeyEnvironmentEnum_production =
    const ApnsProviderConfigKeyEnvironmentEnum._('production');
const ApnsProviderConfigKeyEnvironmentEnum
    _$apnsProviderConfigKeyEnvironmentEnum_both =
    const ApnsProviderConfigKeyEnvironmentEnum._('both');

ApnsProviderConfigKeyEnvironmentEnum
    _$apnsProviderConfigKeyEnvironmentEnumValueOf(String name) {
  switch (name) {
    case 'sandbox':
      return _$apnsProviderConfigKeyEnvironmentEnum_sandbox;
    case 'production':
      return _$apnsProviderConfigKeyEnvironmentEnum_production;
    case 'both':
      return _$apnsProviderConfigKeyEnvironmentEnum_both;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ApnsProviderConfigKeyEnvironmentEnum>
    _$apnsProviderConfigKeyEnvironmentEnumValues = BuiltSet<
        ApnsProviderConfigKeyEnvironmentEnum>(const <ApnsProviderConfigKeyEnvironmentEnum>[
  _$apnsProviderConfigKeyEnvironmentEnum_sandbox,
  _$apnsProviderConfigKeyEnvironmentEnum_production,
  _$apnsProviderConfigKeyEnvironmentEnum_both,
]);

Serializer<ApnsProviderConfigKeyEnvironmentEnum>
    _$apnsProviderConfigKeyEnvironmentEnumSerializer =
    _$ApnsProviderConfigKeyEnvironmentEnumSerializer();

class _$ApnsProviderConfigKeyEnvironmentEnumSerializer
    implements PrimitiveSerializer<ApnsProviderConfigKeyEnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sandbox': 'sandbox',
    'production': 'production',
    'both': 'both',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sandbox': 'sandbox',
    'production': 'production',
    'both': 'both',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ApnsProviderConfigKeyEnvironmentEnum
  ];
  @override
  final String wireName = 'ApnsProviderConfigKeyEnvironmentEnum';

  @override
  Object serialize(
          Serializers serializers, ApnsProviderConfigKeyEnvironmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ApnsProviderConfigKeyEnvironmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApnsProviderConfigKeyEnvironmentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ApnsProviderConfig extends ApnsProviderConfig {
  @override
  final String teamId;
  @override
  final String keyId;
  @override
  final ApnsProviderConfigKeyEnvironmentEnum keyEnvironment;
  @override
  final bool? timeSensitive;

  factory _$ApnsProviderConfig(
          [void Function(ApnsProviderConfigBuilder)? updates]) =>
      (ApnsProviderConfigBuilder()..update(updates))._build();

  _$ApnsProviderConfig._(
      {required this.teamId,
      required this.keyId,
      required this.keyEnvironment,
      this.timeSensitive})
      : super._();
  @override
  ApnsProviderConfig rebuild(
          void Function(ApnsProviderConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApnsProviderConfigBuilder toBuilder() =>
      ApnsProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApnsProviderConfig &&
        teamId == other.teamId &&
        keyId == other.keyId &&
        keyEnvironment == other.keyEnvironment &&
        timeSensitive == other.timeSensitive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, teamId.hashCode);
    _$hash = $jc(_$hash, keyId.hashCode);
    _$hash = $jc(_$hash, keyEnvironment.hashCode);
    _$hash = $jc(_$hash, timeSensitive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApnsProviderConfig')
          ..add('teamId', teamId)
          ..add('keyId', keyId)
          ..add('keyEnvironment', keyEnvironment)
          ..add('timeSensitive', timeSensitive))
        .toString();
  }
}

class ApnsProviderConfigBuilder
    implements Builder<ApnsProviderConfig, ApnsProviderConfigBuilder> {
  _$ApnsProviderConfig? _$v;

  String? _teamId;
  String? get teamId => _$this._teamId;
  set teamId(String? teamId) => _$this._teamId = teamId;

  String? _keyId;
  String? get keyId => _$this._keyId;
  set keyId(String? keyId) => _$this._keyId = keyId;

  ApnsProviderConfigKeyEnvironmentEnum? _keyEnvironment;
  ApnsProviderConfigKeyEnvironmentEnum? get keyEnvironment =>
      _$this._keyEnvironment;
  set keyEnvironment(ApnsProviderConfigKeyEnvironmentEnum? keyEnvironment) =>
      _$this._keyEnvironment = keyEnvironment;

  bool? _timeSensitive;
  bool? get timeSensitive => _$this._timeSensitive;
  set timeSensitive(bool? timeSensitive) =>
      _$this._timeSensitive = timeSensitive;

  ApnsProviderConfigBuilder() {
    ApnsProviderConfig._defaults(this);
  }

  ApnsProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamId = $v.teamId;
      _keyId = $v.keyId;
      _keyEnvironment = $v.keyEnvironment;
      _timeSensitive = $v.timeSensitive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApnsProviderConfig other) {
    _$v = other as _$ApnsProviderConfig;
  }

  @override
  void update(void Function(ApnsProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApnsProviderConfig build() => _build();

  _$ApnsProviderConfig _build() {
    final _$result = _$v ??
        _$ApnsProviderConfig._(
          teamId: BuiltValueNullFieldError.checkNotNull(
              teamId, r'ApnsProviderConfig', 'teamId'),
          keyId: BuiltValueNullFieldError.checkNotNull(
              keyId, r'ApnsProviderConfig', 'keyId'),
          keyEnvironment: BuiltValueNullFieldError.checkNotNull(
              keyEnvironment, r'ApnsProviderConfig', 'keyEnvironment'),
          timeSensitive: timeSensitive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
