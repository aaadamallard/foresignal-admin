//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/archive_partition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_partition_page.g.dart';

/// A page of archive partitions
///
/// Properties:
/// * [items]
/// * [nextCursor] - Pass as `cursor` for the next page; null on the last page
@BuiltValue()
abstract class ArchivePartitionPage
    implements Built<ArchivePartitionPage, ArchivePartitionPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ArchivePartition> get items;

  /// Pass as `cursor` for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ArchivePartitionPage._();

  factory ArchivePartitionPage([void updates(ArchivePartitionPageBuilder b)]) =
      _$ArchivePartitionPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchivePartitionPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchivePartitionPage> get serializer =>
      _$ArchivePartitionPageSerializer();
}

class _$ArchivePartitionPageSerializer
    implements PrimitiveSerializer<ArchivePartitionPage> {
  @override
  final Iterable<Type> types = const [
    ArchivePartitionPage,
    _$ArchivePartitionPage,
  ];

  @override
  final String wireName = r'ArchivePartitionPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchivePartitionPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ArchivePartition)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchivePartitionPage object, {
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
    required ArchivePartitionPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ArchivePartition),
                    ]),
                  )
                  as BuiltList<ArchivePartition>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchivePartitionPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchivePartitionPageBuilder();
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
