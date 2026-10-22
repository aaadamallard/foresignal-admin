//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'investigation_item.g.dart';

/// An item pinned in an investigation with a snapshot taken when added, so evidence survives retention
///
/// Properties:
/// * [id]
/// * [itemType]
/// * [ref] - Item reference: event id, alert id, `{sourceId}/{externalId}`, anomaly id, place id, briefing run id; 129 ObjectRef grammar accepted from 129 on
/// * [seq] - Pinned version seq (records)
/// * [snapshot] - ≤ 64 KB, taken when added
/// * [note]
/// * [addedAt]
/// * [addedBy]
/// * [objectRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
@BuiltValue()
abstract class InvestigationItem
    implements Built<InvestigationItem, InvestigationItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'itemType')
  InvestigationItemItemTypeEnum get itemType;
  // enum itemTypeEnum {  event,  alert,  record,  anomaly,  place,  briefing_run,  note,  evidence-item,  attachment,  object,  };

  /// Item reference: event id, alert id, `{sourceId}/{externalId}`, anomaly id, place id, briefing run id; 129 ObjectRef grammar accepted from 129 on
  @BuiltValueField(wireName: r'ref')
  String get ref;

  /// Pinned version seq (records)
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  /// ≤ 64 KB, taken when added
  @BuiltValueField(wireName: r'snapshot')
  BuiltMap<String, JsonObject?>? get snapshot;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'addedAt')
  DateTime get addedAt;

  @BuiltValueField(wireName: r'addedBy')
  String get addedBy;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'objectRef')
  String? get objectRef;

  InvestigationItem._();

  factory InvestigationItem([void updates(InvestigationItemBuilder b)]) =
      _$InvestigationItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvestigationItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvestigationItem> get serializer =>
      _$InvestigationItemSerializer();
}

class _$InvestigationItemSerializer
    implements PrimitiveSerializer<InvestigationItem> {
  @override
  final Iterable<Type> types = const [InvestigationItem, _$InvestigationItem];

  @override
  final String wireName = r'InvestigationItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvestigationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(InvestigationItemItemTypeEnum),
    );
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.snapshot != null) {
      yield r'snapshot';
      yield serializers.serialize(
        object.snapshot,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'addedBy';
    yield serializers.serialize(
      object.addedBy,
      specifiedType: const FullType(String),
    );
    if (object.objectRef != null) {
      yield r'objectRef';
      yield serializers.serialize(
        object.objectRef,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvestigationItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvestigationItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvestigationItemItemTypeEnum),
          ) as InvestigationItemItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.snapshot.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.addedAt = valueDes;
          break;
        case r'addedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addedBy = valueDes;
          break;
        case r'objectRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.objectRef = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvestigationItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvestigationItemBuilder();
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

class InvestigationItemItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const InvestigationItemItemTypeEnum event =
      _$investigationItemItemTypeEnum_event;
  @BuiltValueEnumConst(wireName: r'alert')
  static const InvestigationItemItemTypeEnum alert =
      _$investigationItemItemTypeEnum_alert;
  @BuiltValueEnumConst(wireName: r'record')
  static const InvestigationItemItemTypeEnum record =
      _$investigationItemItemTypeEnum_record;
  @BuiltValueEnumConst(wireName: r'anomaly')
  static const InvestigationItemItemTypeEnum anomaly =
      _$investigationItemItemTypeEnum_anomaly;
  @BuiltValueEnumConst(wireName: r'place')
  static const InvestigationItemItemTypeEnum place =
      _$investigationItemItemTypeEnum_place;
  @BuiltValueEnumConst(wireName: r'briefing_run')
  static const InvestigationItemItemTypeEnum briefingRun =
      _$investigationItemItemTypeEnum_briefingRun;
  @BuiltValueEnumConst(wireName: r'note')
  static const InvestigationItemItemTypeEnum note =
      _$investigationItemItemTypeEnum_note;
  @BuiltValueEnumConst(wireName: r'evidence-item')
  static const InvestigationItemItemTypeEnum evidenceItem =
      _$investigationItemItemTypeEnum_evidenceItem;
  @BuiltValueEnumConst(wireName: r'attachment')
  static const InvestigationItemItemTypeEnum attachment =
      _$investigationItemItemTypeEnum_attachment;
  @BuiltValueEnumConst(wireName: r'object')
  static const InvestigationItemItemTypeEnum object =
      _$investigationItemItemTypeEnum_object;

  static Serializer<InvestigationItemItemTypeEnum> get serializer =>
      _$investigationItemItemTypeEnumSerializer;

  const InvestigationItemItemTypeEnum._(String name) : super(name);

  static BuiltSet<InvestigationItemItemTypeEnum> get values =>
      _$investigationItemItemTypeEnumValues;
  static InvestigationItemItemTypeEnum valueOf(String name) =>
      _$investigationItemItemTypeEnumValueOf(name);
}
