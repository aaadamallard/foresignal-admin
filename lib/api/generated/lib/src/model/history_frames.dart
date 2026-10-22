//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/frame_item.dart';
import 'package:foresignal_api/src/model/history_frame.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_frames.g.dart';

/// Keyframe plus delta frames for animation on the transaction axis (037); applying frames 1..i to the keyframe equals asOf(t_i)
///
/// Properties:
/// * [asOf]
/// * [step]
/// * [watermarkSeq]
/// * [horizon]
/// * [approximate]
/// * [keyframe]
/// * [frames]
@BuiltValue()
abstract class HistoryFrames
    implements Built<HistoryFrames, HistoryFramesBuilder> {
  @BuiltValueField(wireName: r'asOf')
  DateTime get asOf;

  @BuiltValueField(wireName: r'step')
  String get step;

  @BuiltValueField(wireName: r'watermarkSeq')
  int get watermarkSeq;

  @BuiltValueField(wireName: r'horizon')
  DateTime? get horizon;

  @BuiltValueField(wireName: r'approximate')
  bool? get approximate;

  @BuiltValueField(wireName: r'keyframe')
  BuiltList<FrameItem> get keyframe;

  @BuiltValueField(wireName: r'frames')
  BuiltList<HistoryFrame> get frames;

  HistoryFrames._();

  factory HistoryFrames([void updates(HistoryFramesBuilder b)]) =
      _$HistoryFrames;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HistoryFramesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HistoryFrames> get serializer =>
      _$HistoryFramesSerializer();
}

class _$HistoryFramesSerializer implements PrimitiveSerializer<HistoryFrames> {
  @override
  final Iterable<Type> types = const [HistoryFrames, _$HistoryFrames];

  @override
  final String wireName = r'HistoryFrames';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HistoryFrames object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asOf';
    yield serializers.serialize(
      object.asOf,
      specifiedType: const FullType(DateTime),
    );
    yield r'step';
    yield serializers.serialize(
      object.step,
      specifiedType: const FullType(String),
    );
    yield r'watermarkSeq';
    yield serializers.serialize(
      object.watermarkSeq,
      specifiedType: const FullType(int),
    );
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.approximate != null) {
      yield r'approximate';
      yield serializers.serialize(
        object.approximate,
        specifiedType: const FullType(bool),
      );
    }
    yield r'keyframe';
    yield serializers.serialize(
      object.keyframe,
      specifiedType: const FullType(BuiltList, [FullType(FrameItem)]),
    );
    yield r'frames';
    yield serializers.serialize(
      object.frames,
      specifiedType: const FullType(BuiltList, [FullType(HistoryFrame)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HistoryFrames object, {
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
    required HistoryFramesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.asOf = valueDes;
          break;
        case r'step':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.step = valueDes;
          break;
        case r'watermarkSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.watermarkSeq = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
          break;
        case r'approximate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approximate = valueDes;
          break;
        case r'keyframe':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(FrameItem),
                    ]),
                  )
                  as BuiltList<FrameItem>;
          result.keyframe.replace(valueDes);
          break;
        case r'frames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(HistoryFrame),
                    ]),
                  )
                  as BuiltList<HistoryFrame>;
          result.frames.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HistoryFrames deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryFramesBuilder();
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
