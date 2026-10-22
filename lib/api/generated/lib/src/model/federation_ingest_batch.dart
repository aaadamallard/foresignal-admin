//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/federation_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'federation_ingest_batch.g.dart';

/// Edge-to-hub ingest batch (113)
///
/// Properties:
/// * [items]
@BuiltValue()
abstract class FederationIngestBatch
    implements Built<FederationIngestBatch, FederationIngestBatchBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<FederationItem> get items;

  FederationIngestBatch._();

  factory FederationIngestBatch(
      [void updates(FederationIngestBatchBuilder b)]) = _$FederationIngestBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FederationIngestBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FederationIngestBatch> get serializer =>
      _$FederationIngestBatchSerializer();
}

class _$FederationIngestBatchSerializer
    implements PrimitiveSerializer<FederationIngestBatch> {
  @override
  final Iterable<Type> types = const [
    FederationIngestBatch,
    _$FederationIngestBatch
  ];

  @override
  final String wireName = r'FederationIngestBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FederationIngestBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(FederationItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FederationIngestBatch object, {
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
    required FederationIngestBatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(FederationItem)]),
          ) as BuiltList<FederationItem>;
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
  FederationIngestBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederationIngestBatchBuilder();
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
