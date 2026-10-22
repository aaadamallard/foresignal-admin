//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/tuning_suggestion_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tuning_suggestion_list.g.dart';

/// Tuning suggestions for one rule (TuningSuggester 1.1.0, 115): persisted records with their lifecycle
///
/// Properties:
/// * [ruleId]
/// * [since]
/// * [suggesterVersion]
/// * [suggestions]
/// * [simulationJobId] - Backtest job id when simulate=true
/// * [jobId] - Alias of simulationJobId (103)
@BuiltValue()
abstract class TuningSuggestionList
    implements Built<TuningSuggestionList, TuningSuggestionListBuilder> {
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  @BuiltValueField(wireName: r'suggesterVersion')
  String get suggesterVersion;

  @BuiltValueField(wireName: r'suggestions')
  BuiltList<TuningSuggestionRecord> get suggestions;

  /// Backtest job id when simulate=true
  @BuiltValueField(wireName: r'simulationJobId')
  String? get simulationJobId;

  /// Alias of simulationJobId (103)
  @BuiltValueField(wireName: r'jobId')
  String? get jobId;

  TuningSuggestionList._();

  factory TuningSuggestionList([void updates(TuningSuggestionListBuilder b)]) =
      _$TuningSuggestionList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TuningSuggestionListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TuningSuggestionList> get serializer =>
      _$TuningSuggestionListSerializer();
}

class _$TuningSuggestionListSerializer
    implements PrimitiveSerializer<TuningSuggestionList> {
  @override
  final Iterable<Type> types = const [
    TuningSuggestionList,
    _$TuningSuggestionList
  ];

  @override
  final String wireName = r'TuningSuggestionList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TuningSuggestionList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    yield r'suggesterVersion';
    yield serializers.serialize(
      object.suggesterVersion,
      specifiedType: const FullType(String),
    );
    yield r'suggestions';
    yield serializers.serialize(
      object.suggestions,
      specifiedType:
          const FullType(BuiltList, [FullType(TuningSuggestionRecord)]),
    );
    if (object.simulationJobId != null) {
      yield r'simulationJobId';
      yield serializers.serialize(
        object.simulationJobId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.jobId != null) {
      yield r'jobId';
      yield serializers.serialize(
        object.jobId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TuningSuggestionList object, {
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
    required TuningSuggestionListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.since = valueDes;
          break;
        case r'suggesterVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggesterVersion = valueDes;
          break;
        case r'suggestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TuningSuggestionRecord)]),
          ) as BuiltList<TuningSuggestionRecord>;
          result.suggestions.replace(valueDes);
          break;
        case r'simulationJobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.simulationJobId = valueDes;
          break;
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jobId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TuningSuggestionList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TuningSuggestionListBuilder();
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
