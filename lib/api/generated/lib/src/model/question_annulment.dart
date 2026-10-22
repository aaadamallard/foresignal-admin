//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_annulment.g.dart';

/// Why a question was annulled (annulled questions are not scored)
///
/// Properties:
/// * [code]
/// * [reason]
/// * [at]
/// * [by]
@BuiltValue()
abstract class QuestionAnnulment
    implements Built<QuestionAnnulment, QuestionAnnulmentBuilder> {
  @BuiltValueField(wireName: r'code')
  QuestionAnnulmentCodeEnum get code;
  // enum codeEnum {  LOW_DETECTABILITY,  COVERAGE_GAP,  OPERATOR,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'by')
  String get by;

  QuestionAnnulment._();

  factory QuestionAnnulment([void updates(QuestionAnnulmentBuilder b)]) =
      _$QuestionAnnulment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionAnnulmentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionAnnulment> get serializer =>
      _$QuestionAnnulmentSerializer();
}

class _$QuestionAnnulmentSerializer
    implements PrimitiveSerializer<QuestionAnnulment> {
  @override
  final Iterable<Type> types = const [QuestionAnnulment, _$QuestionAnnulment];

  @override
  final String wireName = r'QuestionAnnulment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionAnnulment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(QuestionAnnulmentCodeEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionAnnulment object, {
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
    required QuestionAnnulmentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(QuestionAnnulmentCodeEnum),
                  )
                  as QuestionAnnulmentCodeEnum;
          result.code = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'by':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.by = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionAnnulment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionAnnulmentBuilder();
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

class QuestionAnnulmentCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LOW_DETECTABILITY')
  static const QuestionAnnulmentCodeEnum LOW_DETECTABILITY =
      _$questionAnnulmentCodeEnum_LOW_DETECTABILITY;
  @BuiltValueEnumConst(wireName: r'COVERAGE_GAP')
  static const QuestionAnnulmentCodeEnum COVERAGE_GAP =
      _$questionAnnulmentCodeEnum_COVERAGE_GAP;
  @BuiltValueEnumConst(wireName: r'OPERATOR')
  static const QuestionAnnulmentCodeEnum OPERATOR =
      _$questionAnnulmentCodeEnum_OPERATOR;

  static Serializer<QuestionAnnulmentCodeEnum> get serializer =>
      _$questionAnnulmentCodeEnumSerializer;

  const QuestionAnnulmentCodeEnum._(String name) : super(name);

  static BuiltSet<QuestionAnnulmentCodeEnum> get values =>
      _$questionAnnulmentCodeEnumValues;
  static QuestionAnnulmentCodeEnum valueOf(String name) =>
      _$questionAnnulmentCodeEnumValueOf(name);
}
