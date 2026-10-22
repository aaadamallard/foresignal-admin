//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_settings_stats.g.dart';

/// Retention of 038 activity rollups and 119 region rollups
///
/// Properties:
/// * [hourly] - H3 hourly rollups (038)
/// * [daily] - H3 daily rollups (038)
/// * [regionHourly] - Region-hour rollups (resolution 2)
/// * [regionDaily] - Region-day rollups (resolution 3)
@BuiltValue()
abstract class RetentionSettingsStats
    implements Built<RetentionSettingsStats, RetentionSettingsStatsBuilder> {
  /// H3 hourly rollups (038)
  @BuiltValueField(wireName: r'hourly')
  String? get hourly;

  /// H3 daily rollups (038)
  @BuiltValueField(wireName: r'daily')
  String? get daily;

  /// Region-hour rollups (resolution 2)
  @BuiltValueField(wireName: r'regionHourly')
  String? get regionHourly;

  /// Region-day rollups (resolution 3)
  @BuiltValueField(wireName: r'regionDaily')
  String? get regionDaily;

  RetentionSettingsStats._();

  factory RetentionSettingsStats(
          [void updates(RetentionSettingsStatsBuilder b)]) =
      _$RetentionSettingsStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionSettingsStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionSettingsStats> get serializer =>
      _$RetentionSettingsStatsSerializer();
}

class _$RetentionSettingsStatsSerializer
    implements PrimitiveSerializer<RetentionSettingsStats> {
  @override
  final Iterable<Type> types = const [
    RetentionSettingsStats,
    _$RetentionSettingsStats
  ];

  @override
  final String wireName = r'RetentionSettingsStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionSettingsStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hourly != null) {
      yield r'hourly';
      yield serializers.serialize(
        object.hourly,
        specifiedType: const FullType(String),
      );
    }
    if (object.daily != null) {
      yield r'daily';
      yield serializers.serialize(
        object.daily,
        specifiedType: const FullType(String),
      );
    }
    if (object.regionHourly != null) {
      yield r'regionHourly';
      yield serializers.serialize(
        object.regionHourly,
        specifiedType: const FullType(String),
      );
    }
    if (object.regionDaily != null) {
      yield r'regionDaily';
      yield serializers.serialize(
        object.regionDaily,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionSettingsStats object, {
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
    required RetentionSettingsStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hourly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hourly = valueDes;
          break;
        case r'daily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.daily = valueDes;
          break;
        case r'regionHourly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionHourly = valueDes;
          break;
        case r'regionDaily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionDaily = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionSettingsStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionSettingsStatsBuilder();
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
