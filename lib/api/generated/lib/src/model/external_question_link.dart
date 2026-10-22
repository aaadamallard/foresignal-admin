//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_question_link.g.dart';

/// A provider question linked to a ledger question
///
/// Properties:
/// * [streamId]
/// * [externalQuestionId]
/// * [questionId] - ULID identifier
/// * [orientation]
/// * [id] - ULID identifier
/// * [sourceId]
/// * [forecasterId]
/// * [createdAt]
/// * [lastForecastAt]
@BuiltValue()
abstract class ExternalQuestionLink
    implements Built<ExternalQuestionLink, ExternalQuestionLinkBuilder> {
  @BuiltValueField(wireName: r'streamId')
  String get streamId;

  @BuiltValueField(wireName: r'externalQuestionId')
  String get externalQuestionId;

  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'orientation')
  ExternalQuestionLinkOrientationEnum? get orientation;
  // enum orientationEnum {  same,  inverse,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'forecasterId')
  String get forecasterId;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'lastForecastAt')
  DateTime? get lastForecastAt;

  ExternalQuestionLink._();

  factory ExternalQuestionLink([void updates(ExternalQuestionLinkBuilder b)]) =
      _$ExternalQuestionLink;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalQuestionLinkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalQuestionLink> get serializer =>
      _$ExternalQuestionLinkSerializer();
}

class _$ExternalQuestionLinkSerializer
    implements PrimitiveSerializer<ExternalQuestionLink> {
  @override
  final Iterable<Type> types = const [
    ExternalQuestionLink,
    _$ExternalQuestionLink
  ];

  @override
  final String wireName = r'ExternalQuestionLink';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalQuestionLink object, {
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
        specifiedType: const FullType(ExternalQuestionLinkOrientationEnum),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'forecasterId';
    yield serializers.serialize(
      object.forecasterId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastForecastAt != null) {
      yield r'lastForecastAt';
      yield serializers.serialize(
        object.lastForecastAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalQuestionLink object, {
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
    required ExternalQuestionLinkBuilder result,
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
            specifiedType:
                const FullType.nullable(ExternalQuestionLinkOrientationEnum),
          ) as ExternalQuestionLinkOrientationEnum?;
          if (valueDes == null) continue;
          result.orientation = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'forecasterId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.forecasterId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'lastForecastAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastForecastAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalQuestionLink deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalQuestionLinkBuilder();
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

class ExternalQuestionLinkOrientationEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'same')
  static const ExternalQuestionLinkOrientationEnum same =
      _$externalQuestionLinkOrientationEnum_same;
  @BuiltValueEnumConst(wireName: r'inverse')
  static const ExternalQuestionLinkOrientationEnum inverse =
      _$externalQuestionLinkOrientationEnum_inverse;

  static Serializer<ExternalQuestionLinkOrientationEnum> get serializer =>
      _$externalQuestionLinkOrientationEnumSerializer;

  const ExternalQuestionLinkOrientationEnum._(String name) : super(name);

  static BuiltSet<ExternalQuestionLinkOrientationEnum> get values =>
      _$externalQuestionLinkOrientationEnumValues;
  static ExternalQuestionLinkOrientationEnum valueOf(String name) =>
      _$externalQuestionLinkOrientationEnumValueOf(name);
}
