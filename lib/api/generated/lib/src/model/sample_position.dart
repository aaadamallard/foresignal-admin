//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_position.g.dart';

/// Live position of the sampled record (head ⋈ live)
///
/// Properties:
/// * [lon]
/// * [lat]
/// * [observedAt]
/// * [ageSeconds]
@BuiltValue()
abstract class SamplePosition
    implements Built<SamplePosition, SamplePositionBuilder> {
  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  @BuiltValueField(wireName: r'observedAt')
  DateTime get observedAt;

  @BuiltValueField(wireName: r'ageSeconds')
  int get ageSeconds;

  SamplePosition._();

  factory SamplePosition([void updates(SamplePositionBuilder b)]) =
      _$SamplePosition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SamplePositionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SamplePosition> get serializer =>
      _$SamplePositionSerializer();
}

class _$SamplePositionSerializer
    implements PrimitiveSerializer<SamplePosition> {
  @override
  final Iterable<Type> types = const [SamplePosition, _$SamplePosition];

  @override
  final String wireName = r'SamplePosition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SamplePosition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lon';
    yield serializers.serialize(
      object.lon,
      specifiedType: const FullType(num),
    );
    yield r'lat';
    yield serializers.serialize(
      object.lat,
      specifiedType: const FullType(num),
    );
    yield r'observedAt';
    yield serializers.serialize(
      object.observedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'ageSeconds';
    yield serializers.serialize(
      object.ageSeconds,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SamplePosition object, {
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
    required SamplePositionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lon = valueDes;
          break;
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.lat = valueDes;
          break;
        case r'observedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.observedAt = valueDes;
          break;
        case r'ageSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ageSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SamplePosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SamplePositionBuilder();
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
