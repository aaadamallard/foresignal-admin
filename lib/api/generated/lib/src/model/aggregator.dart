//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'aggregator.g.dart';

/// A first-party aggregator for one RF/sensor domain; reading the distributed network locally instead of a public mirror (C3/182-186)
///
/// Properties:
/// * [domain]
/// * [name]
/// * [enabled]
/// * [mode] - Own receiver, aggregated feed, or both
/// * [endpoint] - Local endpoint the adapter reads. For adsb, the readsb aircraft.json, for example http://readsb/data/aircraft.json (R2-019)
/// * [status] - ok when the aggregator's source is healthy, degraded when degraded or not yet run, down when failing, unconfigured when not enabled with an endpoint (R2-019)
/// * [supersededSources] - Public/mirror source ids this aggregator supersedes; defaulted off when it is live
/// * [lastSeenAt] - When the aggregator's source last brought data (R2-019)
/// * [config] - Domain-specific settings as stored (adsb: `band`, 1090 or 978) (R2-019)
/// * [disableSupersededSources] - Whether the superseded sources are kept off while the aggregator is live (R2-019)
/// * [implemented] - Whether this server has the domain's backend; a domain without one can be configured only disabled (R2-019)
/// * [statusReason] - Why the status is what it is: the health reason of the aggregator's source, or why it is unconfigured (R2-019)
/// * [sourceIds] - The first-party sources the aggregator drives; the first one's health is its status (adsb: local-adsb-aggregator) (R2-019)
@BuiltValue()
abstract class Aggregator implements Built<Aggregator, AggregatorBuilder> {
  @BuiltValueField(wireName: r'domain')
  String get domain;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Own receiver, aggregated feed, or both
  @BuiltValueField(wireName: r'mode')
  String? get mode;

  /// Local endpoint the adapter reads. For adsb, the readsb aircraft.json, for example http://readsb/data/aircraft.json (R2-019)
  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  /// ok when the aggregator's source is healthy, degraded when degraded or not yet run, down when failing, unconfigured when not enabled with an endpoint (R2-019)
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Public/mirror source ids this aggregator supersedes; defaulted off when it is live
  @BuiltValueField(wireName: r'supersededSources')
  BuiltList<String>? get supersededSources;

  /// When the aggregator's source last brought data (R2-019)
  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime? get lastSeenAt;

  /// Domain-specific settings as stored (adsb: `band`, 1090 or 978) (R2-019)
  @BuiltValueField(wireName: r'config')
  BuiltMap<String, JsonObject?>? get config;

  /// Whether the superseded sources are kept off while the aggregator is live (R2-019)
  @BuiltValueField(wireName: r'disableSupersededSources')
  bool? get disableSupersededSources;

  /// Whether this server has the domain's backend; a domain without one can be configured only disabled (R2-019)
  @BuiltValueField(wireName: r'implemented')
  bool? get implemented;

  /// Why the status is what it is: the health reason of the aggregator's source, or why it is unconfigured (R2-019)
  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  /// The first-party sources the aggregator drives; the first one's health is its status (adsb: local-adsb-aggregator) (R2-019)
  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  Aggregator._();

  factory Aggregator([void updates(AggregatorBuilder b)]) = _$Aggregator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggregatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Aggregator> get serializer => _$AggregatorSerializer();
}

class _$AggregatorSerializer implements PrimitiveSerializer<Aggregator> {
  @override
  final Iterable<Type> types = const [Aggregator, _$Aggregator];

  @override
  final String wireName = r'Aggregator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Aggregator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.supersededSources != null) {
      yield r'supersededSources';
      yield serializers.serialize(
        object.supersededSources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lastSeenAt != null) {
      yield r'lastSeenAt';
      yield serializers.serialize(
        object.lastSeenAt,
        specifiedType: const FullType.nullable(DateTime),
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
    if (object.implemented != null) {
      yield r'implemented';
      yield serializers.serialize(
        object.implemented,
        specifiedType: const FullType(bool),
      );
    }
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Aggregator object, {
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
    required AggregatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.domain = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'supersededSources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.supersededSources.replace(valueDes);
          break;
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSeenAt = valueDes;
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
        case r'implemented':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.implemented = valueDes;
          break;
        case r'statusReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'sourceIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Aggregator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregatorBuilder();
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
