//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alert_transition_input.g.dart';

/// Optional note and feedback recorded when acknowledging or resolving an alert
///
/// Properties:
/// * [note]
/// * [feedback]
@BuiltValue()
abstract class AlertTransitionInput
    implements Built<AlertTransitionInput, AlertTransitionInputBuilder> {
  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'feedback')
  AlertTransitionInputFeedbackEnum? get feedback;
  // enum feedbackEnum {  useful,  noise,  late,  false_positive,  };

  AlertTransitionInput._();

  factory AlertTransitionInput([void updates(AlertTransitionInputBuilder b)]) =
      _$AlertTransitionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlertTransitionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlertTransitionInput> get serializer =>
      _$AlertTransitionInputSerializer();
}

class _$AlertTransitionInputSerializer
    implements PrimitiveSerializer<AlertTransitionInput> {
  @override
  final Iterable<Type> types = const [
    AlertTransitionInput,
    _$AlertTransitionInput
  ];

  @override
  final String wireName = r'AlertTransitionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlertTransitionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.feedback != null) {
      yield r'feedback';
      yield serializers.serialize(
        object.feedback,
        specifiedType:
            const FullType.nullable(AlertTransitionInputFeedbackEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlertTransitionInput object, {
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
    required AlertTransitionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'feedback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AlertTransitionInputFeedbackEnum),
          ) as AlertTransitionInputFeedbackEnum?;
          if (valueDes == null) continue;
          result.feedback = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlertTransitionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlertTransitionInputBuilder();
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

class AlertTransitionInputFeedbackEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AlertTransitionInputFeedbackEnum useful =
      _$alertTransitionInputFeedbackEnum_useful;
  @BuiltValueEnumConst(wireName: r'noise')
  static const AlertTransitionInputFeedbackEnum noise =
      _$alertTransitionInputFeedbackEnum_noise;
  @BuiltValueEnumConst(wireName: r'late')
  static const AlertTransitionInputFeedbackEnum late_ =
      _$alertTransitionInputFeedbackEnum_late_;
  @BuiltValueEnumConst(wireName: r'false_positive')
  static const AlertTransitionInputFeedbackEnum falsePositive =
      _$alertTransitionInputFeedbackEnum_falsePositive;

  static Serializer<AlertTransitionInputFeedbackEnum> get serializer =>
      _$alertTransitionInputFeedbackEnumSerializer;

  const AlertTransitionInputFeedbackEnum._(String name) : super(name);

  static BuiltSet<AlertTransitionInputFeedbackEnum> get values =>
      _$alertTransitionInputFeedbackEnumValues;
  static AlertTransitionInputFeedbackEnum valueOf(String name) =>
      _$alertTransitionInputFeedbackEnumValueOf(name);
}
