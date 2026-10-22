//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/finding_severity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'benchmark_case_expectations_findings_inner.g.dart';

/// Expected finding (or its absence)
///
/// Properties:
/// * [findingType]
/// * [present]
/// * [regionCodes] - ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
/// * [seriesRef] - Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
/// * [from]
/// * [to]
/// * [minSeverity]
@BuiltValue()
abstract class BenchmarkCaseExpectationsFindingsInner
    implements
        Built<
          BenchmarkCaseExpectationsFindingsInner,
          BenchmarkCaseExpectationsFindingsInnerBuilder
        > {
  @BuiltValueField(wireName: r'findingType')
  String get findingType;

  @BuiltValueField(wireName: r'present')
  bool get present;

  /// ISO 3166-1 alpha-2 country or ISO 3166-2 subdivision codes
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// Series reference (Intelligence-Design §4.3): `series:{sourceId}/{seriesId}` (093/117 series; `series:imf-portwatch-chokepoints/{portId}` for PortWatch daily transits), `rollup:{hour|day}/{sourceId|*}/{kind}/{region|cell:h3}` (activity rollups; `*` is the cross-source event count with canonical events counted once) `rule:{ruleId}/{groupKey}` (100 anomaly rule samples) or `rollup:news/{topicId|situationId}/{bucket}` (133: daily news coverage in evidence groups by lean bucket left, center, right, unrated or state); or `social:{topic|place|entity}:{id}/{platform}/{metric}[/{language}]` (135: hourly social mention volume of a scope on one network, metric posts, uniqueAuthors, reposts or engagement, every language summed unless a language bucket is given; `social:all/{platform}/denominator[/{language}]` is the platform-language denominator; complete and paged collection only)
  @BuiltValueField(wireName: r'seriesRef')
  String? get seriesRef;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  @BuiltValueField(wireName: r'minSeverity')
  FindingSeverity? get minSeverity;
  // enum minSeverityEnum {  info,  notable,  significant,  };

  BenchmarkCaseExpectationsFindingsInner._();

  factory BenchmarkCaseExpectationsFindingsInner([
    void updates(BenchmarkCaseExpectationsFindingsInnerBuilder b),
  ]) = _$BenchmarkCaseExpectationsFindingsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BenchmarkCaseExpectationsFindingsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BenchmarkCaseExpectationsFindingsInner> get serializer =>
      _$BenchmarkCaseExpectationsFindingsInnerSerializer();
}

class _$BenchmarkCaseExpectationsFindingsInnerSerializer
    implements PrimitiveSerializer<BenchmarkCaseExpectationsFindingsInner> {
  @override
  final Iterable<Type> types = const [
    BenchmarkCaseExpectationsFindingsInner,
    _$BenchmarkCaseExpectationsFindingsInner,
  ];

  @override
  final String wireName = r'BenchmarkCaseExpectationsFindingsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BenchmarkCaseExpectationsFindingsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'findingType';
    yield serializers.serialize(
      object.findingType,
      specifiedType: const FullType(String),
    );
    yield r'present';
    yield serializers.serialize(
      object.present,
      specifiedType: const FullType(bool),
    );
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.seriesRef != null) {
      yield r'seriesRef';
      yield serializers.serialize(
        object.seriesRef,
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
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType.nullable(FindingSeverity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseExpectationsFindingsInner object, {
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
    required BenchmarkCaseExpectationsFindingsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'findingType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.findingType = valueDes;
          break;
        case r'present':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.present = valueDes;
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'seriesRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.seriesRef = valueDes;
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
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FindingSeverity),
                  )
                  as FindingSeverity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BenchmarkCaseExpectationsFindingsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BenchmarkCaseExpectationsFindingsInnerBuilder();
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
