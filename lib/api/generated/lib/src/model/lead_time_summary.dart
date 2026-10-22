//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lead_time_summary.g.dart';

/// Median and interquartile lead in seconds (positive = social first)
///
/// Properties:
/// * [n]
/// * [median]
/// * [p25]
/// * [p75]
@BuiltValue()
abstract class LeadTimeSummary
    implements Built<LeadTimeSummary, LeadTimeSummaryBuilder> {
  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'median')
  num? get median;

  @BuiltValueField(wireName: r'p25')
  num? get p25;

  @BuiltValueField(wireName: r'p75')
  num? get p75;

  LeadTimeSummary._();

  factory LeadTimeSummary([void updates(LeadTimeSummaryBuilder b)]) =
      _$LeadTimeSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeadTimeSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeadTimeSummary> get serializer =>
      _$LeadTimeSummarySerializer();
}

class _$LeadTimeSummarySerializer
    implements PrimitiveSerializer<LeadTimeSummary> {
  @override
  final Iterable<Type> types = const [LeadTimeSummary, _$LeadTimeSummary];

  @override
  final String wireName = r'LeadTimeSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeadTimeSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    if (object.median != null) {
      yield r'median';
      yield serializers.serialize(
        object.median,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p25 != null) {
      yield r'p25';
      yield serializers.serialize(
        object.p25,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p75 != null) {
      yield r'p75';
      yield serializers.serialize(
        object.p75,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeSummary object, {
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
    required LeadTimeSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'median':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.median = valueDes;
          break;
        case r'p25':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.p25 = valueDes;
          break;
        case r'p75':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.p75 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeadTimeSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeadTimeSummaryBuilder();
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
