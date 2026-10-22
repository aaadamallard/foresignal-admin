//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chronicle_layer_stats.g.dart';

/// Captured volume
///
/// Properties:
/// * [rows]
/// * [bytes]
@BuiltValue()
abstract class ChronicleLayerStats
    implements Built<ChronicleLayerStats, ChronicleLayerStatsBuilder> {
  @BuiltValueField(wireName: r'rows')
  int? get rows;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  ChronicleLayerStats._();

  factory ChronicleLayerStats([void updates(ChronicleLayerStatsBuilder b)]) =
      _$ChronicleLayerStats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleLayerStatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleLayerStats> get serializer =>
      _$ChronicleLayerStatsSerializer();
}

class _$ChronicleLayerStatsSerializer
    implements PrimitiveSerializer<ChronicleLayerStats> {
  @override
  final Iterable<Type> types = const [
    ChronicleLayerStats,
    _$ChronicleLayerStats,
  ];

  @override
  final String wireName = r'ChronicleLayerStats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleLayerStats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChronicleLayerStats object, {
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
    required ChronicleLayerStatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.rows = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChronicleLayerStats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleLayerStatsBuilder();
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
