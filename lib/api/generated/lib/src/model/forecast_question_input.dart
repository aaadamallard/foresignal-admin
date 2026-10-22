//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/question_links.dart';
import 'package:foresignal_api/src/model/question_outcomes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_resolver.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question_input.g.dart';

/// Open a resolvable forecast question
///
/// Properties:
/// * [title]
/// * [type]
/// * [outcomes]
/// * [resolutionCriteria] - Shown verbatim to every forecaster
/// * [resolver]
/// * [opensAt] - Default: now
/// * [closesAt]
/// * [resolveBy]
/// * [category]
/// * [tags]
/// * [links]
/// * [dedupKey]
/// * [private]
@BuiltValue()
abstract class ForecastQuestionInput
    implements Built<ForecastQuestionInput, ForecastQuestionInputBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'type')
  ForecastQuestionInputTypeEnum get type;
  // enum typeEnum {  binary,  multiple,  ordered,  numeric,  };

  @BuiltValueField(wireName: r'outcomes')
  QuestionOutcomes? get outcomes;

  /// Shown verbatim to every forecaster
  @BuiltValueField(wireName: r'resolutionCriteria')
  String get resolutionCriteria;

  @BuiltValueField(wireName: r'resolver')
  ForecastResolver get resolver;

  /// Default: now
  @BuiltValueField(wireName: r'opensAt')
  DateTime? get opensAt;

  @BuiltValueField(wireName: r'closesAt')
  DateTime get closesAt;

  @BuiltValueField(wireName: r'resolveBy')
  DateTime get resolveBy;

  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'links')
  QuestionLinks? get links;

  @BuiltValueField(wireName: r'dedupKey')
  String? get dedupKey;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  ForecastQuestionInput._();

  factory ForecastQuestionInput([
    void updates(ForecastQuestionInputBuilder b),
  ]) = _$ForecastQuestionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestionInput> get serializer =>
      _$ForecastQuestionInputSerializer();
}

class _$ForecastQuestionInputSerializer
    implements PrimitiveSerializer<ForecastQuestionInput> {
  @override
  final Iterable<Type> types = const [
    ForecastQuestionInput,
    _$ForecastQuestionInput,
  ];

  @override
  final String wireName = r'ForecastQuestionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecastQuestionInputTypeEnum),
    );
    if (object.outcomes != null) {
      yield r'outcomes';
      yield serializers.serialize(
        object.outcomes,
        specifiedType: const FullType(QuestionOutcomes),
      );
    }
    yield r'resolutionCriteria';
    yield serializers.serialize(
      object.resolutionCriteria,
      specifiedType: const FullType(String),
    );
    yield r'resolver';
    yield serializers.serialize(
      object.resolver,
      specifiedType: const FullType(ForecastResolver),
    );
    if (object.opensAt != null) {
      yield r'opensAt';
      yield serializers.serialize(
        object.opensAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'closesAt';
    yield serializers.serialize(
      object.closesAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'resolveBy';
    yield serializers.serialize(
      object.resolveBy,
      specifiedType: const FullType(DateTime),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(QuestionLinks),
      );
    }
    if (object.dedupKey != null) {
      yield r'dedupKey';
      yield serializers.serialize(
        object.dedupKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionInput object, {
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
    required ForecastQuestionInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      ForecastQuestionInputTypeEnum,
                    ),
                  )
                  as ForecastQuestionInputTypeEnum;
          result.type = valueDes;
          break;
        case r'outcomes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuestionOutcomes),
                  )
                  as QuestionOutcomes?;
          if (valueDes == null) continue;
          result.outcomes.replace(valueDes);
          break;
        case r'resolutionCriteria':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.resolutionCriteria = valueDes;
          break;
        case r'resolver':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastResolver),
                  )
                  as ForecastResolver;
          result.resolver.replace(valueDes);
          break;
        case r'opensAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.opensAt = valueDes;
          break;
        case r'closesAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.closesAt = valueDes;
          break;
        case r'resolveBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.resolveBy = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.category = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(QuestionLinks),
                  )
                  as QuestionLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'dedupKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dedupKey = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastQuestionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionInputBuilder();
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

class ForecastQuestionInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const ForecastQuestionInputTypeEnum binary =
      _$forecastQuestionInputTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'multiple')
  static const ForecastQuestionInputTypeEnum multiple =
      _$forecastQuestionInputTypeEnum_multiple;
  @BuiltValueEnumConst(wireName: r'ordered')
  static const ForecastQuestionInputTypeEnum ordered =
      _$forecastQuestionInputTypeEnum_ordered;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const ForecastQuestionInputTypeEnum numeric =
      _$forecastQuestionInputTypeEnum_numeric;

  static Serializer<ForecastQuestionInputTypeEnum> get serializer =>
      _$forecastQuestionInputTypeEnumSerializer;

  const ForecastQuestionInputTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastQuestionInputTypeEnum> get values =>
      _$forecastQuestionInputTypeEnumValues;
  static ForecastQuestionInputTypeEnum valueOf(String name) =>
      _$forecastQuestionInputTypeEnumValueOf(name);
}
