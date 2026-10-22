//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_frame_removals_inner.g.dart';

/// Entity leaving the frame state
///
/// Properties:
/// * [id]
/// * [reason]
/// * [left] - True when the entity left the bbox
@BuiltValue()
abstract class HistoryFrameRemovalsInner
    implements
        Built<HistoryFrameRemovalsInner, HistoryFrameRemovalsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'reason')
  HistoryFrameRemovalsInnerReasonEnum get reason;
  // enum reasonEnum {  tombstone,  expired,  left,  };

  /// True when the entity left the bbox
  @BuiltValueField(wireName: r'left')
  bool get left;

  HistoryFrameRemovalsInner._();

  factory HistoryFrameRemovalsInner(
          [void updates(HistoryFrameRemovalsInnerBuilder b)]) =
      _$HistoryFrameRemovalsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryFrameRemovalsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryFrameRemovalsInner> get serializer =>
      _$HistoryFrameRemovalsInnerSerializer();
}

class _$HistoryFrameRemovalsInnerSerializer
    implements PrimitiveSerializer<HistoryFrameRemovalsInner> {
  @override
  final Iterable<Type> types = const [
    HistoryFrameRemovalsInner,
    _$HistoryFrameRemovalsInner
  ];

  @override
  final String wireName = r'HistoryFrameRemovalsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryFrameRemovalsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(HistoryFrameRemovalsInnerReasonEnum),
    );
    yield r'left';
    yield serializers.serialize(
      object.left,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryFrameRemovalsInner object, {
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
    required HistoryFrameRemovalsInnerBuilder result,
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
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HistoryFrameRemovalsInnerReasonEnum),
          ) as HistoryFrameRemovalsInnerReasonEnum;
          result.reason = valueDes;
          break;
        case r'left':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.left = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryFrameRemovalsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryFrameRemovalsInnerBuilder();
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

class HistoryFrameRemovalsInnerReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'tombstone')
  static const HistoryFrameRemovalsInnerReasonEnum tombstone =
      _$historyFrameRemovalsInnerReasonEnum_tombstone;
  @BuiltValueEnumConst(wireName: r'expired')
  static const HistoryFrameRemovalsInnerReasonEnum expired =
      _$historyFrameRemovalsInnerReasonEnum_expired;
  @BuiltValueEnumConst(wireName: r'left')
  static const HistoryFrameRemovalsInnerReasonEnum left =
      _$historyFrameRemovalsInnerReasonEnum_left;

  static Serializer<HistoryFrameRemovalsInnerReasonEnum> get serializer =>
      _$historyFrameRemovalsInnerReasonEnumSerializer;

  const HistoryFrameRemovalsInnerReasonEnum._(String name) : super(name);

  static BuiltSet<HistoryFrameRemovalsInnerReasonEnum> get values =>
      _$historyFrameRemovalsInnerReasonEnumValues;
  static HistoryFrameRemovalsInnerReasonEnum valueOf(String name) =>
      _$historyFrameRemovalsInnerReasonEnumValueOf(name);
}
