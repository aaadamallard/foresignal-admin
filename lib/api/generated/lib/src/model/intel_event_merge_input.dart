//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_event_merge_input.g.dart';

/// Merge the path event into another open event of the same type
///
/// Properties:
/// * [intoId] - ULID identifier
@BuiltValue()
abstract class IntelEventMergeInput
    implements Built<IntelEventMergeInput, IntelEventMergeInputBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'intoId')
  String get intoId;

  IntelEventMergeInput._();

  factory IntelEventMergeInput([void updates(IntelEventMergeInputBuilder b)]) =
      _$IntelEventMergeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelEventMergeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelEventMergeInput> get serializer =>
      _$IntelEventMergeInputSerializer();
}

class _$IntelEventMergeInputSerializer
    implements PrimitiveSerializer<IntelEventMergeInput> {
  @override
  final Iterable<Type> types = const [
    IntelEventMergeInput,
    _$IntelEventMergeInput,
  ];

  @override
  final String wireName = r'IntelEventMergeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelEventMergeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'intoId';
    yield serializers.serialize(
      object.intoId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelEventMergeInput object, {
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
    required IntelEventMergeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'intoId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.intoId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelEventMergeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelEventMergeInputBuilder();
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
