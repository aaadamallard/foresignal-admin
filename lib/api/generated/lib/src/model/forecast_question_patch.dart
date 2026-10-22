//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_resolver.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question_patch.g.dart';

/// JSON merge patch for a question; criteria and resolver are immutable once a forecast exists
///
/// Properties:
/// * [title]
/// * [tags]
/// * [closesAt]
/// * [resolutionCriteria]
/// * [resolver]
@BuiltValue()
abstract class ForecastQuestionPatch
    implements Built<ForecastQuestionPatch, ForecastQuestionPatchBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'closesAt')
  DateTime? get closesAt;

  @BuiltValueField(wireName: r'resolutionCriteria')
  String? get resolutionCriteria;

  @BuiltValueField(wireName: r'resolver')
  ForecastResolver? get resolver;

  ForecastQuestionPatch._();

  factory ForecastQuestionPatch(
      [void updates(ForecastQuestionPatchBuilder b)]) = _$ForecastQuestionPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestionPatch> get serializer =>
      _$ForecastQuestionPatchSerializer();
}

class _$ForecastQuestionPatchSerializer
    implements PrimitiveSerializer<ForecastQuestionPatch> {
  @override
  final Iterable<Type> types = const [
    ForecastQuestionPatch,
    _$ForecastQuestionPatch
  ];

  @override
  final String wireName = r'ForecastQuestionPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestionPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.closesAt != null) {
      yield r'closesAt';
      yield serializers.serialize(
        object.closesAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.resolutionCriteria != null) {
      yield r'resolutionCriteria';
      yield serializers.serialize(
        object.resolutionCriteria,
        specifiedType: const FullType(String),
      );
    }
    if (object.resolver != null) {
      yield r'resolver';
      yield serializers.serialize(
        object.resolver,
        specifiedType: const FullType(ForecastResolver),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionPatch object, {
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
    required ForecastQuestionPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'closesAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.closesAt = valueDes;
          break;
        case r'resolutionCriteria':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resolutionCriteria = valueDes;
          break;
        case r'resolver':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ForecastResolver),
          ) as ForecastResolver?;
          if (valueDes == null) continue;
          result.resolver.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastQuestionPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionPatchBuilder();
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
