//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/entity_link.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_record.g.dart';

/// A current record linked to an entity, with the link that joins them
///
/// Properties:
/// * [record]
/// * [link]
@BuiltValue()
abstract class EntityRecord
    implements Built<EntityRecord, EntityRecordBuilder> {
  @BuiltValueField(wireName: r'record')
  Record get record;

  @BuiltValueField(wireName: r'link')
  EntityLink get link;

  EntityRecord._();

  factory EntityRecord([void updates(EntityRecordBuilder b)]) = _$EntityRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityRecord> get serializer => _$EntityRecordSerializer();
}

class _$EntityRecordSerializer implements PrimitiveSerializer<EntityRecord> {
  @override
  final Iterable<Type> types = const [EntityRecord, _$EntityRecord];

  @override
  final String wireName = r'EntityRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'record';
    yield serializers.serialize(
      object.record,
      specifiedType: const FullType(Record),
    );
    yield r'link';
    yield serializers.serialize(
      object.link,
      specifiedType: const FullType(EntityLink),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityRecord object, {
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
    required EntityRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Record),
                  )
                  as Record;
          result.record.replace(valueDes);
          break;
        case r'link':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityLink),
                  )
                  as EntityLink;
          result.link.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityRecordBuilder();
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
