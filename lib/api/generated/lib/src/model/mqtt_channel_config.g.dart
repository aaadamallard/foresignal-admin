// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mqtt_channel_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MqttChannelConfigQosEnum _$mqttChannelConfigQosEnum_number0 =
    const MqttChannelConfigQosEnum._('number0');
const MqttChannelConfigQosEnum _$mqttChannelConfigQosEnum_number1 =
    const MqttChannelConfigQosEnum._('number1');

MqttChannelConfigQosEnum _$mqttChannelConfigQosEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$mqttChannelConfigQosEnum_number0;
    case 'number1':
      return _$mqttChannelConfigQosEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MqttChannelConfigQosEnum> _$mqttChannelConfigQosEnumValues =
    BuiltSet<MqttChannelConfigQosEnum>(const <MqttChannelConfigQosEnum>[
  _$mqttChannelConfigQosEnum_number0,
  _$mqttChannelConfigQosEnum_number1,
]);

const MqttChannelConfigProtocolVersionEnum
    _$mqttChannelConfigProtocolVersionEnum_n5 =
    const MqttChannelConfigProtocolVersionEnum._('n5');
const MqttChannelConfigProtocolVersionEnum
    _$mqttChannelConfigProtocolVersionEnum_n3period1Period1 =
    const MqttChannelConfigProtocolVersionEnum._('n3period1Period1');

MqttChannelConfigProtocolVersionEnum
    _$mqttChannelConfigProtocolVersionEnumValueOf(String name) {
  switch (name) {
    case 'n5':
      return _$mqttChannelConfigProtocolVersionEnum_n5;
    case 'n3period1Period1':
      return _$mqttChannelConfigProtocolVersionEnum_n3period1Period1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MqttChannelConfigProtocolVersionEnum>
    _$mqttChannelConfigProtocolVersionEnumValues = BuiltSet<
        MqttChannelConfigProtocolVersionEnum>(const <MqttChannelConfigProtocolVersionEnum>[
  _$mqttChannelConfigProtocolVersionEnum_n5,
  _$mqttChannelConfigProtocolVersionEnum_n3period1Period1,
]);

Serializer<MqttChannelConfigQosEnum> _$mqttChannelConfigQosEnumSerializer =
    _$MqttChannelConfigQosEnumSerializer();
Serializer<MqttChannelConfigProtocolVersionEnum>
    _$mqttChannelConfigProtocolVersionEnumSerializer =
    _$MqttChannelConfigProtocolVersionEnumSerializer();

class _$MqttChannelConfigQosEnumSerializer
    implements PrimitiveSerializer<MqttChannelConfigQosEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[MqttChannelConfigQosEnum];
  @override
  final String wireName = 'MqttChannelConfigQosEnum';

  @override
  Object serialize(Serializers serializers, MqttChannelConfigQosEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MqttChannelConfigQosEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MqttChannelConfigQosEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MqttChannelConfigProtocolVersionEnumSerializer
    implements PrimitiveSerializer<MqttChannelConfigProtocolVersionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n5': '5',
    'n3period1Period1': '3.1.1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '5': 'n5',
    '3.1.1': 'n3period1Period1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    MqttChannelConfigProtocolVersionEnum
  ];
  @override
  final String wireName = 'MqttChannelConfigProtocolVersionEnum';

  @override
  Object serialize(
          Serializers serializers, MqttChannelConfigProtocolVersionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MqttChannelConfigProtocolVersionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MqttChannelConfigProtocolVersionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MqttChannelConfig extends MqttChannelConfig {
  @override
  final String brokerUrl;
  @override
  final String? topicPrefix;
  @override
  final MqttChannelConfigQosEnum? qos;
  @override
  final MqttChannelConfigProtocolVersionEnum? protocolVersion;
  @override
  final String? messageExpiry;
  @override
  final String? payloadTemplate;
  @override
  final bool? publishHealth;
  @override
  final bool? publishSummary;
  @override
  final String? summaryInterval;
  @override
  final bool? haDiscovery;
  @override
  final String? haPrefix;
  @override
  final int? haMaxRules;
  @override
  final int? haMaxSources;
  @override
  final bool? haRetainDiscovery;

  factory _$MqttChannelConfig(
          [void Function(MqttChannelConfigBuilder)? updates]) =>
      (MqttChannelConfigBuilder()..update(updates))._build();

  _$MqttChannelConfig._(
      {required this.brokerUrl,
      this.topicPrefix,
      this.qos,
      this.protocolVersion,
      this.messageExpiry,
      this.payloadTemplate,
      this.publishHealth,
      this.publishSummary,
      this.summaryInterval,
      this.haDiscovery,
      this.haPrefix,
      this.haMaxRules,
      this.haMaxSources,
      this.haRetainDiscovery})
      : super._();
  @override
  MqttChannelConfig rebuild(void Function(MqttChannelConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MqttChannelConfigBuilder toBuilder() =>
      MqttChannelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MqttChannelConfig &&
        brokerUrl == other.brokerUrl &&
        topicPrefix == other.topicPrefix &&
        qos == other.qos &&
        protocolVersion == other.protocolVersion &&
        messageExpiry == other.messageExpiry &&
        payloadTemplate == other.payloadTemplate &&
        publishHealth == other.publishHealth &&
        publishSummary == other.publishSummary &&
        summaryInterval == other.summaryInterval &&
        haDiscovery == other.haDiscovery &&
        haPrefix == other.haPrefix &&
        haMaxRules == other.haMaxRules &&
        haMaxSources == other.haMaxSources &&
        haRetainDiscovery == other.haRetainDiscovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, brokerUrl.hashCode);
    _$hash = $jc(_$hash, topicPrefix.hashCode);
    _$hash = $jc(_$hash, qos.hashCode);
    _$hash = $jc(_$hash, protocolVersion.hashCode);
    _$hash = $jc(_$hash, messageExpiry.hashCode);
    _$hash = $jc(_$hash, payloadTemplate.hashCode);
    _$hash = $jc(_$hash, publishHealth.hashCode);
    _$hash = $jc(_$hash, publishSummary.hashCode);
    _$hash = $jc(_$hash, summaryInterval.hashCode);
    _$hash = $jc(_$hash, haDiscovery.hashCode);
    _$hash = $jc(_$hash, haPrefix.hashCode);
    _$hash = $jc(_$hash, haMaxRules.hashCode);
    _$hash = $jc(_$hash, haMaxSources.hashCode);
    _$hash = $jc(_$hash, haRetainDiscovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MqttChannelConfig')
          ..add('brokerUrl', brokerUrl)
          ..add('topicPrefix', topicPrefix)
          ..add('qos', qos)
          ..add('protocolVersion', protocolVersion)
          ..add('messageExpiry', messageExpiry)
          ..add('payloadTemplate', payloadTemplate)
          ..add('publishHealth', publishHealth)
          ..add('publishSummary', publishSummary)
          ..add('summaryInterval', summaryInterval)
          ..add('haDiscovery', haDiscovery)
          ..add('haPrefix', haPrefix)
          ..add('haMaxRules', haMaxRules)
          ..add('haMaxSources', haMaxSources)
          ..add('haRetainDiscovery', haRetainDiscovery))
        .toString();
  }
}

class MqttChannelConfigBuilder
    implements Builder<MqttChannelConfig, MqttChannelConfigBuilder> {
  _$MqttChannelConfig? _$v;

  String? _brokerUrl;
  String? get brokerUrl => _$this._brokerUrl;
  set brokerUrl(String? brokerUrl) => _$this._brokerUrl = brokerUrl;

  String? _topicPrefix;
  String? get topicPrefix => _$this._topicPrefix;
  set topicPrefix(String? topicPrefix) => _$this._topicPrefix = topicPrefix;

  MqttChannelConfigQosEnum? _qos;
  MqttChannelConfigQosEnum? get qos => _$this._qos;
  set qos(MqttChannelConfigQosEnum? qos) => _$this._qos = qos;

  MqttChannelConfigProtocolVersionEnum? _protocolVersion;
  MqttChannelConfigProtocolVersionEnum? get protocolVersion =>
      _$this._protocolVersion;
  set protocolVersion(MqttChannelConfigProtocolVersionEnum? protocolVersion) =>
      _$this._protocolVersion = protocolVersion;

  String? _messageExpiry;
  String? get messageExpiry => _$this._messageExpiry;
  set messageExpiry(String? messageExpiry) =>
      _$this._messageExpiry = messageExpiry;

  String? _payloadTemplate;
  String? get payloadTemplate => _$this._payloadTemplate;
  set payloadTemplate(String? payloadTemplate) =>
      _$this._payloadTemplate = payloadTemplate;

  bool? _publishHealth;
  bool? get publishHealth => _$this._publishHealth;
  set publishHealth(bool? publishHealth) =>
      _$this._publishHealth = publishHealth;

  bool? _publishSummary;
  bool? get publishSummary => _$this._publishSummary;
  set publishSummary(bool? publishSummary) =>
      _$this._publishSummary = publishSummary;

  String? _summaryInterval;
  String? get summaryInterval => _$this._summaryInterval;
  set summaryInterval(String? summaryInterval) =>
      _$this._summaryInterval = summaryInterval;

  bool? _haDiscovery;
  bool? get haDiscovery => _$this._haDiscovery;
  set haDiscovery(bool? haDiscovery) => _$this._haDiscovery = haDiscovery;

  String? _haPrefix;
  String? get haPrefix => _$this._haPrefix;
  set haPrefix(String? haPrefix) => _$this._haPrefix = haPrefix;

  int? _haMaxRules;
  int? get haMaxRules => _$this._haMaxRules;
  set haMaxRules(int? haMaxRules) => _$this._haMaxRules = haMaxRules;

  int? _haMaxSources;
  int? get haMaxSources => _$this._haMaxSources;
  set haMaxSources(int? haMaxSources) => _$this._haMaxSources = haMaxSources;

  bool? _haRetainDiscovery;
  bool? get haRetainDiscovery => _$this._haRetainDiscovery;
  set haRetainDiscovery(bool? haRetainDiscovery) =>
      _$this._haRetainDiscovery = haRetainDiscovery;

  MqttChannelConfigBuilder() {
    MqttChannelConfig._defaults(this);
  }

  MqttChannelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _brokerUrl = $v.brokerUrl;
      _topicPrefix = $v.topicPrefix;
      _qos = $v.qos;
      _protocolVersion = $v.protocolVersion;
      _messageExpiry = $v.messageExpiry;
      _payloadTemplate = $v.payloadTemplate;
      _publishHealth = $v.publishHealth;
      _publishSummary = $v.publishSummary;
      _summaryInterval = $v.summaryInterval;
      _haDiscovery = $v.haDiscovery;
      _haPrefix = $v.haPrefix;
      _haMaxRules = $v.haMaxRules;
      _haMaxSources = $v.haMaxSources;
      _haRetainDiscovery = $v.haRetainDiscovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MqttChannelConfig other) {
    _$v = other as _$MqttChannelConfig;
  }

  @override
  void update(void Function(MqttChannelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MqttChannelConfig build() => _build();

  _$MqttChannelConfig _build() {
    final _$result = _$v ??
        _$MqttChannelConfig._(
          brokerUrl: BuiltValueNullFieldError.checkNotNull(
              brokerUrl, r'MqttChannelConfig', 'brokerUrl'),
          topicPrefix: topicPrefix,
          qos: qos,
          protocolVersion: protocolVersion,
          messageExpiry: messageExpiry,
          payloadTemplate: payloadTemplate,
          publishHealth: publishHealth,
          publishSummary: publishSummary,
          summaryInterval: summaryInterval,
          haDiscovery: haDiscovery,
          haPrefix: haPrefix,
          haMaxRules: haMaxRules,
          haMaxSources: haMaxSources,
          haRetainDiscovery: haRetainDiscovery,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
