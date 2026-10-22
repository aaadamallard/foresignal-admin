//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/lead_time_stats_filters.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/lead_time_stats_groups_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lead_time_stats.g.dart';

/// Lead of social first observation over physical, news and official first observation, aggregated over corroborated comparisons; only out-of-sample comparisons support 'leads by' statements (137)
///
/// Properties:
/// * [generatedAt]
/// * [trainingCutoff] - Comparisons evaluated after this are out of sample
/// * [filters]
/// * [groups]
/// * [caveats]
@BuiltValue()
abstract class LeadTimeStats
    implements Built<LeadTimeStats, LeadTimeStatsBuilder> {
  @BuiltValueField(wireName: r'generatedAt')
  DateTime get generatedAt;

  /// Comparisons evaluated after this are out of sample
  @BuiltValueField(wireName: r'trainingCutoff')
  DateTime get trainingCutoff;

  @BuiltValueField(wireName: r'filters')
  LeadTimeStatsFilters? get filters;

  @BuiltValueField(wireName: r'groups')
  BuiltList<LeadTimeStatsGroupsInner> get groups;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  LeadTimeStats._();

  factory LeadTimeStats([void updates(LeadTimeStatsBuilder b)]) =
      _$LeadTimeStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeadTimeStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeadTimeStats> get serializer =>
      _$LeadTimeStatsSerializer();
}

class _$LeadTimeStatsSerializer implements PrimitiveSerializer<LeadTimeStats> {
  @override
  final Iterable<Type> types = const [LeadTimeStats, _$LeadTimeStats];

  @override
  final String wireName = r'LeadTimeStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeadTimeStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'generatedAt';
    yield serializers.serialize(
      object.generatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'trainingCutoff';
    yield serializers.serialize(
      object.trainingCutoff,
      specifiedType: const FullType(DateTime),
    );
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(LeadTimeStatsFilters),
      );
    }
    yield r'groups';
    yield serializers.serialize(
      object.groups,
      specifiedType:
          const FullType(BuiltList, [FullType(LeadTimeStatsGroupsInner)]),
    );
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeadTimeStats object, {
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
    required LeadTimeStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.generatedAt = valueDes;
          break;
        case r'trainingCutoff':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.trainingCutoff = valueDes;
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LeadTimeStatsFilters),
          ) as LeadTimeStatsFilters?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LeadTimeStatsGroupsInner)]),
          ) as BuiltList<LeadTimeStatsGroupsInner>;
          result.groups.replace(valueDes);
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeadTimeStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeadTimeStatsBuilder();
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
