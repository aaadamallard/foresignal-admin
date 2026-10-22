//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'narrative_split_input.g.dart';

/// Move member posts (and their evidence groups' reposts) into a new narrative (agent)
///
/// Properties:
/// * [postRefs] - Record refs of member posts
/// * [reason]
@BuiltValue()
abstract class NarrativeSplitInput
    implements Built<NarrativeSplitInput, NarrativeSplitInputBuilder> {
  /// Record refs of member posts
  @BuiltValueField(wireName: r'postRefs')
  BuiltList<String> get postRefs;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  NarrativeSplitInput._();

  factory NarrativeSplitInput([void updates(NarrativeSplitInputBuilder b)]) =
      _$NarrativeSplitInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NarrativeSplitInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NarrativeSplitInput> get serializer =>
      _$NarrativeSplitInputSerializer();
}

class _$NarrativeSplitInputSerializer
    implements PrimitiveSerializer<NarrativeSplitInput> {
  @override
  final Iterable<Type> types = const [
    NarrativeSplitInput,
    _$NarrativeSplitInput
  ];

  @override
  final String wireName = r'NarrativeSplitInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NarrativeSplitInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'postRefs';
    yield serializers.serialize(
      object.postRefs,
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
    NarrativeSplitInput object, {
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
    required NarrativeSplitInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'postRefs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.postRefs.replace(valueDes);
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
  NarrativeSplitInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NarrativeSplitInputBuilder();
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
