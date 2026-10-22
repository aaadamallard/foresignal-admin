//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/stats_series_series_inner_points_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_series_series_inner.g.dart';

/// One series
///
/// Properties:
/// * [key] - Group key; null when groupBy=none
/// * [points]
@BuiltValue()
abstract class StatsSeriesSeriesInner
    implements Built<StatsSeriesSeriesInner, StatsSeriesSeriesInnerBuilder> {
  /// Group key; null when groupBy=none
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'points')
  BuiltList<StatsSeriesSeriesInnerPointsInner> get points;

  StatsSeriesSeriesInner._();

  factory StatsSeriesSeriesInner([
    void updates(StatsSeriesSeriesInnerBuilder b),
  ]) = _$StatsSeriesSeriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsSeriesSeriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsSeriesSeriesInner> get serializer =>
      _$StatsSeriesSeriesInnerSerializer();
}

class _$StatsSeriesSeriesInnerSerializer
    implements PrimitiveSerializer<StatsSeriesSeriesInner> {
  @override
  final Iterable<Type> types = const [
    StatsSeriesSeriesInner,
    _$StatsSeriesSeriesInner,
  ];

  @override
  final String wireName = r'StatsSeriesSeriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsSeriesSeriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'points';
    yield serializers.serialize(
      object.points,
      specifiedType: const FullType(BuiltList, [
        FullType(StatsSeriesSeriesInnerPointsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsSeriesSeriesInner object, {
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
    required StatsSeriesSeriesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'points':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(StatsSeriesSeriesInnerPointsInner),
                    ]),
                  )
                  as BuiltList<StatsSeriesSeriesInnerPointsInner>;
          result.points.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsSeriesSeriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsSeriesSeriesInnerBuilder();
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
