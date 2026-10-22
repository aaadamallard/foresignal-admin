//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_merge_input.g.dart';

/// Merge other narratives into this one (agent); merged narratives get `mergedInto`
///
/// Properties:
/// * [narrativeIds]
/// * [reason]
@BuiltValue()
abstract class NarrativeMergeInput
    implements Built<NarrativeMergeInput, NarrativeMergeInputBuilder> {
  @BuiltValueField(wireName: r'narrativeIds')
  BuiltList<String> get narrativeIds;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  NarrativeMergeInput._();

  factory NarrativeMergeInput([void updates(NarrativeMergeInputBuilder b)]) =
      _$NarrativeMergeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeMergeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeMergeInput> get serializer =>
      _$NarrativeMergeInputSerializer();
}

class _$NarrativeMergeInputSerializer
    implements PrimitiveSerializer<NarrativeMergeInput> {
  @override
  final Iterable<Type> types = const [
    NarrativeMergeInput,
    _$NarrativeMergeInput
  ];

  @override
  final String wireName = r'NarrativeMergeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeMergeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeIds';
    yield serializers.serialize(
      object.narrativeIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NarrativeMergeInput object, {
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
    required NarrativeMergeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.narrativeIds.replace(valueDes);
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  NarrativeMergeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeMergeInputBuilder();
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
