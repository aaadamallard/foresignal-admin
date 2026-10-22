//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_sketch_batch_result_rejected_inner.g.dart';

/// Rejected sketch
///
/// Properties:
/// * [sketchId]
/// * [reason]
@BuiltValue()
abstract class ChronicleSketchBatchResultRejectedInner
    implements
        Built<ChronicleSketchBatchResultRejectedInner,
            ChronicleSketchBatchResultRejectedInnerBuilder> {
  @BuiltValueField(wireName: r'sketchId')
  String get sketchId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  ChronicleSketchBatchResultRejectedInner._();

  factory ChronicleSketchBatchResultRejectedInner(
          [void updates(ChronicleSketchBatchResultRejectedInnerBuilder b)]) =
      _$ChronicleSketchBatchResultRejectedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleSketchBatchResultRejectedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleSketchBatchResultRejectedInner> get serializer =>
      _$ChronicleSketchBatchResultRejectedInnerSerializer();
}

class _$ChronicleSketchBatchResultRejectedInnerSerializer
    implements PrimitiveSerializer<ChronicleSketchBatchResultRejectedInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleSketchBatchResultRejectedInner,
    _$ChronicleSketchBatchResultRejectedInner
  ];

  @override
  final String wireName = r'ChronicleSketchBatchResultRejectedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleSketchBatchResultRejectedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sketchId';
    yield serializers.serialize(
      object.sketchId,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchBatchResultRejectedInner object, {
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
    required ChronicleSketchBatchResultRejectedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sketchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sketchId = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleSketchBatchResultRejectedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleSketchBatchResultRejectedInnerBuilder();
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
