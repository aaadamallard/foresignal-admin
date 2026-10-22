//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion_dismiss.g.dart';

/// Dismiss a tuning suggestion (115)
///
/// Properties:
/// * [reason]
@BuiltValue()
abstract class TuningSuggestionDismiss
    implements Built<TuningSuggestionDismiss, TuningSuggestionDismissBuilder> {
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  TuningSuggestionDismiss._();

  factory TuningSuggestionDismiss([
    void updates(TuningSuggestionDismissBuilder b),
  ]) = _$TuningSuggestionDismiss;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionDismissBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestionDismiss> get serializer =>
      _$TuningSuggestionDismissSerializer();
}

class _$TuningSuggestionDismissSerializer
    implements PrimitiveSerializer<TuningSuggestionDismiss> {
  @override
  final Iterable<Type> types = const [
    TuningSuggestionDismiss,
    _$TuningSuggestionDismiss,
  ];

  @override
  final String wireName = r'TuningSuggestionDismiss';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestionDismiss object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    TuningSuggestionDismiss object, {
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
    required TuningSuggestionDismissBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
  TuningSuggestionDismiss deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionDismissBuilder();
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
