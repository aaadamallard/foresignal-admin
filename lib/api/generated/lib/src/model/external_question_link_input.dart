//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_question_link_input.g.dart';

/// Map a provider question id to a ledger question (138)
///
/// Properties:
/// * [streamId]
/// * [externalQuestionId]
/// * [questionId] - ULID identifier
/// * [orientation]
@BuiltValue()
abstract class ExternalQuestionLinkInput
    implements
        Built<ExternalQuestionLinkInput, ExternalQuestionLinkInputBuilder> {
  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  @BuiltValueField(wireName: r'externalQuestionId')
  String get externalQuestionId;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'orientation')
  ExternalQuestionLinkInputOrientationEnum? get orientation;
  // enum orientationEnum {  same,  inverse,  };

  ExternalQuestionLinkInput._();

  factory ExternalQuestionLinkInput(
          [void updates(ExternalQuestionLinkInputBuilder b)]) =
      _$ExternalQuestionLinkInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalQuestionLinkInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalQuestionLinkInput> get serializer =>
      _$ExternalQuestionLinkInputSerializer();
}

class _$ExternalQuestionLinkInputSerializer
    implements PrimitiveSerializer<ExternalQuestionLinkInput> {
  @override
  final Iterable<Type> types = const [
    ExternalQuestionLinkInput,
    _$ExternalQuestionLinkInput
  ];

  @override
  final String wireName = r'ExternalQuestionLinkInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalQuestionLinkInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'streamId';
    yield serializers.serialize(
      object.streamId,
      specifiedType: const FullType(String),
    );
    yield r'externalQuestionId';
    yield serializers.serialize(
      object.externalQuestionId,
      specifiedType: const FullType(String),
    );
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    if (object.orientation != null) {
      yield r'orientation';
      yield serializers.serialize(
        object.orientation,
        specifiedType: const FullType(ExternalQuestionLinkInputOrientationEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalQuestionLinkInput object, {
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
    required ExternalQuestionLinkInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'streamId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streamId = valueDes;
          break;
        case r'externalQuestionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalQuestionId = valueDes;
          break;
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'orientation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                ExternalQuestionLinkInputOrientationEnum),
          ) as ExternalQuestionLinkInputOrientationEnum?;
          if (valueDes == null) continue;
          result.orientation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalQuestionLinkInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalQuestionLinkInputBuilder();
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

class ExternalQuestionLinkInputOrientationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'same')
  static const ExternalQuestionLinkInputOrientationEnum same =
      _$externalQuestionLinkInputOrientationEnum_same;
  @BuiltValueEnumConst(wireName: r'inverse')
  static const ExternalQuestionLinkInputOrientationEnum inverse =
      _$externalQuestionLinkInputOrientationEnum_inverse;

  static Serializer<ExternalQuestionLinkInputOrientationEnum> get serializer =>
      _$externalQuestionLinkInputOrientationEnumSerializer;

  const ExternalQuestionLinkInputOrientationEnum._(String name) : super(name);

  static BuiltSet<ExternalQuestionLinkInputOrientationEnum> get values =>
      _$externalQuestionLinkInputOrientationEnumValues;
  static ExternalQuestionLinkInputOrientationEnum valueOf(String name) =>
      _$externalQuestionLinkInputOrientationEnumValueOf(name);
}
