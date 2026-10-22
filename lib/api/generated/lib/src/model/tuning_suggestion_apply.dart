//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion_apply.g.dart';

/// Apply a tuning suggestion (115)
///
/// Properties:
/// * [note]
@BuiltValue()
abstract class TuningSuggestionApply
    implements Built<TuningSuggestionApply, TuningSuggestionApplyBuilder> {
  @BuiltValueField(wireName: r'note')
  String? get note;

  TuningSuggestionApply._();

  factory TuningSuggestionApply([
    void updates(TuningSuggestionApplyBuilder b),
  ]) = _$TuningSuggestionApply;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionApplyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestionApply> get serializer =>
      _$TuningSuggestionApplySerializer();
}

class _$TuningSuggestionApplySerializer
    implements PrimitiveSerializer<TuningSuggestionApply> {
  @override
  final Iterable<Type> types = const [
    TuningSuggestionApply,
    _$TuningSuggestionApply,
  ];

  @override
  final String wireName = r'TuningSuggestionApply';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestionApply object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionApply object, {
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
    required TuningSuggestionApplyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningSuggestionApply deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionApplyBuilder();
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
