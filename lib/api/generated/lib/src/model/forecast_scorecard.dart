//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/scorecard_entry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_scorecard.g.dart';

/// Scorecard: per forecaster and category, computed by `ForecastScorer`
///
/// Properties:
/// * [forecasterId]
/// * [category]
/// * [from]
/// * [to]
/// * [retrospective] - True for scorecards from retrospective evaluations
/// * [entries]
/// * [scorerVersion]
/// * [computedAt]
@BuiltValue()
abstract class ForecastScorecard
    implements Built<ForecastScorecard, ForecastScorecardBuilder> {
  @BuiltValueField(wireName: r'forecasterId')
  String? get forecasterId;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  /// True for scorecards from retrospective evaluations
  @BuiltValueField(wireName: r'retrospective')
  bool get retrospective;

  @BuiltValueField(wireName: r'entries')
  BuiltList<ScorecardEntry> get entries;

  @BuiltValueField(wireName: r'scorerVersion')
  String get scorerVersion;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ForecastScorecard._();

  factory ForecastScorecard([void updates(ForecastScorecardBuilder b)]) =
      _$ForecastScorecard;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastScorecardBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastScorecard> get serializer =>
      _$ForecastScorecardSerializer();
}

class _$ForecastScorecardSerializer
    implements PrimitiveSerializer<ForecastScorecard> {
  @override
  final Iterable<Type> types = const [ForecastScorecard, _$ForecastScorecard];

  @override
  final String wireName = r'ForecastScorecard';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastScorecard object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.forecasterId != null) {
      yield r'forecasterId';
      yield serializers.serialize(
        object.forecasterId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'retrospective';
    yield serializers.serialize(
      object.retrospective,
      specifiedType: const FullType(bool),
    );
    yield r'entries';
    yield serializers.serialize(
      object.entries,
      specifiedType: const FullType(BuiltList, [FullType(ScorecardEntry)]),
    );
    yield r'scorerVersion';
    yield serializers.serialize(
      object.scorerVersion,
      specifiedType: const FullType(String),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastScorecard object, {
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
    required ForecastScorecardBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecasterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.forecasterId = valueDes;
          break;
        case r'category':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'retrospective':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.retrospective = valueDes;
          break;
        case r'entries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ScorecardEntry),
                    ]),
                  )
                  as BuiltList<ScorecardEntry>;
          result.entries.replace(valueDes);
          break;
        case r'scorerVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.scorerVersion = valueDes;
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastScorecard deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastScorecardBuilder();
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
