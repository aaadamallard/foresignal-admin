//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:foresignal_api/src/model/provenance.dart';
import 'package:foresignal_api/src/model/quality.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_item.g.dart';

/// A full version item served to peers, with licence id and provenance chain (113)
///
/// Properties:
/// * [seq]
/// * [ref] - urn:foresignal:{instanceId}:{sourceId}:{externalId} (externalId percent-encoded)
/// * [sourceId]
/// * [externalId]
/// * [kind]
/// * [version]
/// * [persistReason]
/// * [historyTier] - The version's history tier; a consumer stores TRACK items in its peer-{id}-trk source (113)
/// * [observedAt]
/// * [eventTime]
/// * [validUntil]
/// * [tombstone]
/// * [geometry]
/// * [payload]
/// * [quality]
/// * [licence] - LicenceTerms id in force for this version
/// * [provenance]
@BuiltValue()
abstract class FederationItem
    implements Built<FederationItem, FederationItemBuilder> {
  @BuiltValueField(wireName: r'seq')
  int get seq;

  /// urn:foresignal:{instanceId}:{sourceId}:{externalId} (externalId percent-encoded)
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'kind')
  String get kind;

  @BuiltValueField(wireName: r'version')
  int get version;

  @BuiltValueField(wireName: r'persistReason')
  FederationItemPersistReasonEnum? get persistReason;
  // enum persistReasonEnum {  FIRST,  REAPPEAR,  SIGNIFICANT,  TOMBSTONE,  CHANGE,  SAMPLE,  KEYFRAME,  HEARTBEAT,  TRIGGER_EDGE,  SNAPSHOT,  };

  /// The version's history tier; a consumer stores TRACK items in its peer-{id}-trk source (113)
  @BuiltValueField(wireName: r'historyTier')
  FederationItemHistoryTierEnum? get historyTier;
  // enum historyTierEnum {  STANDARD,  TRACK,  };

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  @BuiltValueField(wireName: r'validUntil')
  DateTime? get validUntil;

  @BuiltValueField(wireName: r'tombstone')
  bool get tombstone;

  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  @BuiltValueField(wireName: r'payload')
  BuiltMap<String, JsonObject?> get payload;

  @BuiltValueField(wireName: r'quality')
  Quality? get quality;

  /// LicenceTerms id in force for this version
  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'provenance')
  Provenance get provenance;

  FederationItem._();

  factory FederationItem([void updates(FederationItemBuilder b)]) =
      _$FederationItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationItem> get serializer =>
      _$FederationItemSerializer();
}

class _$FederationItemSerializer
    implements PrimitiveSerializer<FederationItem> {
  @override
  final Iterable<Type> types = const [FederationItem, _$FederationItem];

  @override
  final String wireName = r'FederationItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'seq';
    yield serializers.serialize(object.seq, specifiedType: const FullType(int));
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(int),
    );
    if (object.persistReason != null) {
      yield r'persistReason';
      yield serializers.serialize(
        object.persistReason,
        specifiedType: const FullType(FederationItemPersistReasonEnum),
      );
    }
    if (object.historyTier != null) {
      yield r'historyTier';
      yield serializers.serialize(
        object.historyTier,
        specifiedType: const FullType(FederationItemHistoryTierEnum),
      );
    }
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.validUntil != null) {
      yield r'validUntil';
      yield serializers.serialize(
        object.validUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'tombstone';
    yield serializers.serialize(
      object.tombstone,
      specifiedType: const FullType(bool),
    );
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType.nullable(Geometry),
      );
    }
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType.nullable(JsonObject),
      ]),
    );
    if (object.quality != null) {
      yield r'quality';
      yield serializers.serialize(
        object.quality,
        specifiedType: const FullType.nullable(Quality),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    yield r'provenance';
    yield serializers.serialize(
      object.provenance,
      specifiedType: const FullType(Provenance),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationItem object, {
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
    required FederationItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.seq = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'externalId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalId = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.kind = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.version = valueDes;
          break;
        case r'persistReason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FederationItemPersistReasonEnum,
                    ),
                  )
                  as FederationItemPersistReasonEnum?;
          if (valueDes == null) continue;
          result.persistReason = valueDes;
          break;
        case r'historyTier':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FederationItemHistoryTierEnum,
                    ),
                  )
                  as FederationItemHistoryTierEnum?;
          if (valueDes == null) continue;
          result.historyTier = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.observedAt = valueDes;
          break;
        case r'eventTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.eventTime = valueDes;
          break;
        case r'validUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validUntil = valueDes;
          break;
        case r'tombstone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.tombstone = valueDes;
          break;
        case r'geometry':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Geometry),
                  )
                  as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'payload':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>;
          result.payload.replace(valueDes);
          break;
        case r'quality':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Quality),
                  )
                  as Quality?;
          if (valueDes == null) continue;
          result.quality.replace(valueDes);
          break;
        case r'licence':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.licence = valueDes;
          break;
        case r'provenance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Provenance),
                  )
                  as Provenance;
          result.provenance.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FederationItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationItemBuilder();
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

class FederationItemPersistReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FIRST')
  static const FederationItemPersistReasonEnum FIRST =
      _$federationItemPersistReasonEnum_FIRST;
  @BuiltValueEnumConst(wireName: r'REAPPEAR')
  static const FederationItemPersistReasonEnum REAPPEAR =
      _$federationItemPersistReasonEnum_REAPPEAR;
  @BuiltValueEnumConst(wireName: r'SIGNIFICANT')
  static const FederationItemPersistReasonEnum SIGNIFICANT =
      _$federationItemPersistReasonEnum_SIGNIFICANT;
  @BuiltValueEnumConst(wireName: r'TOMBSTONE')
  static const FederationItemPersistReasonEnum TOMBSTONE =
      _$federationItemPersistReasonEnum_TOMBSTONE;
  @BuiltValueEnumConst(wireName: r'CHANGE')
  static const FederationItemPersistReasonEnum CHANGE =
      _$federationItemPersistReasonEnum_CHANGE;
  @BuiltValueEnumConst(wireName: r'SAMPLE')
  static const FederationItemPersistReasonEnum SAMPLE =
      _$federationItemPersistReasonEnum_SAMPLE;
  @BuiltValueEnumConst(wireName: r'KEYFRAME')
  static const FederationItemPersistReasonEnum KEYFRAME =
      _$federationItemPersistReasonEnum_KEYFRAME;
  @BuiltValueEnumConst(wireName: r'HEARTBEAT')
  static const FederationItemPersistReasonEnum HEARTBEAT =
      _$federationItemPersistReasonEnum_HEARTBEAT;
  @BuiltValueEnumConst(wireName: r'TRIGGER_EDGE')
  static const FederationItemPersistReasonEnum TRIGGER_EDGE =
      _$federationItemPersistReasonEnum_TRIGGER_EDGE;
  @BuiltValueEnumConst(wireName: r'SNAPSHOT')
  static const FederationItemPersistReasonEnum SNAPSHOT =
      _$federationItemPersistReasonEnum_SNAPSHOT;

  static Serializer<FederationItemPersistReasonEnum> get serializer =>
      _$federationItemPersistReasonEnumSerializer;

  const FederationItemPersistReasonEnum._(String name) : super(name);

  static BuiltSet<FederationItemPersistReasonEnum> get values =>
      _$federationItemPersistReasonEnumValues;
  static FederationItemPersistReasonEnum valueOf(String name) =>
      _$federationItemPersistReasonEnumValueOf(name);
}

/// The version's history tier; a consumer stores TRACK items in its peer-{id}-trk source (113)
class FederationItemHistoryTierEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STANDARD')
  static const FederationItemHistoryTierEnum STANDARD =
      _$federationItemHistoryTierEnum_STANDARD;
  @BuiltValueEnumConst(wireName: r'TRACK')
  static const FederationItemHistoryTierEnum TRACK =
      _$federationItemHistoryTierEnum_TRACK;

  static Serializer<FederationItemHistoryTierEnum> get serializer =>
      _$federationItemHistoryTierEnumSerializer;

  const FederationItemHistoryTierEnum._(String name) : super(name);

  static BuiltSet<FederationItemHistoryTierEnum> get values =>
      _$federationItemHistoryTierEnumValues;
  static FederationItemHistoryTierEnum valueOf(String name) =>
      _$federationItemHistoryTierEnumValueOf(name);
}
