//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_sketch_batch_result_rejected_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_batch_result.g.dart';

/// Outcome of receiving a sketch batch
///
/// Properties:
/// * [accepted]
/// * [rejected]
@BuiltValue()
abstract class ChronicleSketchBatchResult
    implements
        Built<ChronicleSketchBatchResult, ChronicleSketchBatchResultBuilder> {
  @BuiltValueField(wireName: r'accepted')
  int get accepted;

  @BuiltValueField(wireName: r'rejected')
  BuiltList<ChronicleSketchBatchResultRejectedInner> get rejected;

  ChronicleSketchBatchResult._();

  factory ChronicleSketchBatchResult(
          [void updates(ChronicleSketchBatchResultBuilder b)]) =
      _$ChronicleSketchBatchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchBatchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchBatchResult> get serializer =>
      _$ChronicleSketchBatchResultSerializer();
}

class _$ChronicleSketchBatchResultSerializer
    implements PrimitiveSerializer<ChronicleSketchBatchResult> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchBatchResult,
    _$ChronicleSketchBatchResult
  ];

  @override
  final String wireName = r'ChronicleSketchBatchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchBatchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accepted';
    yield serializers.serialize(
      object.accepted,
      specifiedType: const FullType(int),
    );
    yield r'rejected';
    yield serializers.serialize(
      object.rejected,
      specifiedType: const FullType(
          BuiltList, [FullType(ChronicleSketchBatchResultRejectedInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchResult object, {
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
    required ChronicleSketchBatchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accepted = valueDes;
          break;
        case r'rejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleSketchBatchResultRejectedInner)]),
          ) as BuiltList<ChronicleSketchBatchResultRejectedInner>;
          result.rejected.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchBatchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchBatchResultBuilder();
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
