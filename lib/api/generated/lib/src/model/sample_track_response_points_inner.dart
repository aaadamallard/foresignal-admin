//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_track_response_points_inner.g.dart';

/// Samples at one point
///
/// Properties:
/// * [lon]
/// * [lat]
/// * [time]
/// * [status]
/// * [values]
@BuiltValue()
abstract class SampleTrackResponsePointsInner
    implements
        Built<
          SampleTrackResponsePointsInner,
          SampleTrackResponsePointsInnerBuilder
        > {
  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'status')
  SampleStatus get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'values')
  BuiltList<SampleValue> get values;

  SampleTrackResponsePointsInner._();

  factory SampleTrackResponsePointsInner([
    void updates(SampleTrackResponsePointsInnerBuilder b),
  ]) = _$SampleTrackResponsePointsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SampleTrackResponsePointsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SampleTrackResponsePointsInner> get serializer =>
      _$SampleTrackResponsePointsInnerSerializer();
}

class _$SampleTrackResponsePointsInnerSerializer
    implements PrimitiveSerializer<SampleTrackResponsePointsInner> {
  @override
  final Iterable<Type> types = const [
    SampleTrackResponsePointsInner,
    _$SampleTrackResponsePointsInner,
  ];

  @override
  final String wireName = r'SampleTrackResponsePointsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SampleTrackResponsePointsInner object, {
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SampleStatus),
    );
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(SampleValue)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SampleTrackResponsePointsInner object, {
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
    required SampleTrackResponsePointsInnerBuilder result,
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SampleStatus),
                  )
                  as SampleStatus;
          result.status = valueDes;
          break;
        case r'values':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(SampleValue),
                    ]),
                  )
                  as BuiltList<SampleValue>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SampleTrackResponsePointsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SampleTrackResponsePointsInnerBuilder();
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
