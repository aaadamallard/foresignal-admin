// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'federation_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FederationInfoCapabilitiesEnum _$federationInfoCapabilitiesEnum_changes =
    const FederationInfoCapabilitiesEnum._('changes');
const FederationInfoCapabilitiesEnum _$federationInfoCapabilitiesEnum_stream =
    const FederationInfoCapabilitiesEnum._('stream');
const FederationInfoCapabilitiesEnum _$federationInfoCapabilitiesEnum_snapshot =
    const FederationInfoCapabilitiesEnum._('snapshot');
const FederationInfoCapabilitiesEnum _$federationInfoCapabilitiesEnum_ingest =
    const FederationInfoCapabilitiesEnum._('ingest');

FederationInfoCapabilitiesEnum _$federationInfoCapabilitiesEnumValueOf(
  String name,
) {
  switch (name) {
    case 'changes':
      return _$federationInfoCapabilitiesEnum_changes;
    case 'stream':
      return _$federationInfoCapabilitiesEnum_stream;
    case 'snapshot':
      return _$federationInfoCapabilitiesEnum_snapshot;
    case 'ingest':
      return _$federationInfoCapabilitiesEnum_ingest;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FederationInfoCapabilitiesEnum>
_$federationInfoCapabilitiesEnumValues =
    BuiltSet<FederationInfoCapabilitiesEnum>(
      const <FederationInfoCapabilitiesEnum>[
        _$federationInfoCapabilitiesEnum_changes,
        _$federationInfoCapabilitiesEnum_stream,
        _$federationInfoCapabilitiesEnum_snapshot,
        _$federationInfoCapabilitiesEnum_ingest,
      ],
    );

Serializer<FederationInfoCapabilitiesEnum>
_$federationInfoCapabilitiesEnumSerializer =
    _$FederationInfoCapabilitiesEnumSerializer();

class _$FederationInfoCapabilitiesEnumSerializer
    implements PrimitiveSerializer<FederationInfoCapabilitiesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'changes': 'changes',
    'stream': 'stream',
    'snapshot': 'snapshot',
    'ingest': 'ingest',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'changes': 'changes',
    'stream': 'stream',
    'snapshot': 'snapshot',
    'ingest': 'ingest',
  };

  @override
  final Iterable<Type> types = const <Type>[FederationInfoCapabilitiesEnum];
  @override
  final String wireName = 'FederationInfoCapabilitiesEnum';

  @override
  Object serialize(
    Serializers serializers,
    FederationInfoCapabilitiesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FederationInfoCapabilitiesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FederationInfoCapabilitiesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$FederationInfo extends FederationInfo {
  @override
  final String instanceId;
  @override
  final String? instanceName;
  @override
  final String version;
  @override
  final String apiVersion;
  @override
  final String jwksUri;
  @override
  final BuiltList<FederationInfoCapabilitiesEnum> capabilities;
  @override
  final DateTime time;

  factory _$FederationInfo([void Function(FederationInfoBuilder)? updates]) =>
      (FederationInfoBuilder()..update(updates))._build();

  _$FederationInfo._({
    required this.instanceId,
    this.instanceName,
    required this.version,
    required this.apiVersion,
    required this.jwksUri,
    required this.capabilities,
    required this.time,
  }) : super._();
  @override
  FederationInfo rebuild(void Function(FederationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederationInfoBuilder toBuilder() => FederationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederationInfo &&
        instanceId == other.instanceId &&
        instanceName == other.instanceName &&
        version == other.version &&
        apiVersion == other.apiVersion &&
        jwksUri == other.jwksUri &&
        capabilities == other.capabilities &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceName.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, apiVersion.hashCode);
    _$hash = $jc(_$hash, jwksUri.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FederationInfo')
          ..add('instanceId', instanceId)
          ..add('instanceName', instanceName)
          ..add('version', version)
          ..add('apiVersion', apiVersion)
          ..add('jwksUri', jwksUri)
          ..add('capabilities', capabilities)
          ..add('time', time))
        .toString();
  }
}

class FederationInfoBuilder
    implements Builder<FederationInfo, FederationInfoBuilder> {
  _$FederationInfo? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _instanceName;
  String? get instanceName => _$this._instanceName;
  set instanceName(String? instanceName) => _$this._instanceName = instanceName;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _apiVersion;
  String? get apiVersion => _$this._apiVersion;
  set apiVersion(String? apiVersion) => _$this._apiVersion = apiVersion;

  String? _jwksUri;
  String? get jwksUri => _$this._jwksUri;
  set jwksUri(String? jwksUri) => _$this._jwksUri = jwksUri;

  ListBuilder<FederationInfoCapabilitiesEnum>? _capabilities;
  ListBuilder<FederationInfoCapabilitiesEnum> get capabilities =>
      _$this._capabilities ??= ListBuilder<FederationInfoCapabilitiesEnum>();
  set capabilities(ListBuilder<FederationInfoCapabilitiesEnum>? capabilities) =>
      _$this._capabilities = capabilities;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  FederationInfoBuilder() {
    FederationInfo._defaults(this);
  }

  FederationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _instanceName = $v.instanceName;
      _version = $v.version;
      _apiVersion = $v.apiVersion;
      _jwksUri = $v.jwksUri;
      _capabilities = $v.capabilities.toBuilder();
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederationInfo other) {
    _$v = other as _$FederationInfo;
  }

  @override
  void update(void Function(FederationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederationInfo build() => _build();

  _$FederationInfo _build() {
    _$FederationInfo _$result;
    try {
      _$result =
          _$v ??
          _$FederationInfo._(
            instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId,
              r'FederationInfo',
              'instanceId',
            ),
            instanceName: instanceName,
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'FederationInfo',
              'version',
            ),
            apiVersion: BuiltValueNullFieldError.checkNotNull(
              apiVersion,
              r'FederationInfo',
              'apiVersion',
            ),
            jwksUri: BuiltValueNullFieldError.checkNotNull(
              jwksUri,
              r'FederationInfo',
              'jwksUri',
            ),
            capabilities: capabilities.build(),
            time: BuiltValueNullFieldError.checkNotNull(
              time,
              r'FederationInfo',
              'time',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capabilities';
        capabilities.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FederationInfo',
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
