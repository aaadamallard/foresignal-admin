//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_frame_index_frames_inner.g.dart';

/// One playback step
///
/// Properties:
/// * [t]
/// * [counts] - Layer id → captured versions in the step
/// * [changed] - Changed entities (capped)
/// * [changedTotal]
@BuiltValue()
abstract class ChronicleFrameIndexFramesInner
    implements
        Built<
          ChronicleFrameIndexFramesInner,
          ChronicleFrameIndexFramesInnerBuilder
        > {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  /// Layer id → captured versions in the step
  @BuiltValueField(wireName: r'counts')
  BuiltMap<String, int> get counts;

  /// Changed entities (capped)
  @BuiltValueField(wireName: r'changed')
  BuiltList<String>? get changed;

  @BuiltValueField(wireName: r'changedTotal')
  int? get changedTotal;

  ChronicleFrameIndexFramesInner._();

  factory ChronicleFrameIndexFramesInner([
    void updates(ChronicleFrameIndexFramesInnerBuilder b),
  ]) = _$ChronicleFrameIndexFramesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleFrameIndexFramesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleFrameIndexFramesInner> get serializer =>
      _$ChronicleFrameIndexFramesInnerSerializer();
}

class _$ChronicleFrameIndexFramesInnerSerializer
    implements PrimitiveSerializer<ChronicleFrameIndexFramesInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleFrameIndexFramesInner,
    _$ChronicleFrameIndexFramesInner,
  ];

  @override
  final String wireName = r'ChronicleFrameIndexFramesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleFrameIndexFramesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'counts';
    yield serializers.serialize(
      object.counts,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(int),
      ]),
    );
    if (object.changed != null) {
      yield r'changed';
      yield serializers.serialize(
        object.changed,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.changedTotal != null) {
      yield r'changedTotal';
      yield serializers.serialize(
        object.changedTotal,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleFrameIndexFramesInner object, {
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
    required ChronicleFrameIndexFramesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t = valueDes;
          break;
        case r'counts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>;
          result.counts.replace(valueDes);
          break;
        case r'changed':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.changed.replace(valueDes);
          break;
        case r'changedTotal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.changedTotal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleFrameIndexFramesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleFrameIndexFramesInnerBuilder();
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
