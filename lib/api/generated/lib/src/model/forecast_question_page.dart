//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/forecast_question_summary.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_question_page.g.dart';

/// A page of forecast questions
///
/// Properties:
/// * [items]
/// * [nextCursor] - Cursor for the next page; null on the last page
@BuiltValue()
abstract class ForecastQuestionPage
    implements Built<ForecastQuestionPage, ForecastQuestionPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ForecastQuestionSummary> get items;

  /// Cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ForecastQuestionPage._();

  factory ForecastQuestionPage([void updates(ForecastQuestionPageBuilder b)]) =
      _$ForecastQuestionPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastQuestionPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastQuestionPage> get serializer =>
      _$ForecastQuestionPageSerializer();
}

class _$ForecastQuestionPageSerializer
    implements PrimitiveSerializer<ForecastQuestionPage> {
  @override
  final Iterable<Type> types = const [
    ForecastQuestionPage,
    _$ForecastQuestionPage,
  ];

  @override
  final String wireName = r'ForecastQuestionPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastQuestionPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [
        FullType(ForecastQuestionSummary),
      ]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastQuestionPage object, {
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
    required ForecastQuestionPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ForecastQuestionSummary),
                    ]),
                  )
                  as BuiltList<ForecastQuestionSummary>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastQuestionPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastQuestionPageBuilder();
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
