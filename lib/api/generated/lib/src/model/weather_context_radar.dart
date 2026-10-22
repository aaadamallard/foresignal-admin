//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:foresignal_api/src/model/weather_context_radar_nearest_cell.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_context_radar.g.dart';

/// Radar section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [maxDbz] - Max within 10 km of the geometry
/// * [nearestCell]
@BuiltValue()
abstract class WeatherContextRadar
    implements Built<WeatherContextRadar, WeatherContextRadarBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// Max within 10 km of the geometry
  @BuiltValueField(wireName: r'maxDbz')
  num? get maxDbz;

  @BuiltValueField(wireName: r'nearestCell')
  WeatherContextRadarNearestCell? get nearestCell;

  WeatherContextRadar._();

  factory WeatherContextRadar([void updates(WeatherContextRadarBuilder b)]) =
      _$WeatherContextRadar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherContextRadarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherContextRadar> get serializer =>
      _$WeatherContextRadarSerializer();
}

class _$WeatherContextRadarSerializer
    implements PrimitiveSerializer<WeatherContextRadar> {
  @override
  final Iterable<Type> types = const [
    WeatherContextRadar,
    _$WeatherContextRadar,
  ];

  @override
  final String wireName = r'WeatherContextRadar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherContextRadar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(WeatherSectionStatus),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.statusText != null) {
      yield r'statusText';
      yield serializers.serialize(
        object.statusText,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxDbz != null) {
      yield r'maxDbz';
      yield serializers.serialize(
        object.maxDbz,
        specifiedType: const FullType(num),
      );
    }
    if (object.nearestCell != null) {
      yield r'nearestCell';
      yield serializers.serialize(
        object.nearestCell,
        specifiedType: const FullType.nullable(WeatherContextRadarNearestCell),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherContextRadar object, {
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
    required WeatherContextRadarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(WeatherSectionStatus),
                  )
                  as WeatherSectionStatus;
          result.status = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'statusText':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        case r'maxDbz':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.maxDbz = valueDes;
          break;
        case r'nearestCell':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherContextRadarNearestCell,
                    ),
                  )
                  as WeatherContextRadarNearestCell?;
          if (valueDes == null) continue;
          result.nearestCell.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherContextRadar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherContextRadarBuilder();
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
