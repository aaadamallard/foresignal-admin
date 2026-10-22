//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_series_series_inner_points_inner.g.dart';

/// Point
///
/// Properties:
/// * [t]
/// * [value]
@BuiltValue()
abstract class StatsSeriesSeriesInnerPointsInner
    implements
        Built<StatsSeriesSeriesInnerPointsInner,
            StatsSeriesSeriesInnerPointsInnerBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'value')
  int get value;

  StatsSeriesSeriesInnerPointsInner._();

  factory StatsSeriesSeriesInnerPointsInner(
          [void updates(StatsSeriesSeriesInnerPointsInnerBuilder b)]) =
      _$StatsSeriesSeriesInnerPointsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsSeriesSeriesInnerPointsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsSeriesSeriesInnerPointsInner> get serializer =>
      _$StatsSeriesSeriesInnerPointsInnerSerializer();
}

class _$StatsSeriesSeriesInnerPointsInnerSerializer
    implements PrimitiveSerializer<StatsSeriesSeriesInnerPointsInner> {
  @override
  final Iterable<Type> types = const [
    StatsSeriesSeriesInnerPointsInner,
    _$StatsSeriesSeriesInnerPointsInner
  ];

  @override
  final String wireName = r'StatsSeriesSeriesInnerPointsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsSeriesSeriesInnerPointsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsSeriesSeriesInnerPointsInner object, {
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
    required StatsSeriesSeriesInnerPointsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.t = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsSeriesSeriesInnerPointsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsSeriesSeriesInnerPointsInnerBuilder();
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
