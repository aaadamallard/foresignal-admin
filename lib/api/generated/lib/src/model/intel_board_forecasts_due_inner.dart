//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/icd_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_board_forecasts_due_inner.g.dart';

/// Question due in the next 7 days
///
/// Properties:
/// * [questionId] - ULID identifier
/// * [title]
/// * [dueAt]
/// * [probability]
/// * [estimativeTerm]
@BuiltValue()
abstract class IntelBoardForecastsDueInner
    implements
        Built<IntelBoardForecastsDueInner, IntelBoardForecastsDueInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'dueAt')
  DateTime get dueAt;

  @BuiltValueField(wireName: r'probability')
  num? get probability;

  @BuiltValueField(wireName: r'estimativeTerm')
  IcdTerm? get estimativeTerm;
  // enum estimativeTermEnum {  almost no chance,  very unlikely,  unlikely,  roughly even chance,  likely,  very likely,  almost certain,  };

  IntelBoardForecastsDueInner._();

  factory IntelBoardForecastsDueInner([
    void updates(IntelBoardForecastsDueInnerBuilder b),
  ]) = _$IntelBoardForecastsDueInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelBoardForecastsDueInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelBoardForecastsDueInner> get serializer =>
      _$IntelBoardForecastsDueInnerSerializer();
}

class _$IntelBoardForecastsDueInnerSerializer
    implements PrimitiveSerializer<IntelBoardForecastsDueInner> {
  @override
  final Iterable<Type> types = const [
    IntelBoardForecastsDueInner,
    _$IntelBoardForecastsDueInner,
  ];

  @override
  final String wireName = r'IntelBoardForecastsDueInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelBoardForecastsDueInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'dueAt';
    yield serializers.serialize(
      object.dueAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.probability != null) {
      yield r'probability';
      yield serializers.serialize(
        object.probability,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.estimativeTerm != null) {
      yield r'estimativeTerm';
      yield serializers.serialize(
        object.estimativeTerm,
        specifiedType: const FullType.nullable(IcdTerm),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardForecastsDueInner object, {
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
    required IntelBoardForecastsDueInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.questionId = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'dueAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.dueAt = valueDes;
          break;
        case r'probability':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.probability = valueDes;
          break;
        case r'estimativeTerm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IcdTerm),
                  )
                  as IcdTerm?;
          if (valueDes == null) continue;
          result.estimativeTerm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelBoardForecastsDueInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelBoardForecastsDueInnerBuilder();
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
