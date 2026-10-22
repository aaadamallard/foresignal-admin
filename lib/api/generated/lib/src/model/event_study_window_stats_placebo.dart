//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_window_stats_placebo.g.dart';

/// Placebo distribution of the same statistic
///
/// Properties:
/// * [count]
/// * [mean]
/// * [sd]
/// * [p05]
/// * [p50]
/// * [p95]
@BuiltValue()
abstract class EventStudyWindowStatsPlacebo
    implements
        Built<EventStudyWindowStatsPlacebo,
            EventStudyWindowStatsPlaceboBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'mean')
  num? get mean;

  @BuiltValueField(wireName: r'sd')
  num? get sd;

  @BuiltValueField(wireName: r'p05')
  num? get p05;

  @BuiltValueField(wireName: r'p50')
  num? get p50;

  @BuiltValueField(wireName: r'p95')
  num? get p95;

  EventStudyWindowStatsPlacebo._();

  factory EventStudyWindowStatsPlacebo(
          [void updates(EventStudyWindowStatsPlaceboBuilder b)]) =
      _$EventStudyWindowStatsPlacebo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyWindowStatsPlaceboBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyWindowStatsPlacebo> get serializer =>
      _$EventStudyWindowStatsPlaceboSerializer();
}

class _$EventStudyWindowStatsPlaceboSerializer
    implements PrimitiveSerializer<EventStudyWindowStatsPlacebo> {
  @override
  final Iterable<Type> types = const [
    EventStudyWindowStatsPlacebo,
    _$EventStudyWindowStatsPlacebo
  ];

  @override
  final String wireName = r'EventStudyWindowStatsPlacebo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyWindowStatsPlacebo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    if (object.mean != null) {
      yield r'mean';
      yield serializers.serialize(
        object.mean,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.sd != null) {
      yield r'sd';
      yield serializers.serialize(
        object.sd,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p05 != null) {
      yield r'p05';
      yield serializers.serialize(
        object.p05,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p50 != null) {
      yield r'p50';
      yield serializers.serialize(
        object.p50,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.p95 != null) {
      yield r'p95';
      yield serializers.serialize(
        object.p95,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyWindowStatsPlacebo object, {
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
    required EventStudyWindowStatsPlaceboBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'mean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.mean = valueDes;
          break;
        case r'sd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sd = valueDes;
          break;
        case r'p05':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p05 = valueDes;
          break;
        case r'p50':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p50 = valueDes;
          break;
        case r'p95':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.p95 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyWindowStatsPlacebo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyWindowStatsPlaceboBuilder();
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
