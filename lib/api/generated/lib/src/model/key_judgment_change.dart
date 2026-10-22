//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_judgment_change.g.dart';

/// Change against the previous assessment
///
/// Properties:
/// * [previousProbability]
/// * [previousText]
/// * [explanation]
@BuiltValue()
abstract class KeyJudgmentChange
    implements Built<KeyJudgmentChange, KeyJudgmentChangeBuilder> {
  @BuiltValueField(wireName: r'previousProbability')
  num? get previousProbability;

  @BuiltValueField(wireName: r'previousText')
  String? get previousText;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  KeyJudgmentChange._();

  factory KeyJudgmentChange([void updates(KeyJudgmentChangeBuilder b)]) =
      _$KeyJudgmentChange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyJudgmentChangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyJudgmentChange> get serializer =>
      _$KeyJudgmentChangeSerializer();
}

class _$KeyJudgmentChangeSerializer
    implements PrimitiveSerializer<KeyJudgmentChange> {
  @override
  final Iterable<Type> types = const [KeyJudgmentChange, _$KeyJudgmentChange];

  @override
  final String wireName = r'KeyJudgmentChange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyJudgmentChange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.previousProbability != null) {
      yield r'previousProbability';
      yield serializers.serialize(
        object.previousProbability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.previousText != null) {
      yield r'previousText';
      yield serializers.serialize(
        object.previousText,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyJudgmentChange object, {
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
    required KeyJudgmentChangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'previousProbability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.previousProbability = valueDes;
          break;
        case r'previousText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.previousText = valueDes;
          break;
        case r'explanation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.explanation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeyJudgmentChange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyJudgmentChangeBuilder();
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
