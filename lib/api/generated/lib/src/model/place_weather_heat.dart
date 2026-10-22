//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_weather_heat.g.dart';

/// 106: WPC HeatRisk (experimental NWS product)
///
/// Properties:
/// * [status]
/// * [riskMaxDay1]
/// * [riskMax7d]
/// * [peakDay]
@BuiltValue()
abstract class PlaceWeatherHeat
    implements Built<PlaceWeatherHeat, PlaceWeatherHeatBuilder> {
  @BuiltValueField(wireName: r'status')
  SampleStatus? get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'riskMaxDay1')
  int? get riskMaxDay1;

  @BuiltValueField(wireName: r'riskMax7d')
  int? get riskMax7d;

  @BuiltValueField(wireName: r'peakDay')
  Date? get peakDay;

  PlaceWeatherHeat._();

  factory PlaceWeatherHeat([void updates(PlaceWeatherHeatBuilder b)]) =
      _$PlaceWeatherHeat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlaceWeatherHeatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlaceWeatherHeat> get serializer =>
      _$PlaceWeatherHeatSerializer();
}

class _$PlaceWeatherHeatSerializer
    implements PrimitiveSerializer<PlaceWeatherHeat> {
  @override
  final Iterable<Type> types = const [PlaceWeatherHeat, _$PlaceWeatherHeat];

  @override
  final String wireName = r'PlaceWeatherHeat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlaceWeatherHeat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SampleStatus),
      );
    }
    if (object.riskMaxDay1 != null) {
      yield r'riskMaxDay1';
      yield serializers.serialize(
        object.riskMaxDay1,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.riskMax7d != null) {
      yield r'riskMax7d';
      yield serializers.serialize(
        object.riskMax7d,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.peakDay != null) {
      yield r'peakDay';
      yield serializers.serialize(
        object.peakDay,
        specifiedType: const FullType.nullable(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlaceWeatherHeat object, {
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
    required PlaceWeatherHeatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleStatus),
          ) as SampleStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'riskMaxDay1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.riskMaxDay1 = valueDes;
          break;
        case r'riskMax7d':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.riskMax7d = valueDes;
          break;
        case r'peakDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.peakDay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlaceWeatherHeat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlaceWeatherHeatBuilder();
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
