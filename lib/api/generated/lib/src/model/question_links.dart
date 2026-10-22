//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_links.g.dart';

/// Objects a question is about
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [hypothesisSetId] - ULID identifier
/// * [precursorId] - ULID identifier
/// * [findingId] - ULID identifier
/// * [seriesRef] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [outlookId] - ULID identifier
@BuiltValue()
abstract class QuestionLinks
    implements Built<QuestionLinks, QuestionLinksBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisSetId')
  String? get hypothesisSetId;

  /// ULID identifier
  @BuiltValueField(wireName: r'precursorId')
  String? get precursorId;

  /// ULID identifier
  @BuiltValueField(wireName: r'findingId')
  String? get findingId;

  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'seriesRef')
  String? get seriesRef;

  /// ULID identifier
  @BuiltValueField(wireName: r'outlookId')
  String? get outlookId;

  QuestionLinks._();

  factory QuestionLinks([void updates(QuestionLinksBuilder b)]) =
      _$QuestionLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionLinks> get serializer =>
      _$QuestionLinksSerializer();
}

class _$QuestionLinksSerializer implements PrimitiveSerializer<QuestionLinks> {
  @override
  final Iterable<Type> types = const [QuestionLinks, _$QuestionLinks];

  @override
  final String wireName = r'QuestionLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.hypothesisSetId != null) {
      yield r'hypothesisSetId';
      yield serializers.serialize(
        object.hypothesisSetId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.precursorId != null) {
      yield r'precursorId';
      yield serializers.serialize(
        object.precursorId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.findingId != null) {
      yield r'findingId';
      yield serializers.serialize(
        object.findingId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.seriesRef != null) {
      yield r'seriesRef';
      yield serializers.serialize(
        object.seriesRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.outlookId != null) {
      yield r'outlookId';
      yield serializers.serialize(
        object.outlookId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionLinks object, {
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
    required QuestionLinksBuilder result,
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
        case r'hypothesisSetId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hypothesisSetId = valueDes;
          break;
        case r'precursorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.precursorId = valueDes;
          break;
        case r'findingId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.findingId = valueDes;
          break;
        case r'seriesRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.seriesRef = valueDes;
          break;
        case r'outlookId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.outlookId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuestionLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionLinksBuilder();
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
