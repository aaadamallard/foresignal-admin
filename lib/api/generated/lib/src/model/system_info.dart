//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/system_info_search.dart';
import 'package:foresignal_api/src/model/system_info_streams.dart';
import 'package:foresignal_api/src/model/system_info_scheduler.dart';
import 'package:foresignal_api/src/model/system_info_history.dart';
import 'package:foresignal_api/src/model/mqtt_connections.dart';
import 'package:foresignal_api/src/model/system_info_catch_up.dart';
import 'package:foresignal_api/src/model/system_info_holds.dart';
import 'package:foresignal_api/src/model/system_info_raster_formats.dart';
import 'package:foresignal_api/src/model/system_info_limits.dart';
import 'package:foresignal_api/src/model/system_rasters.dart';
import 'package:foresignal_api/src/model/system_info_database.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/system_info_ingest_writer.dart';
import 'package:foresignal_api/src/model/system_info_records.dart';
import 'package:foresignal_api/src/model/system_info_security.dart';
import 'package:foresignal_api/src/model/system_info_sources.dart';
import 'package:foresignal_api/src/model/system_info_warnings_inner.dart';
import 'package:foresignal_api/src/model/system_info_llm.dart';
import 'package:foresignal_api/src/model/system_info_archive.dart';
import 'package:foresignal_api/src/model/system_info_notifications.dart';
import 'package:foresignal_api/src/model/system_info_exports.dart';
import 'package:foresignal_api/src/model/system_info_sinks.dart';
import 'package:foresignal_api/src/model/system_info_mcp.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info.g.dart';

/// System document. Anonymous callers get only version, apiVersion, startedAt, uptimeSeconds, status, features and limits; any valid token gets the full document.
///
/// Properties:
/// * [version]
/// * [startedAt]
/// * [uptimeSeconds]
/// * [database]
/// * [records]
/// * [sources]
/// * [scheduler]
/// * [streams]
/// * [notifications]
/// * [llm]
/// * [search]
/// * [mcp]
/// * [apiVersion] - The spec's info.version
/// * [status]
/// * [features] - Capability flags from FeatureContributor beans (notifications, retention, later llm, search, push, mcp, weather …); 113 adds federation and federationServing, and in edge mode reports embeddings, llm, search, ask, rasters, briefings, ogc, exports and federationServing false
/// * [limits]
/// * [history]
/// * [catchUp]
/// * [ingestWriter]
/// * [warnings]
/// * [security]
/// * [rasters]
/// * [mqtt]
/// * [rasterFormats]
/// * [sinks]
/// * [exports]
/// * [archive]
/// * [holds]
/// * [mode] - Deployment profile; in edge mode `features` reports embeddings, LLM, rasters, briefings, OGC, exports and federation serving off
@BuiltValue()
abstract class SystemInfo implements Built<SystemInfo, SystemInfoBuilder> {
  @BuiltValueField(wireName: r'version')
  String get version;

  @BuiltValueField(wireName: r'startedAt')
  DateTime get startedAt;

  @BuiltValueField(wireName: r'uptimeSeconds')
  int? get uptimeSeconds;

  @BuiltValueField(wireName: r'database')
  SystemInfoDatabase? get database;

  @BuiltValueField(wireName: r'records')
  SystemInfoRecords? get records;

  @BuiltValueField(wireName: r'sources')
  SystemInfoSources? get sources;

  @BuiltValueField(wireName: r'scheduler')
  SystemInfoScheduler? get scheduler;

  @BuiltValueField(wireName: r'streams')
  SystemInfoStreams? get streams;

  @BuiltValueField(wireName: r'notifications')
  SystemInfoNotifications? get notifications;

  @BuiltValueField(wireName: r'llm')
  SystemInfoLlm? get llm;

  @BuiltValueField(wireName: r'search')
  SystemInfoSearch? get search;

  @BuiltValueField(wireName: r'mcp')
  SystemInfoMcp? get mcp;

  /// The spec's info.version
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  @BuiltValueField(wireName: r'status')
  SystemInfoStatusEnum? get status;
  // enum statusEnum {  ok,  degraded,  down,  };

  /// Capability flags from FeatureContributor beans (notifications, retention, later llm, search, push, mcp, weather …); 113 adds federation and federationServing, and in edge mode reports embeddings, llm, search, ask, rasters, briefings, ogc, exports and federationServing false
  @BuiltValueField(wireName: r'features')
  BuiltMap<String, bool>? get features;

  @BuiltValueField(wireName: r'limits')
  SystemInfoLimits? get limits;

  @BuiltValueField(wireName: r'history')
  SystemInfoHistory? get history;

  @BuiltValueField(wireName: r'catchUp')
  SystemInfoCatchUp? get catchUp;

  @BuiltValueField(wireName: r'ingestWriter')
  SystemInfoIngestWriter? get ingestWriter;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<SystemInfoWarningsInner>? get warnings;

  @BuiltValueField(wireName: r'security')
  SystemInfoSecurity? get security;

  @BuiltValueField(wireName: r'rasters')
  SystemRasters? get rasters;

  @BuiltValueField(wireName: r'mqtt')
  MqttConnections? get mqtt;

  @BuiltValueField(wireName: r'rasterFormats')
  SystemInfoRasterFormats? get rasterFormats;

  @BuiltValueField(wireName: r'sinks')
  SystemInfoSinks? get sinks;

  @BuiltValueField(wireName: r'exports')
  SystemInfoExports? get exports;

  @BuiltValueField(wireName: r'archive')
  SystemInfoArchive? get archive;

  @BuiltValueField(wireName: r'holds')
  SystemInfoHolds? get holds;

  /// Deployment profile; in edge mode `features` reports embeddings, LLM, rasters, briefings, OGC, exports and federation serving off
  @BuiltValueField(wireName: r'mode')
  SystemInfoModeEnum? get mode;
  // enum modeEnum {  full,  edge,  };

  SystemInfo._();

  factory SystemInfo([void updates(SystemInfoBuilder b)]) = _$SystemInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfo> get serializer => _$SystemInfoSerializer();
}

class _$SystemInfoSerializer implements PrimitiveSerializer<SystemInfo> {
  @override
  final Iterable<Type> types = const [SystemInfo, _$SystemInfo];

  @override
  final String wireName = r'SystemInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
    yield r'startedAt';
    yield serializers.serialize(
      object.startedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.uptimeSeconds != null) {
      yield r'uptimeSeconds';
      yield serializers.serialize(
        object.uptimeSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.database != null) {
      yield r'database';
      yield serializers.serialize(
        object.database,
        specifiedType: const FullType(SystemInfoDatabase),
      );
    }
    if (object.records != null) {
      yield r'records';
      yield serializers.serialize(
        object.records,
        specifiedType: const FullType(SystemInfoRecords),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(SystemInfoSources),
      );
    }
    if (object.scheduler != null) {
      yield r'scheduler';
      yield serializers.serialize(
        object.scheduler,
        specifiedType: const FullType(SystemInfoScheduler),
      );
    }
    if (object.streams != null) {
      yield r'streams';
      yield serializers.serialize(
        object.streams,
        specifiedType: const FullType(SystemInfoStreams),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(SystemInfoNotifications),
      );
    }
    if (object.llm != null) {
      yield r'llm';
      yield serializers.serialize(
        object.llm,
        specifiedType: const FullType(SystemInfoLlm),
      );
    }
    if (object.search != null) {
      yield r'search';
      yield serializers.serialize(
        object.search,
        specifiedType: const FullType(SystemInfoSearch),
      );
    }
    if (object.mcp != null) {
      yield r'mcp';
      yield serializers.serialize(
        object.mcp,
        specifiedType: const FullType(SystemInfoMcp),
      );
    }
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemInfoStatusEnum),
      );
    }
    if (object.features != null) {
      yield r'features';
      yield serializers.serialize(
        object.features,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(bool),
        ]),
      );
    }
    if (object.limits != null) {
      yield r'limits';
      yield serializers.serialize(
        object.limits,
        specifiedType: const FullType(SystemInfoLimits),
      );
    }
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(SystemInfoHistory),
      );
    }
    if (object.catchUp != null) {
      yield r'catchUp';
      yield serializers.serialize(
        object.catchUp,
        specifiedType: const FullType(SystemInfoCatchUp),
      );
    }
    if (object.ingestWriter != null) {
      yield r'ingestWriter';
      yield serializers.serialize(
        object.ingestWriter,
        specifiedType: const FullType(SystemInfoIngestWriter),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [
          FullType(SystemInfoWarningsInner),
        ]),
      );
    }
    if (object.security != null) {
      yield r'security';
      yield serializers.serialize(
        object.security,
        specifiedType: const FullType(SystemInfoSecurity),
      );
    }
    if (object.rasters != null) {
      yield r'rasters';
      yield serializers.serialize(
        object.rasters,
        specifiedType: const FullType(SystemRasters),
      );
    }
    if (object.mqtt != null) {
      yield r'mqtt';
      yield serializers.serialize(
        object.mqtt,
        specifiedType: const FullType(MqttConnections),
      );
    }
    if (object.rasterFormats != null) {
      yield r'rasterFormats';
      yield serializers.serialize(
        object.rasterFormats,
        specifiedType: const FullType(SystemInfoRasterFormats),
      );
    }
    if (object.sinks != null) {
      yield r'sinks';
      yield serializers.serialize(
        object.sinks,
        specifiedType: const FullType(SystemInfoSinks),
      );
    }
    if (object.exports != null) {
      yield r'exports';
      yield serializers.serialize(
        object.exports,
        specifiedType: const FullType(SystemInfoExports),
      );
    }
    if (object.archive != null) {
      yield r'archive';
      yield serializers.serialize(
        object.archive,
        specifiedType: const FullType(SystemInfoArchive),
      );
    }
    if (object.holds != null) {
      yield r'holds';
      yield serializers.serialize(
        object.holds,
        specifiedType: const FullType(SystemInfoHolds),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(SystemInfoModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfo object, {
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
    required SystemInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.version = valueDes;
          break;
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.startedAt = valueDes;
          break;
        case r'uptimeSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.uptimeSeconds = valueDes;
          break;
        case r'database':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoDatabase),
                  )
                  as SystemInfoDatabase?;
          if (valueDes == null) continue;
          result.database.replace(valueDes);
          break;
        case r'records':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoRecords),
                  )
                  as SystemInfoRecords?;
          if (valueDes == null) continue;
          result.records.replace(valueDes);
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoSources),
                  )
                  as SystemInfoSources?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'scheduler':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoScheduler),
                  )
                  as SystemInfoScheduler?;
          if (valueDes == null) continue;
          result.scheduler.replace(valueDes);
          break;
        case r'streams':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoStreams),
                  )
                  as SystemInfoStreams?;
          if (valueDes == null) continue;
          result.streams.replace(valueDes);
          break;
        case r'notifications':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoNotifications,
                    ),
                  )
                  as SystemInfoNotifications?;
          if (valueDes == null) continue;
          result.notifications.replace(valueDes);
          break;
        case r'llm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoLlm),
                  )
                  as SystemInfoLlm?;
          if (valueDes == null) continue;
          result.llm.replace(valueDes);
          break;
        case r'search':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoSearch),
                  )
                  as SystemInfoSearch?;
          if (valueDes == null) continue;
          result.search.replace(valueDes);
          break;
        case r'mcp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoMcp),
                  )
                  as SystemInfoMcp?;
          if (valueDes == null) continue;
          result.mcp.replace(valueDes);
          break;
        case r'apiVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.apiVersion = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoStatusEnum,
                    ),
                  )
                  as SystemInfoStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'features':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(bool),
                    ]),
                  )
                  as BuiltMap<String, bool>?;
          if (valueDes == null) continue;
          result.features.replace(valueDes);
          break;
        case r'limits':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoLimits),
                  )
                  as SystemInfoLimits?;
          if (valueDes == null) continue;
          result.limits.replace(valueDes);
          break;
        case r'history':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoHistory),
                  )
                  as SystemInfoHistory?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        case r'catchUp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoCatchUp),
                  )
                  as SystemInfoCatchUp?;
          if (valueDes == null) continue;
          result.catchUp.replace(valueDes);
          break;
        case r'ingestWriter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoIngestWriter,
                    ),
                  )
                  as SystemInfoIngestWriter?;
          if (valueDes == null) continue;
          result.ingestWriter.replace(valueDes);
          break;
        case r'warnings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SystemInfoWarningsInner),
                    ]),
                  )
                  as BuiltList<SystemInfoWarningsInner>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        case r'security':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoSecurity),
                  )
                  as SystemInfoSecurity?;
          if (valueDes == null) continue;
          result.security.replace(valueDes);
          break;
        case r'rasters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemRasters),
                  )
                  as SystemRasters?;
          if (valueDes == null) continue;
          result.rasters.replace(valueDes);
          break;
        case r'mqtt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(MqttConnections),
                  )
                  as MqttConnections?;
          if (valueDes == null) continue;
          result.mqtt.replace(valueDes);
          break;
        case r'rasterFormats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoRasterFormats,
                    ),
                  )
                  as SystemInfoRasterFormats?;
          if (valueDes == null) continue;
          result.rasterFormats.replace(valueDes);
          break;
        case r'sinks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoSinks),
                  )
                  as SystemInfoSinks?;
          if (valueDes == null) continue;
          result.sinks.replace(valueDes);
          break;
        case r'exports':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoExports),
                  )
                  as SystemInfoExports?;
          if (valueDes == null) continue;
          result.exports.replace(valueDes);
          break;
        case r'archive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoArchive),
                  )
                  as SystemInfoArchive?;
          if (valueDes == null) continue;
          result.archive.replace(valueDes);
          break;
        case r'holds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoHolds),
                  )
                  as SystemInfoHolds?;
          if (valueDes == null) continue;
          result.holds.replace(valueDes);
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(SystemInfoModeEnum),
                  )
                  as SystemInfoModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoBuilder();
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

class SystemInfoStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const SystemInfoStatusEnum ok = _$systemInfoStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'degraded')
  static const SystemInfoStatusEnum degraded = _$systemInfoStatusEnum_degraded;
  @BuiltValueEnumConst(wireName: r'down')
  static const SystemInfoStatusEnum down = _$systemInfoStatusEnum_down;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemInfoStatusEnum unknownDefaultOpenApi =
      _$systemInfoStatusEnum_unknownDefaultOpenApi;

  static Serializer<SystemInfoStatusEnum> get serializer =>
      _$systemInfoStatusEnumSerializer;

  const SystemInfoStatusEnum._(String name) : super(name);

  static BuiltSet<SystemInfoStatusEnum> get values =>
      _$systemInfoStatusEnumValues;
  static SystemInfoStatusEnum valueOf(String name) =>
      _$systemInfoStatusEnumValueOf(name);
}

/// Deployment profile; in edge mode `features` reports embeddings, LLM, rasters, briefings, OGC, exports and federation serving off
class SystemInfoModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'full')
  static const SystemInfoModeEnum full = _$systemInfoModeEnum_full;
  @BuiltValueEnumConst(wireName: r'edge')
  static const SystemInfoModeEnum edge = _$systemInfoModeEnum_edge;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemInfoModeEnum unknownDefaultOpenApi =
      _$systemInfoModeEnum_unknownDefaultOpenApi;

  static Serializer<SystemInfoModeEnum> get serializer =>
      _$systemInfoModeEnumSerializer;

  const SystemInfoModeEnum._(String name) : super(name);

  static BuiltSet<SystemInfoModeEnum> get values => _$systemInfoModeEnumValues;
  static SystemInfoModeEnum valueOf(String name) =>
      _$systemInfoModeEnumValueOf(name);
}
