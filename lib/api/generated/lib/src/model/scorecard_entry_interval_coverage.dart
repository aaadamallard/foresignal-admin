//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry_interval_coverage.g.dart';

/// Share of numeric outcomes inside central intervals
///
/// Properties:
/// * [p05p95]
/// * [p25p75]
@BuiltValue()
abstract class ScorecardEntryIntervalCoverage
    implements
        Built<ScorecardEntryIntervalCoverage,
            ScorecardEntryIntervalCoverageBuilder> {
  @BuiltValueField(wireName: r'p05p95')
  num? get p05p95;

  @BuiltValueField(wireName: r'p25p75')
  num? get p25p75;

  ScorecardEntryIntervalCoverage._();

  factory ScorecardEntryIntervalCoverage(
          [void updates(ScorecardEntryIntervalCoverageBuilder b)]) =
      _$ScorecardEntryIntervalCoverage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntryIntervalCoverageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntryIntervalCoverage> get serializer =>
      _$ScorecardEntryIntervalCoverageSerializer();
}

class _$ScorecardEntryIntervalCoverageSerializer
    implements PrimitiveSerializer<ScorecardEntryIntervalCoverage> {
  @override
  final Iterable<Type> types = const [
    ScorecardEntryIntervalCoverage,
    _$ScorecardEntryIntervalCoverage
  ];

  @override
  final String wireName = r'ScorecardEntryIntervalCoverage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntryIntervalCoverage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p05p95 != null) {
      yield r'p05p95';
      yield serializers.serialize(
        object.p05p95,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p25p75 != null) {
      yield r'p25p75';
      yield serializers.serialize(
        object.p25p75,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntryIntervalCoverage object, {
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
    required ScorecardEntryIntervalCoverageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p05p95':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p05p95 = valueDes;
          break;
        case r'p25p75':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p25p75 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntryIntervalCoverage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntryIntervalCoverageBuilder();
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
