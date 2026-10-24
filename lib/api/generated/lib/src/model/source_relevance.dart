//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'source_relevance.g.dart';

/// One source's advisory verdict
///
/// Properties:
/// * [sourceId]
/// * [name]
/// * [kinds] - The kinds the source produces, sorted
/// * [verdict] - relevant: belongs with the others; marginal: related but adds little or mostly noise; not-meaningful: unrelated to the rest; unrated: not judged (withheld by the egress policy, left out by the model, or the set could not be rated), with the reason
/// * [reason] - One sentence: the model's reason, or why the source was not rated
@BuiltValue()
abstract class SourceRelevance
    implements Built<SourceRelevance, SourceRelevanceBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// The kinds the source produces, sorted
  @BuiltValueField(wireName: r'kinds')
  BuiltList<String> get kinds;

  /// relevant: belongs with the others; marginal: related but adds little or mostly noise; not-meaningful: unrelated to the rest; unrated: not judged (withheld by the egress policy, left out by the model, or the set could not be rated), with the reason
  @BuiltValueField(wireName: r'verdict')
  SourceRelevanceVerdictEnum get verdict;
  // enum verdictEnum {  relevant,  marginal,  not-meaningful,  unrated,  };

  /// One sentence: the model's reason, or why the source was not rated
  @BuiltValueField(wireName: r'reason')
  String get reason;

  SourceRelevance._();

  factory SourceRelevance([void updates(SourceRelevanceBuilder b)]) =
      _$SourceRelevance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SourceRelevanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SourceRelevance> get serializer =>
      _$SourceRelevanceSerializer();
}

class _$SourceRelevanceSerializer
    implements PrimitiveSerializer<SourceRelevance> {
  @override
  final Iterable<Type> types = const [SourceRelevance, _$SourceRelevance];

  @override
  final String wireName = r'SourceRelevance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SourceRelevance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'verdict';
    yield serializers.serialize(
      object.verdict,
      specifiedType: const FullType(SourceRelevanceVerdictEnum),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SourceRelevance object, {
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
    required SourceRelevanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.kinds.replace(valueDes);
          break;
        case r'verdict':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SourceRelevanceVerdictEnum),
                  )
                  as SourceRelevanceVerdictEnum;
          result.verdict = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SourceRelevance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceRelevanceBuilder();
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

/// relevant: belongs with the others; marginal: related but adds little or mostly noise; not-meaningful: unrelated to the rest; unrated: not judged (withheld by the egress policy, left out by the model, or the set could not be rated), with the reason
class SourceRelevanceVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'relevant')
  static const SourceRelevanceVerdictEnum relevant =
      _$sourceRelevanceVerdictEnum_relevant;
  @BuiltValueEnumConst(wireName: r'marginal')
  static const SourceRelevanceVerdictEnum marginal =
      _$sourceRelevanceVerdictEnum_marginal;
  @BuiltValueEnumConst(wireName: r'not-meaningful')
  static const SourceRelevanceVerdictEnum notMeaningful =
      _$sourceRelevanceVerdictEnum_notMeaningful;
  @BuiltValueEnumConst(wireName: r'unrated')
  static const SourceRelevanceVerdictEnum unrated =
      _$sourceRelevanceVerdictEnum_unrated;

  static Serializer<SourceRelevanceVerdictEnum> get serializer =>
      _$sourceRelevanceVerdictEnumSerializer;

  const SourceRelevanceVerdictEnum._(String name) : super(name);

  static BuiltSet<SourceRelevanceVerdictEnum> get values =>
      _$sourceRelevanceVerdictEnumValues;
  static SourceRelevanceVerdictEnum valueOf(String name) =>
      _$sourceRelevanceVerdictEnumValueOf(name);
}
