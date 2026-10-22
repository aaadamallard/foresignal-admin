//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/chronicle_frame_index_frames_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_frame_index.g.dart';

/// Frame index for chronicle playback: counts and changed entities per step
///
/// Properties:
/// * [chronicleId] - ULID identifier
/// * [from]
/// * [to]
/// * [step] - ISO-8601 duration
/// * [layers]
/// * [frames]
/// * [truncated]
@BuiltValue()
abstract class ChronicleFrameIndex
    implements Built<ChronicleFrameIndex, ChronicleFrameIndexBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'chronicleId')
  String get chronicleId;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  /// ISO-8601 duration
  @BuiltValueField(wireName: r'step')
  String get step;

  @BuiltValueField(wireName: r'layers')
  BuiltList<String>? get layers;

  @BuiltValueField(wireName: r'frames')
  BuiltList<ChronicleFrameIndexFramesInner> get frames;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  ChronicleFrameIndex._();

  factory ChronicleFrameIndex([void updates(ChronicleFrameIndexBuilder b)]) =
      _$ChronicleFrameIndex;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleFrameIndexBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleFrameIndex> get serializer =>
      _$ChronicleFrameIndexSerializer();
}

class _$ChronicleFrameIndexSerializer
    implements PrimitiveSerializer<ChronicleFrameIndex> {
  @override
  final Iterable<Type> types = const [
    ChronicleFrameIndex,
    _$ChronicleFrameIndex
  ];

  @override
  final String wireName = r'ChronicleFrameIndex';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleFrameIndex object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'chronicleId';
    yield serializers.serialize(
      object.chronicleId,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    yield r'step';
    yield serializers.serialize(
      object.step,
      specifiedType: const FullType(String),
    );
    if (object.layers != null) {
      yield r'layers';
      yield serializers.serialize(
        object.layers,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'frames';
    yield serializers.serialize(
      object.frames,
      specifiedType:
          const FullType(BuiltList, [FullType(ChronicleFrameIndexFramesInner)]),
    );
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleFrameIndex object, {
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
    required ChronicleFrameIndexBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chronicleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.chronicleId = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.to = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.step = valueDes;
          break;
        case r'layers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.layers.replace(valueDes);
          break;
        case r'frames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ChronicleFrameIndexFramesInner)]),
          ) as BuiltList<ChronicleFrameIndexFramesInner>;
          result.frames.replace(valueDes);
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleFrameIndex deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleFrameIndexBuilder();
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
