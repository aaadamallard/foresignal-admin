//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'frame_stats.g.dart';

/// Frame statistics in physical units
///
/// Properties:
/// * [min]
/// * [max]
/// * [mean]
/// * [coveragePct] - Share of grid cells with coverage
/// * [codeCounts] - Per-code counts for categorical products (raw code → cells)
/// * [flagMissing] - mrms-precip-rate: the PrecipFlag band was missing (committed after 4 min)
@BuiltValue()
abstract class FrameStats implements Built<FrameStats, FrameStatsBuilder> {
  @BuiltValueField(wireName: r'min')
  num? get min;

  @BuiltValueField(wireName: r'max')
  num? get max;

  @BuiltValueField(wireName: r'mean')
  num? get mean;

  /// Share of grid cells with coverage
  @BuiltValueField(wireName: r'coveragePct')
  num? get coveragePct;

  /// Per-code counts for categorical products (raw code → cells)
  @BuiltValueField(wireName: r'codeCounts')
  BuiltMap<String, int>? get codeCounts;

  /// mrms-precip-rate: the PrecipFlag band was missing (committed after 4 min)
  @BuiltValueField(wireName: r'flagMissing')
  bool? get flagMissing;

  FrameStats._();

  factory FrameStats([void updates(FrameStatsBuilder b)]) = _$FrameStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FrameStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FrameStats> get serializer => _$FrameStatsSerializer();
}

class _$FrameStatsSerializer implements PrimitiveSerializer<FrameStats> {
  @override
  final Iterable<Type> types = const [FrameStats, _$FrameStats];

  @override
  final String wireName = r'FrameStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FrameStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.mean != null) {
      yield r'mean';
      yield serializers.serialize(
        object.mean,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.coveragePct != null) {
      yield r'coveragePct';
      yield serializers.serialize(
        object.coveragePct,
        specifiedType: const FullType(num),
      );
    }
    if (object.codeCounts != null) {
      yield r'codeCounts';
      yield serializers.serialize(
        object.codeCounts,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.flagMissing != null) {
      yield r'flagMissing';
      yield serializers.serialize(
        object.flagMissing,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FrameStats object, {
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
    required FrameStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'min':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.max = valueDes;
          break;
        case r'mean':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.mean = valueDes;
          break;
        case r'coveragePct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.coveragePct = valueDes;
          break;
        case r'codeCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.codeCounts.replace(valueDes);
          break;
        case r'flagMissing':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.flagMissing = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FrameStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FrameStatsBuilder();
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
