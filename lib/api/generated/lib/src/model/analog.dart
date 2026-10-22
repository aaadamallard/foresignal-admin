//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/analog_outcomes.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/situation_theme.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog.g.dart';

/// A past situation (or region-period) similar to the target, with what happened next
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [title]
/// * [theme]
/// * [regionCodes]
/// * [period]
/// * [rank]
/// * [similarity] - Reciprocal-rank-fused score
/// * [featureSimilarity] - Feature cosine
/// * [embeddingSimilarity] - Summary embedding cosine (null without embeddings)
/// * [outcomes]
@BuiltValue()
abstract class Analog implements Built<Analog, AnalogBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'theme')
  SituationTheme? get theme;
  // enum themeEnum {  maritime,  aviation,  conflict,  infrastructure,  weather,  cyber,  markets,  health,  space,  mixed,  };

  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String> get regionCodes;

  @BuiltValueField(wireName: r'period')
  TimeRange get period;

  @BuiltValueField(wireName: r'rank')
  int get rank;

  /// Reciprocal-rank-fused score
  @BuiltValueField(wireName: r'similarity')
  num get similarity;

  /// Feature cosine
  @BuiltValueField(wireName: r'featureSimilarity')
  num? get featureSimilarity;

  /// Summary embedding cosine (null without embeddings)
  @BuiltValueField(wireName: r'embeddingSimilarity')
  num? get embeddingSimilarity;

  @BuiltValueField(wireName: r'outcomes')
  AnalogOutcomes get outcomes;

  Analog._();

  factory Analog([void updates(AnalogBuilder b)]) = _$Analog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Analog> get serializer => _$AnalogSerializer();
}

class _$AnalogSerializer implements PrimitiveSerializer<Analog> {
  @override
  final Iterable<Type> types = const [Analog, _$Analog];

  @override
  final String wireName = r'Analog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Analog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(SituationTheme),
      );
    }
    yield r'regionCodes';
    yield serializers.serialize(
      object.regionCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(TimeRange),
    );
    yield r'rank';
    yield serializers.serialize(
      object.rank,
      specifiedType: const FullType(int),
    );
    yield r'similarity';
    yield serializers.serialize(
      object.similarity,
      specifiedType: const FullType(num),
    );
    if (object.featureSimilarity != null) {
      yield r'featureSimilarity';
      yield serializers.serialize(
        object.featureSimilarity,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.embeddingSimilarity != null) {
      yield r'embeddingSimilarity';
      yield serializers.serialize(
        object.embeddingSimilarity,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'outcomes';
    yield serializers.serialize(
      object.outcomes,
      specifiedType: const FullType(AnalogOutcomes),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Analog object, {
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
    required AnalogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SituationTheme),
          ) as SituationTheme?;
          if (valueDes == null) continue;
          result.theme = valueDes;
          break;
        case r'regionCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.regionCodes.replace(valueDes);
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeRange),
          ) as TimeRange;
          result.period.replace(valueDes);
          break;
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rank = valueDes;
          break;
        case r'similarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.similarity = valueDes;
          break;
        case r'featureSimilarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.featureSimilarity = valueDes;
          break;
        case r'embeddingSimilarity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.embeddingSimilarity = valueDes;
          break;
        case r'outcomes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnalogOutcomes),
          ) as AnalogOutcomes;
          result.outcomes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Analog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogBuilder();
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
