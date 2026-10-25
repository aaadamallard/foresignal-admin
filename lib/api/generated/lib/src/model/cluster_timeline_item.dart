//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cluster_timeline_item.g.dart';

/// One item of a cluster's combined timeline, deduplicated by global evidence key
///
/// Properties:
/// * [evidenceKey] - Global evidence key, e.g. `ev:{family}:{originator}:{upstreamId}`
/// * [at]
/// * [type]
/// * [title]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [envelope]
/// * [heldBy] - Visible chronicles holding this item
@BuiltValue()
abstract class ClusterTimelineItem
    implements Built<ClusterTimelineItem, ClusterTimelineItemBuilder> {
  /// Global evidence key, e.g. `ev:{family}:{originator}:{upstreamId}`
  @BuiltValueField(wireName: r'evidenceKey')
  String get evidenceKey;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'type')
  ClusterTimelineItemTypeEnum get type;
  // enum typeEnum {  alert,  finding,  situation-change,  hypothesis-band-change,  forecast-resolution,  first-appearance,  layer-edit,  capture-gap,  cap-warning,  cap-fallback,  status-change,  backfill,  record,  };

  @BuiltValueField(wireName: r'title')
  String get title;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope? get envelope;

  /// Visible chronicles holding this item
  @BuiltValueField(wireName: r'heldBy')
  BuiltList<String> get heldBy;

  ClusterTimelineItem._();

  factory ClusterTimelineItem([void updates(ClusterTimelineItemBuilder b)]) =
      _$ClusterTimelineItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClusterTimelineItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClusterTimelineItem> get serializer =>
      _$ClusterTimelineItemSerializer();
}

class _$ClusterTimelineItemSerializer
    implements PrimitiveSerializer<ClusterTimelineItem> {
  @override
  final Iterable<Type> types = const [
    ClusterTimelineItem,
    _$ClusterTimelineItem,
  ];

  @override
  final String wireName = r'ClusterTimelineItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClusterTimelineItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'evidenceKey';
    yield serializers.serialize(
      object.evidenceKey,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ClusterTimelineItemTypeEnum),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.envelope != null) {
      yield r'envelope';
      yield serializers.serialize(
        object.envelope,
        specifiedType: const FullType.nullable(ObjectEnvelope),
      );
    }
    yield r'heldBy';
    yield serializers.serialize(
      object.heldBy,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ClusterTimelineItem object, {
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
    required ClusterTimelineItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evidenceKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.evidenceKey = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ClusterTimelineItemTypeEnum),
                  )
                  as ClusterTimelineItemTypeEnum;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'envelope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ObjectEnvelope),
                  )
                  as ObjectEnvelope?;
          if (valueDes == null) continue;
          result.envelope.replace(valueDes);
          break;
        case r'heldBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.heldBy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClusterTimelineItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClusterTimelineItemBuilder();
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

class ClusterTimelineItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const ClusterTimelineItemTypeEnum alert =
      _$clusterTimelineItemTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'finding')
  static const ClusterTimelineItemTypeEnum finding =
      _$clusterTimelineItemTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'situation-change')
  static const ClusterTimelineItemTypeEnum situationChange =
      _$clusterTimelineItemTypeEnum_situationChange;
  @BuiltValueEnumConst(wireName: r'hypothesis-band-change')
  static const ClusterTimelineItemTypeEnum hypothesisBandChange =
      _$clusterTimelineItemTypeEnum_hypothesisBandChange;
  @BuiltValueEnumConst(wireName: r'forecast-resolution')
  static const ClusterTimelineItemTypeEnum forecastResolution =
      _$clusterTimelineItemTypeEnum_forecastResolution;
  @BuiltValueEnumConst(wireName: r'first-appearance')
  static const ClusterTimelineItemTypeEnum firstAppearance =
      _$clusterTimelineItemTypeEnum_firstAppearance;
  @BuiltValueEnumConst(wireName: r'layer-edit')
  static const ClusterTimelineItemTypeEnum layerEdit =
      _$clusterTimelineItemTypeEnum_layerEdit;
  @BuiltValueEnumConst(wireName: r'capture-gap')
  static const ClusterTimelineItemTypeEnum captureGap =
      _$clusterTimelineItemTypeEnum_captureGap;
  @BuiltValueEnumConst(wireName: r'cap-warning')
  static const ClusterTimelineItemTypeEnum capWarning =
      _$clusterTimelineItemTypeEnum_capWarning;
  @BuiltValueEnumConst(wireName: r'cap-fallback')
  static const ClusterTimelineItemTypeEnum capFallback =
      _$clusterTimelineItemTypeEnum_capFallback;
  @BuiltValueEnumConst(wireName: r'status-change')
  static const ClusterTimelineItemTypeEnum statusChange =
      _$clusterTimelineItemTypeEnum_statusChange;
  @BuiltValueEnumConst(wireName: r'backfill')
  static const ClusterTimelineItemTypeEnum backfill =
      _$clusterTimelineItemTypeEnum_backfill;
  @BuiltValueEnumConst(wireName: r'record')
  static const ClusterTimelineItemTypeEnum record =
      _$clusterTimelineItemTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ClusterTimelineItemTypeEnum unknownDefaultOpenApi =
      _$clusterTimelineItemTypeEnum_unknownDefaultOpenApi;

  static Serializer<ClusterTimelineItemTypeEnum> get serializer =>
      _$clusterTimelineItemTypeEnumSerializer;

  const ClusterTimelineItemTypeEnum._(String name) : super(name);

  static BuiltSet<ClusterTimelineItemTypeEnum> get values =>
      _$clusterTimelineItemTypeEnumValues;
  static ClusterTimelineItemTypeEnum valueOf(String name) =>
      _$clusterTimelineItemTypeEnumValueOf(name);
}
