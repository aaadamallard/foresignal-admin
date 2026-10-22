//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_thread_item_gap.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_thread_item.g.dart';

/// One notable item in a chronicle's thread (also the payload of SSE `chronicle.item`)
///
/// Properties:
/// * [id]
/// * [chronicleId] - ULID identifier
/// * [type]
/// * [at]
/// * [seq]
/// * [layerId] - ULID identifier
/// * [title]
/// * [summary]
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [envelope]
/// * [snapshot] - Snapshot kept in `chronicle_event` so the item survives its owner's retention
/// * [gap]
/// * [backfilled]
@BuiltValue()
abstract class ChronicleThreadItem
    implements Built<ChronicleThreadItem, ChronicleThreadItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'type')
  ChronicleThreadItemTypeEnum get type;
  // enum typeEnum {  alert,  finding,  situation-change,  hypothesis-band-change,  forecast-resolution,  first-appearance,  layer-edit,  capture-gap,  cap-warning,  cap-fallback,  status-change,  backfill,  narrative-change,  comparison-change,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'seq')
  int? get seq;

  /// ULID identifier
  @BuiltValueField(wireName: r'layerId')
  String? get layerId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  @BuiltValueField(wireName: r'envelope')
  ObjectEnvelope? get envelope;

  /// Snapshot kept in `chronicle_event` so the item survives its owner's retention
  @BuiltValueField(wireName: r'snapshot')
  BuiltMap<String, JsonObject?>? get snapshot;

  @BuiltValueField(wireName: r'gap')
  ChronicleThreadItemGap? get gap;

  @BuiltValueField(wireName: r'backfilled')
  bool? get backfilled;

  ChronicleThreadItem._();

  factory ChronicleThreadItem([void updates(ChronicleThreadItemBuilder b)]) =
      _$ChronicleThreadItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleThreadItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleThreadItem> get serializer =>
      _$ChronicleThreadItemSerializer();
}

class _$ChronicleThreadItemSerializer
    implements PrimitiveSerializer<ChronicleThreadItem> {
  @override
  final Iterable<Type> types = const [
    ChronicleThreadItem,
    _$ChronicleThreadItem,
  ];

  @override
  final String wireName = r'ChronicleThreadItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleThreadItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(object.id, specifiedType: const FullType(int));
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ChronicleThreadItemTypeEnum),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.layerId != null) {
      yield r'layerId';
      yield serializers.serialize(
        object.layerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.snapshot != null) {
      yield r'snapshot';
      yield serializers.serialize(
        object.snapshot,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.gap != null) {
      yield r'gap';
      yield serializers.serialize(
        object.gap,
        specifiedType: const FullType.nullable(ChronicleThreadItemGap),
      );
    }
    if (object.backfilled != null) {
      yield r'backfilled';
      yield serializers.serialize(
        object.backfilled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleThreadItem object, {
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
    required ChronicleThreadItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.id = valueDes;
          break;
        case r'chronicleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.chronicleId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChronicleThreadItemTypeEnum),
                  )
                  as ChronicleThreadItemTypeEnum;
          result.type = valueDes;
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
        case r'seq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'layerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.layerId = valueDes;
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
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
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
        case r'snapshot':
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
          result.snapshot.replace(valueDes);
          break;
        case r'gap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ChronicleThreadItemGap,
                    ),
                  )
                  as ChronicleThreadItemGap?;
          if (valueDes == null) continue;
          result.gap.replace(valueDes);
          break;
        case r'backfilled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.backfilled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleThreadItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleThreadItemBuilder();
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

class ChronicleThreadItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'alert')
  static const ChronicleThreadItemTypeEnum alert =
      _$chronicleThreadItemTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'finding')
  static const ChronicleThreadItemTypeEnum finding =
      _$chronicleThreadItemTypeEnum_finding;
  @BuiltValueEnumConst(wireName: r'situation-change')
  static const ChronicleThreadItemTypeEnum situationChange =
      _$chronicleThreadItemTypeEnum_situationChange;
  @BuiltValueEnumConst(wireName: r'hypothesis-band-change')
  static const ChronicleThreadItemTypeEnum hypothesisBandChange =
      _$chronicleThreadItemTypeEnum_hypothesisBandChange;
  @BuiltValueEnumConst(wireName: r'forecast-resolution')
  static const ChronicleThreadItemTypeEnum forecastResolution =
      _$chronicleThreadItemTypeEnum_forecastResolution;
  @BuiltValueEnumConst(wireName: r'first-appearance')
  static const ChronicleThreadItemTypeEnum firstAppearance =
      _$chronicleThreadItemTypeEnum_firstAppearance;
  @BuiltValueEnumConst(wireName: r'layer-edit')
  static const ChronicleThreadItemTypeEnum layerEdit =
      _$chronicleThreadItemTypeEnum_layerEdit;
  @BuiltValueEnumConst(wireName: r'capture-gap')
  static const ChronicleThreadItemTypeEnum captureGap =
      _$chronicleThreadItemTypeEnum_captureGap;
  @BuiltValueEnumConst(wireName: r'cap-warning')
  static const ChronicleThreadItemTypeEnum capWarning =
      _$chronicleThreadItemTypeEnum_capWarning;
  @BuiltValueEnumConst(wireName: r'cap-fallback')
  static const ChronicleThreadItemTypeEnum capFallback =
      _$chronicleThreadItemTypeEnum_capFallback;
  @BuiltValueEnumConst(wireName: r'status-change')
  static const ChronicleThreadItemTypeEnum statusChange =
      _$chronicleThreadItemTypeEnum_statusChange;
  @BuiltValueEnumConst(wireName: r'backfill')
  static const ChronicleThreadItemTypeEnum backfill =
      _$chronicleThreadItemTypeEnum_backfill;
  @BuiltValueEnumConst(wireName: r'narrative-change')
  static const ChronicleThreadItemTypeEnum narrativeChange =
      _$chronicleThreadItemTypeEnum_narrativeChange;
  @BuiltValueEnumConst(wireName: r'comparison-change')
  static const ChronicleThreadItemTypeEnum comparisonChange =
      _$chronicleThreadItemTypeEnum_comparisonChange;

  static Serializer<ChronicleThreadItemTypeEnum> get serializer =>
      _$chronicleThreadItemTypeEnumSerializer;

  const ChronicleThreadItemTypeEnum._(String name) : super(name);

  static BuiltSet<ChronicleThreadItemTypeEnum> get values =>
      _$chronicleThreadItemTypeEnumValues;
  static ChronicleThreadItemTypeEnum valueOf(String name) =>
      _$chronicleThreadItemTypeEnumValueOf(name);
}
