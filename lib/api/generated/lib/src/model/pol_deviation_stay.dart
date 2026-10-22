//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_deviation_stay.g.dart';

/// The stay that triggered the deviation
///
/// Properties:
/// * [arrive]
/// * [depart]
/// * [centroid]
@BuiltValue()
abstract class PolDeviationStay
    implements Built<PolDeviationStay, PolDeviationStayBuilder> {
  @BuiltValueField(wireName: r'arrive')
  DateTime? get arrive;

  @BuiltValueField(wireName: r'depart')
  DateTime? get depart;

  @BuiltValueField(wireName: r'centroid')
  Geometry? get centroid;

  PolDeviationStay._();

  factory PolDeviationStay([void updates(PolDeviationStayBuilder b)]) =
      _$PolDeviationStay;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolDeviationStayBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolDeviationStay> get serializer =>
      _$PolDeviationStaySerializer();
}

class _$PolDeviationStaySerializer
    implements PrimitiveSerializer<PolDeviationStay> {
  @override
  final Iterable<Type> types = const [PolDeviationStay, _$PolDeviationStay];

  @override
  final String wireName = r'PolDeviationStay';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolDeviationStay object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.arrive != null) {
      yield r'arrive';
      yield serializers.serialize(
        object.arrive,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.depart != null) {
      yield r'depart';
      yield serializers.serialize(
        object.depart,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.centroid != null) {
      yield r'centroid';
      yield serializers.serialize(
        object.centroid,
        specifiedType: const FullType(Geometry),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolDeviationStay object, {
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
    required PolDeviationStayBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'arrive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.arrive = valueDes;
          break;
        case r'depart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.depart = valueDes;
          break;
        case r'centroid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.centroid.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolDeviationStay deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolDeviationStayBuilder();
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
