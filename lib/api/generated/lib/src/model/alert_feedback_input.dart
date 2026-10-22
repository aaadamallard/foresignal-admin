//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_feedback_input.g.dart';

/// Alert-quality feedback
///
/// Properties:
/// * [feedback]
/// * [note]
@BuiltValue()
abstract class AlertFeedbackInput
    implements Built<AlertFeedbackInput, AlertFeedbackInputBuilder> {
  @BuiltValueField(wireName: r'feedback')
  AlertFeedbackInputFeedbackEnum get feedback;
  // enum feedbackEnum {  useful,  noise,  late,  false_positive,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  AlertFeedbackInput._();

  factory AlertFeedbackInput([void updates(AlertFeedbackInputBuilder b)]) =
      _$AlertFeedbackInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertFeedbackInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertFeedbackInput> get serializer =>
      _$AlertFeedbackInputSerializer();
}

class _$AlertFeedbackInputSerializer
    implements PrimitiveSerializer<AlertFeedbackInput> {
  @override
  final Iterable<Type> types = const [AlertFeedbackInput, _$AlertFeedbackInput];

  @override
  final String wireName = r'AlertFeedbackInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertFeedbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'feedback';
    yield serializers.serialize(
      object.feedback,
      specifiedType: const FullType(AlertFeedbackInputFeedbackEnum),
    );
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
    AlertFeedbackInput object, {
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
    required AlertFeedbackInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'feedback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlertFeedbackInputFeedbackEnum),
          ) as AlertFeedbackInputFeedbackEnum;
          result.feedback = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  AlertFeedbackInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertFeedbackInputBuilder();
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

class AlertFeedbackInputFeedbackEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AlertFeedbackInputFeedbackEnum useful =
      _$alertFeedbackInputFeedbackEnum_useful;
  @BuiltValueEnumConst(wireName: r'noise')
  static const AlertFeedbackInputFeedbackEnum noise =
      _$alertFeedbackInputFeedbackEnum_noise;
  @BuiltValueEnumConst(wireName: r'late')
  static const AlertFeedbackInputFeedbackEnum late_ =
      _$alertFeedbackInputFeedbackEnum_late_;
  @BuiltValueEnumConst(wireName: r'false_positive')
  static const AlertFeedbackInputFeedbackEnum falsePositive =
      _$alertFeedbackInputFeedbackEnum_falsePositive;

  static Serializer<AlertFeedbackInputFeedbackEnum> get serializer =>
      _$alertFeedbackInputFeedbackEnumSerializer;

  const AlertFeedbackInputFeedbackEnum._(String name) : super(name);

  static BuiltSet<AlertFeedbackInputFeedbackEnum> get values =>
      _$alertFeedbackInputFeedbackEnumValues;
  static AlertFeedbackInputFeedbackEnum valueOf(String name) =>
      _$alertFeedbackInputFeedbackEnumValueOf(name);
}
