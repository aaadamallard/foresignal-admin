//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_track_request_points_inner.g.dart';

/// Track point
///
/// Properties:
/// * [lon]
/// * [lat]
/// * [time]
@BuiltValue()
abstract class SampleTrackRequestPointsInner
    implements
        Built<
          SampleTrackRequestPointsInner,
          SampleTrackRequestPointsInnerBuilder
        > {
  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  SampleTrackRequestPointsInner._();

  factory SampleTrackRequestPointsInner([
    void updates(SampleTrackRequestPointsInnerBuilder b),
  ]) = _$SampleTrackRequestPointsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleTrackRequestPointsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleTrackRequestPointsInner> get serializer =>
      _$SampleTrackRequestPointsInnerSerializer();
}

class _$SampleTrackRequestPointsInnerSerializer
    implements PrimitiveSerializer<SampleTrackRequestPointsInner> {
  @override
  final Iterable<Type> types = const [
    SampleTrackRequestPointsInner,
    _$SampleTrackRequestPointsInner,
  ];

  @override
  final String wireName = r'SampleTrackRequestPointsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleTrackRequestPointsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lon';
    yield serializers.serialize(object.lon, specifiedType: const FullType(num));
    yield r'lat';
    yield serializers.serialize(object.lat, specifiedType: const FullType(num));
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleTrackRequestPointsInner object, {
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
    required SampleTrackRequestPointsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lon':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lon = valueDes;
          break;
        case r'lat':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lat = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.time = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleTrackRequestPointsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleTrackRequestPointsInnerBuilder();
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
