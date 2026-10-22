//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/history_frame_removals_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/frame_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_frame.g.dart';

/// Changes in one frame interval (t_{i−1}, t_i] (037)
///
/// Properties:
/// * [t]
/// * [upserts]
/// * [removals]
@BuiltValue()
abstract class HistoryFrame
    implements Built<HistoryFrame, HistoryFrameBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'upserts')
  BuiltList<FrameItem> get upserts;

  @BuiltValueField(wireName: r'removals')
  BuiltList<HistoryFrameRemovalsInner> get removals;

  HistoryFrame._();

  factory HistoryFrame([void updates(HistoryFrameBuilder b)]) = _$HistoryFrame;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryFrameBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryFrame> get serializer => _$HistoryFrameSerializer();
}

class _$HistoryFrameSerializer implements PrimitiveSerializer<HistoryFrame> {
  @override
  final Iterable<Type> types = const [HistoryFrame, _$HistoryFrame];

  @override
  final String wireName = r'HistoryFrame';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryFrame object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'upserts';
    yield serializers.serialize(
      object.upserts,
      specifiedType: const FullType(BuiltList, [FullType(FrameItem)]),
    );
    yield r'removals';
    yield serializers.serialize(
      object.removals,
      specifiedType:
          const FullType(BuiltList, [FullType(HistoryFrameRemovalsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryFrame object, {
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
    required HistoryFrameBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.t = valueDes;
          break;
        case r'upserts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FrameItem)]),
          ) as BuiltList<FrameItem>;
          result.upserts.replace(valueDes);
          break;
        case r'removals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(HistoryFrameRemovalsInner)]),
          ) as BuiltList<HistoryFrameRemovalsInner>;
          result.removals.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryFrame deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryFrameBuilder();
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
