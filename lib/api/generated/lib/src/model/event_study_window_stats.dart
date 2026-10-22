//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/event_study_window_stats_placebo.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_study_window_stats.g.dart';

/// Cross-event statistics for one window
///
/// Properties:
/// * [window] - Offsets in buckets, inclusive
/// * [caar] - Cumulative average abnormal value (standardised when values are withheld)
/// * [standardisedZ]
/// * [standardisedP]
/// * [corradoStat]
/// * [corradoP]
/// * [placeboP] - Share of placebo windows at least as extreme
/// * [placebo]
@BuiltValue()
abstract class EventStudyWindowStats
    implements Built<EventStudyWindowStats, EventStudyWindowStatsBuilder> {
  /// Offsets in buckets, inclusive
  @BuiltValueField(wireName: r'window')
  BuiltList<int> get window;

  /// Cumulative average abnormal value (standardised when values are withheld)
  @BuiltValueField(wireName: r'caar')
  num? get caar;

  @BuiltValueField(wireName: r'standardisedZ')
  num? get standardisedZ;

  @BuiltValueField(wireName: r'standardisedP')
  num? get standardisedP;

  @BuiltValueField(wireName: r'corradoStat')
  num? get corradoStat;

  @BuiltValueField(wireName: r'corradoP')
  num? get corradoP;

  /// Share of placebo windows at least as extreme
  @BuiltValueField(wireName: r'placeboP')
  num? get placeboP;

  @BuiltValueField(wireName: r'placebo')
  EventStudyWindowStatsPlacebo? get placebo;

  EventStudyWindowStats._();

  factory EventStudyWindowStats(
      [void updates(EventStudyWindowStatsBuilder b)]) = _$EventStudyWindowStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventStudyWindowStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventStudyWindowStats> get serializer =>
      _$EventStudyWindowStatsSerializer();
}

class _$EventStudyWindowStatsSerializer
    implements PrimitiveSerializer<EventStudyWindowStats> {
  @override
  final Iterable<Type> types = const [
    EventStudyWindowStats,
    _$EventStudyWindowStats
  ];

  @override
  final String wireName = r'EventStudyWindowStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventStudyWindowStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    if (object.caar != null) {
      yield r'caar';
      yield serializers.serialize(
        object.caar,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.standardisedZ != null) {
      yield r'standardisedZ';
      yield serializers.serialize(
        object.standardisedZ,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.standardisedP != null) {
      yield r'standardisedP';
      yield serializers.serialize(
        object.standardisedP,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.corradoStat != null) {
      yield r'corradoStat';
      yield serializers.serialize(
        object.corradoStat,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.corradoP != null) {
      yield r'corradoP';
      yield serializers.serialize(
        object.corradoP,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.placeboP != null) {
      yield r'placeboP';
      yield serializers.serialize(
        object.placeboP,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.placebo != null) {
      yield r'placebo';
      yield serializers.serialize(
        object.placebo,
        specifiedType: const FullType(EventStudyWindowStatsPlacebo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EventStudyWindowStats object, {
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
    required EventStudyWindowStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.window.replace(valueDes);
          break;
        case r'caar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.caar = valueDes;
          break;
        case r'standardisedZ':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.standardisedZ = valueDes;
          break;
        case r'standardisedP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.standardisedP = valueDes;
          break;
        case r'corradoStat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.corradoStat = valueDes;
          break;
        case r'corradoP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.corradoP = valueDes;
          break;
        case r'placeboP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.placeboP = valueDes;
          break;
        case r'placebo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(EventStudyWindowStatsPlacebo),
          ) as EventStudyWindowStatsPlacebo?;
          if (valueDes == null) continue;
          result.placebo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventStudyWindowStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventStudyWindowStatsBuilder();
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
