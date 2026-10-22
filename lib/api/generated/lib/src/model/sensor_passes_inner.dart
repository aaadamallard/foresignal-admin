//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sensor_passes_inner.g.dart';

/// Predicted pass (064 Orekit)
///
/// Properties:
/// * [aos]
/// * [tca]
/// * [los]
/// * [maxElevationDeg]
@BuiltValue()
abstract class SensorPassesInner
    implements Built<SensorPassesInner, SensorPassesInnerBuilder> {
  @BuiltValueField(wireName: r'aos')
  DateTime get aos;

  @BuiltValueField(wireName: r'tca')
  DateTime? get tca;

  @BuiltValueField(wireName: r'los')
  DateTime get los;

  @BuiltValueField(wireName: r'maxElevationDeg')
  num get maxElevationDeg;

  SensorPassesInner._();

  factory SensorPassesInner([void updates(SensorPassesInnerBuilder b)]) =
      _$SensorPassesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SensorPassesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SensorPassesInner> get serializer =>
      _$SensorPassesInnerSerializer();
}

class _$SensorPassesInnerSerializer
    implements PrimitiveSerializer<SensorPassesInner> {
  @override
  final Iterable<Type> types = const [SensorPassesInner, _$SensorPassesInner];

  @override
  final String wireName = r'SensorPassesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SensorPassesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'aos';
    yield serializers.serialize(
      object.aos,
      specifiedType: const FullType(DateTime),
    );
    if (object.tca != null) {
      yield r'tca';
      yield serializers.serialize(
        object.tca,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'los';
    yield serializers.serialize(
      object.los,
      specifiedType: const FullType(DateTime),
    );
    yield r'maxElevationDeg';
    yield serializers.serialize(
      object.maxElevationDeg,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SensorPassesInner object, {
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
    required SensorPassesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'aos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.aos = valueDes;
          break;
        case r'tca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.tca = valueDes;
          break;
        case r'los':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.los = valueDes;
          break;
        case r'maxElevationDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxElevationDeg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SensorPassesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SensorPassesInnerBuilder();
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
