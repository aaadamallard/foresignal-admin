//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator_config.g.dart';

/// Configure one domain's first-party aggregator
///
/// Properties:
/// * [enabled]
/// * [mode]
/// * [endpoint] - Required to enable, except for ground-sensors. adsb: an http or https URL of the readsb aircraft.json on this host or the LAN (it must resolve to a loopback, private or unique-local address, and is pinned); no credentials, query or fragment (R2-019). ais: the AIS decoder's NMEA feed, either tcp://host:port (its TCP server, for example AIS-catcher -S 5012; a loopback, private or unique-local address, pinned) or udp://bindHost:port (where this server listens for its datagrams, which needs config.allowSenders); the port is always explicit (R2-020). datalink: tcp://host, the host the decoders run on, with no port; each decoder's port is in config (R2-021). satellite: SatDump's web server, an http or https URL (any base path is kept; its /api is read), on this host or the LAN (R2-022). ground-sensors: not used; a value is a 400 — each sensor's address is in config (R2-023)
/// * [config] - Domain-specific settings; an unknown member is a 400 (R2-019). adsb: `band`, 1090 or 978, default 1090. ais (R2-020): `allowSenders`, a list of IPs or CIDRs in private space whose datagrams are read, required with a udp:// endpoint; `stationName`, the observer of every record, default `local`. datalink (R2-021): the decoders `acars`, `vdlm2`, `hfdl` (acars_router's TCP servers) and `aprs` (the igate's KISS TCP port), each a port on the endpoint host or a whole tcp://host:port, at least one to enable; `stationId` (ACARS observer), `stationCallsign` (APRS observer), `includeMessages` (boolean). satellite (R2-022): `location` (required with an endpoint: lat,lon[,altM] or a place id), `inboxPath` (SatDump's output directory under FORESIGNAL_INBOX_DIR), `satdumpVersion` (1.2 or 2.0), `predictNorad` (NORAD numbers of the polar satellites to predict), `goes` (east or west: the GOES the dish receives, whose ABI imagery pull is superseded). ground-sensors (R2-023): one object per sensor, each with `enabled` and at least one enabled to enable: `seismic` and `same` (`source`, the custom push source the bridge posts to), `radiosonde` (`endpoint` udp://bindHost:port, `allowSenders`, `stationCallsign`; supersedes sondehub), `airq` (`deviceType` purpleair, airrohr or airgradient, `endpoint`, `lat`, `lon`, `indoor`, `name`; supersedes openaq and sensor-community), `pws` (`station` davis or ecowitt, `endpoint`, `lat`, `lon`), `mesh` (`meshtastic` mqtt:// broker with `root`, supersedes meshtastic-mqtt and meshtastic-map; `meshcore` tcp:// companion; `bridge` boolean)
/// * [disableSupersededSources] - Default the public/mirror sources off once this aggregator is live (nothing is removed); the sources it turned off are turned back on when it stops being live or this is set to false (R2-019)
@BuiltValue()
abstract class AggregatorConfig
    implements Built<AggregatorConfig, AggregatorConfigBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'mode')
  String? get mode;

  /// Required to enable, except for ground-sensors. adsb: an http or https URL of the readsb aircraft.json on this host or the LAN (it must resolve to a loopback, private or unique-local address, and is pinned); no credentials, query or fragment (R2-019). ais: the AIS decoder's NMEA feed, either tcp://host:port (its TCP server, for example AIS-catcher -S 5012; a loopback, private or unique-local address, pinned) or udp://bindHost:port (where this server listens for its datagrams, which needs config.allowSenders); the port is always explicit (R2-020). datalink: tcp://host, the host the decoders run on, with no port; each decoder's port is in config (R2-021). satellite: SatDump's web server, an http or https URL (any base path is kept; its /api is read), on this host or the LAN (R2-022). ground-sensors: not used; a value is a 400 — each sensor's address is in config (R2-023)
  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  /// Domain-specific settings; an unknown member is a 400 (R2-019). adsb: `band`, 1090 or 978, default 1090. ais (R2-020): `allowSenders`, a list of IPs or CIDRs in private space whose datagrams are read, required with a udp:// endpoint; `stationName`, the observer of every record, default `local`. datalink (R2-021): the decoders `acars`, `vdlm2`, `hfdl` (acars_router's TCP servers) and `aprs` (the igate's KISS TCP port), each a port on the endpoint host or a whole tcp://host:port, at least one to enable; `stationId` (ACARS observer), `stationCallsign` (APRS observer), `includeMessages` (boolean). satellite (R2-022): `location` (required with an endpoint: lat,lon[,altM] or a place id), `inboxPath` (SatDump's output directory under FORESIGNAL_INBOX_DIR), `satdumpVersion` (1.2 or 2.0), `predictNorad` (NORAD numbers of the polar satellites to predict), `goes` (east or west: the GOES the dish receives, whose ABI imagery pull is superseded). ground-sensors (R2-023): one object per sensor, each with `enabled` and at least one enabled to enable: `seismic` and `same` (`source`, the custom push source the bridge posts to), `radiosonde` (`endpoint` udp://bindHost:port, `allowSenders`, `stationCallsign`; supersedes sondehub), `airq` (`deviceType` purpleair, airrohr or airgradient, `endpoint`, `lat`, `lon`, `indoor`, `name`; supersedes openaq and sensor-community), `pws` (`station` davis or ecowitt, `endpoint`, `lat`, `lon`), `mesh` (`meshtastic` mqtt:// broker with `root`, supersedes meshtastic-mqtt and meshtastic-map; `meshcore` tcp:// companion; `bridge` boolean)
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// Default the public/mirror sources off once this aggregator is live (nothing is removed); the sources it turned off are turned back on when it stops being live or this is set to false (R2-019)
  @BuiltValueField(wireName: r'disableSupersededSources')
  bool? get disableSupersededSources;

  AggregatorConfig._();

  factory AggregatorConfig([void updates(AggregatorConfigBuilder b)]) =
      _$AggregatorConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggregatorConfig> get serializer =>
      _$AggregatorConfigSerializer();
}

class _$AggregatorConfigSerializer
    implements PrimitiveSerializer<AggregatorConfig> {
  @override
  final Iterable<Type> types = const [AggregatorConfig, _$AggregatorConfig];

  @override
  final String wireName = r'AggregatorConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggregatorConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(String),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.disableSupersededSources != null) {
      yield r'disableSupersededSources';
      yield serializers.serialize(
        object.disableSupersededSources,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggregatorConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AggregatorConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.endpoint = valueDes;
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.config.replace(valueDes);
          break;
        case r'disableSupersededSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.disableSupersededSources = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggregatorConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorConfigBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
