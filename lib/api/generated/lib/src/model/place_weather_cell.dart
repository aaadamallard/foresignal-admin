//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_cell.g.dart';

/// Radar-cell ETA section
///
/// Properties:
/// * [status]
/// * [asOf] - Time of the last good data; present only while status is not ok, fixed while not ok
/// * [statusText] - Explanation for non-ok statuses
/// * [eta50Min] - Minutes until a ≥ 50 dBZ core enters the radius, 5-min steps (999 = none approaching)
/// * [etaCellId]
/// * [etaSpeedKmh]
/// * [etaBearingDeg]
@BuiltValue()
abstract class PlaceWeatherCell
    implements Built<PlaceWeatherCell, PlaceWeatherCellBuilder> {
  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  /// Time of the last good data; present only while status is not ok, fixed while not ok
  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  /// Explanation for non-ok statuses
  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  /// Minutes until a ≥ 50 dBZ core enters the radius, 5-min steps (999 = none approaching)
  @BuiltValueField(wireName: r'eta50Min')
  int? get eta50Min;

  @BuiltValueField(wireName: r'etaCellId')
  String? get etaCellId;

  @BuiltValueField(wireName: r'etaSpeedKmh')
  num? get etaSpeedKmh;

  @BuiltValueField(wireName: r'etaBearingDeg')
  int? get etaBearingDeg;

  PlaceWeatherCell._();

  factory PlaceWeatherCell([void updates(PlaceWeatherCellBuilder b)]) =
      _$PlaceWeatherCell;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherCellBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherCell> get serializer =>
      _$PlaceWeatherCellSerializer();
}

class _$PlaceWeatherCellSerializer
    implements PrimitiveSerializer<PlaceWeatherCell> {
  @override
  final Iterable<Type> types = const [PlaceWeatherCell, _$PlaceWeatherCell];

  @override
  final String wireName = r'PlaceWeatherCell';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherCell object, {
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
    if (object.eta50Min != null) {
      yield r'eta50Min';
      yield serializers.serialize(
        object.eta50Min,
        specifiedType: const FullType(int),
      );
    }
    if (object.etaCellId != null) {
      yield r'etaCellId';
      yield serializers.serialize(
        object.etaCellId,
        specifiedType: const FullType(String),
      );
    }
    if (object.etaSpeedKmh != null) {
      yield r'etaSpeedKmh';
      yield serializers.serialize(
        object.etaSpeedKmh,
        specifiedType: const FullType(num),
      );
    }
    if (object.etaBearingDeg != null) {
      yield r'etaBearingDeg';
      yield serializers.serialize(
        object.etaBearingDeg,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherCell object, {
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
    required PlaceWeatherCellBuilder result,
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
        case r'eta50Min':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.eta50Min = valueDes;
          break;
        case r'etaCellId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.etaCellId = valueDes;
          break;
        case r'etaSpeedKmh':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.etaSpeedKmh = valueDes;
          break;
        case r'etaBearingDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.etaBearingDeg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherCell deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherCellBuilder();
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
