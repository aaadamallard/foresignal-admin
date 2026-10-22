//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_feedback.g.dart';

/// Feedback on a note or proposal
///
/// Properties:
/// * [id] - ULID identifier
/// * [target]
/// * [targetId] - ULID identifier
/// * [rating]
/// * [comment]
/// * [by]
/// * [at]
@BuiltValue()
abstract class AnalystFeedback
    implements Built<AnalystFeedback, AnalystFeedbackBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'target')
  AnalystFeedbackTargetEnum get target;
  // enum targetEnum {  note,  proposal,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'targetId')
  String get targetId;

  @BuiltValueField(wireName: r'rating')
  AnalystFeedbackRatingEnum get rating;
  // enum ratingEnum {  useful,  not_useful,  wrong,  };

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'by')
  String get by;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  AnalystFeedback._();

  factory AnalystFeedback([void updates(AnalystFeedbackBuilder b)]) =
      _$AnalystFeedback;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystFeedbackBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystFeedback> get serializer =>
      _$AnalystFeedbackSerializer();
}

class _$AnalystFeedbackSerializer
    implements PrimitiveSerializer<AnalystFeedback> {
  @override
  final Iterable<Type> types = const [AnalystFeedback, _$AnalystFeedback];

  @override
  final String wireName = r'AnalystFeedback';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystFeedback object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(AnalystFeedbackTargetEnum),
    );
    yield r'targetId';
    yield serializers.serialize(
      object.targetId,
      specifiedType: const FullType(String),
    );
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(AnalystFeedbackRatingEnum),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'by';
    yield serializers.serialize(
      object.by,
      specifiedType: const FullType(String),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystFeedback object, {
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
    required AnalystFeedbackBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystFeedbackTargetEnum),
          ) as AnalystFeedbackTargetEnum;
          result.target = valueDes;
          break;
        case r'targetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetId = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalystFeedbackRatingEnum),
          ) as AnalystFeedbackRatingEnum;
          result.rating = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.by = valueDes;
          break;
        case r'at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.at = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystFeedback deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystFeedbackBuilder();
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

class AnalystFeedbackTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'note')
  static const AnalystFeedbackTargetEnum note =
      _$analystFeedbackTargetEnum_note;
  @BuiltValueEnumConst(wireName: r'proposal')
  static const AnalystFeedbackTargetEnum proposal =
      _$analystFeedbackTargetEnum_proposal;

  static Serializer<AnalystFeedbackTargetEnum> get serializer =>
      _$analystFeedbackTargetEnumSerializer;

  const AnalystFeedbackTargetEnum._(String name) : super(name);

  static BuiltSet<AnalystFeedbackTargetEnum> get values =>
      _$analystFeedbackTargetEnumValues;
  static AnalystFeedbackTargetEnum valueOf(String name) =>
      _$analystFeedbackTargetEnumValueOf(name);
}

class AnalystFeedbackRatingEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'useful')
  static const AnalystFeedbackRatingEnum useful =
      _$analystFeedbackRatingEnum_useful;
  @BuiltValueEnumConst(wireName: r'not_useful')
  static const AnalystFeedbackRatingEnum notUseful =
      _$analystFeedbackRatingEnum_notUseful;
  @BuiltValueEnumConst(wireName: r'wrong')
  static const AnalystFeedbackRatingEnum wrong =
      _$analystFeedbackRatingEnum_wrong;

  static Serializer<AnalystFeedbackRatingEnum> get serializer =>
      _$analystFeedbackRatingEnumSerializer;

  const AnalystFeedbackRatingEnum._(String name) : super(name);

  static BuiltSet<AnalystFeedbackRatingEnum> get values =>
      _$analystFeedbackRatingEnumValues;
  static AnalystFeedbackRatingEnum valueOf(String name) =>
      _$analystFeedbackRatingEnumValueOf(name);
}
