//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_evaluation_profiles_inner_tokens_per_day_inner.g.dart';

/// Tokens on one day
///
/// Properties:
/// * [date]
/// * [tokens]
@BuiltValue()
abstract class AnalystEvaluationProfilesInnerTokensPerDayInner
    implements
        Built<AnalystEvaluationProfilesInnerTokensPerDayInner,
            AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder> {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'tokens')
  int get tokens;

  AnalystEvaluationProfilesInnerTokensPerDayInner._();

  factory AnalystEvaluationProfilesInnerTokensPerDayInner(
          [void updates(
              AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder b)]) =
      _$AnalystEvaluationProfilesInnerTokensPerDayInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystEvaluationProfilesInnerTokensPerDayInner>
      get serializer =>
          _$AnalystEvaluationProfilesInnerTokensPerDayInnerSerializer();
}

class _$AnalystEvaluationProfilesInnerTokensPerDayInnerSerializer
    implements
        PrimitiveSerializer<AnalystEvaluationProfilesInnerTokensPerDayInner> {
  @override
  final Iterable<Type> types = const [
    AnalystEvaluationProfilesInnerTokensPerDayInner,
    _$AnalystEvaluationProfilesInnerTokensPerDayInner
  ];

  @override
  final String wireName = r'AnalystEvaluationProfilesInnerTokensPerDayInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystEvaluationProfilesInnerTokensPerDayInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'tokens';
    yield serializers.serialize(
      object.tokens,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystEvaluationProfilesInnerTokensPerDayInner object, {
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
    required AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystEvaluationProfilesInnerTokensPerDayInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystEvaluationProfilesInnerTokensPerDayInnerBuilder();
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
