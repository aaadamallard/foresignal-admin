//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/edp_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/edp_snapshot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_batch.g.dart';

/// A batch of EDP items (push body or pull response)
///
/// Properties:
/// * [protocol] - foresignal-edp/1.N; N must not exceed the highest minor the instance supports (GET /v1/external/protocol), else PROTOCOL_UNSUPPORTED
/// * [sourceId] - Optional. The source is identified by the push URL and key (or the pull registration); when present this must equal the registered source id (400 SOURCE_MISMATCH).
/// * [sentAt]
/// * [items]
/// * [nextCursor]
/// * [snapshot]
@BuiltValue()
abstract class EdpBatch implements Built<EdpBatch, EdpBatchBuilder> {
  /// foresignal-edp/1.N; N must not exceed the highest minor the instance supports (GET /v1/external/protocol), else PROTOCOL_UNSUPPORTED
  @BuiltValueField(wireName: r'protocol')
  String get protocol;

  /// Optional. The source is identified by the push URL and key (or the pull registration); when present this must equal the registered source id (400 SOURCE_MISMATCH).
  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'sentAt')
  DateTime? get sentAt;

  @BuiltValueField(wireName: r'items')
  BuiltList<EdpItem> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'snapshot')
  EdpSnapshot? get snapshot;

  EdpBatch._();

  factory EdpBatch([void updates(EdpBatchBuilder b)]) = _$EdpBatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpBatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpBatch> get serializer => _$EdpBatchSerializer();
}

class _$EdpBatchSerializer implements PrimitiveSerializer<EdpBatch> {
  @override
  final Iterable<Type> types = const [EdpBatch, _$EdpBatch];

  @override
  final String wireName = r'EdpBatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpBatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'protocol';
    yield serializers.serialize(
      object.protocol,
      specifiedType: const FullType(String),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sentAt != null) {
      yield r'sentAt';
      yield serializers.serialize(
        object.sentAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EdpItem)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.snapshot != null) {
      yield r'snapshot';
      yield serializers.serialize(
        object.snapshot,
        specifiedType: const FullType.nullable(EdpSnapshot),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpBatch object, {
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
    required EdpBatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.protocol = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'sentAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.sentAt = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EdpItem)]),
          ) as BuiltList<EdpItem>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        case r'snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdpSnapshot),
          ) as EdpSnapshot?;
          if (valueDes == null) continue;
          result.snapshot.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdpBatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpBatchBuilder();
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
