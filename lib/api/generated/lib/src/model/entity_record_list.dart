//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/entity_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_record_list.g.dart';

/// Current records across sources for one entity (head ⋈ live)
///
/// Properties:
/// * [entityId] - ULID identifier
/// * [at] - Validity instant the links were selected at
/// * [items]
@BuiltValue()
abstract class EntityRecordList
    implements Built<EntityRecordList, EntityRecordListBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'entityId')
  String get entityId;

  /// Validity instant the links were selected at
  @BuiltValueField(wireName: r'at')
  DateTime? get at;

  @BuiltValueField(wireName: r'items')
  BuiltList<EntityRecord> get items;

  EntityRecordList._();

  factory EntityRecordList([void updates(EntityRecordListBuilder b)]) =
      _$EntityRecordList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityRecordListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityRecordList> get serializer =>
      _$EntityRecordListSerializer();
}

class _$EntityRecordListSerializer
    implements PrimitiveSerializer<EntityRecordList> {
  @override
  final Iterable<Type> types = const [EntityRecordList, _$EntityRecordList];

  @override
  final String wireName = r'EntityRecordList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityRecordList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityId';
    yield serializers.serialize(
      object.entityId,
      specifiedType: const FullType(String),
    );
    if (object.at != null) {
      yield r'at';
      yield serializers.serialize(
        object.at,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EntityRecord)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityRecordList object, {
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
    required EntityRecordListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entityId = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.at = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EntityRecord)]),
          ) as BuiltList<EntityRecord>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityRecordList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityRecordListBuilder();
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
