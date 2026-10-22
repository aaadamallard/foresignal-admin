//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_settings.g.dart';

/// Instance weather settings (`weather.*` in app settings)
///
/// Properties:
/// * [alertContext] - Compute `context.weather` for geolocated alerts (056)
/// * [defaultAoi] - minLon,minLat,maxLon,maxLat used for weather ingestion when no places exist (047); a health warning is raised while it applies
/// * [aoiBufferKm] - Minimum buffer around each place in the places AOI (036)
@BuiltValue()
abstract class WeatherSettings
    implements Built<WeatherSettings, WeatherSettingsBuilder> {
  /// Compute `context.weather` for geolocated alerts (056)
  @BuiltValueField(wireName: r'alertContext')
  WeatherSettingsAlertContextEnum? get alertContext;
  // enum alertContextEnum {  auto,  off,  };

  /// minLon,minLat,maxLon,maxLat used for weather ingestion when no places exist (047); a health warning is raised while it applies
  @BuiltValueField(wireName: r'defaultAoi')
  String? get defaultAoi;

  /// Minimum buffer around each place in the places AOI (036)
  @BuiltValueField(wireName: r'aoiBufferKm')
  num? get aoiBufferKm;

  WeatherSettings._();

  factory WeatherSettings([void updates(WeatherSettingsBuilder b)]) =
      _$WeatherSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherSettings> get serializer =>
      _$WeatherSettingsSerializer();
}

class _$WeatherSettingsSerializer
    implements PrimitiveSerializer<WeatherSettings> {
  @override
  final Iterable<Type> types = const [WeatherSettings, _$WeatherSettings];

  @override
  final String wireName = r'WeatherSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alertContext != null) {
      yield r'alertContext';
      yield serializers.serialize(
        object.alertContext,
        specifiedType: const FullType(WeatherSettingsAlertContextEnum),
      );
    }
    if (object.defaultAoi != null) {
      yield r'defaultAoi';
      yield serializers.serialize(
        object.defaultAoi,
        specifiedType: const FullType(String),
      );
    }
    if (object.aoiBufferKm != null) {
      yield r'aoiBufferKm';
      yield serializers.serialize(
        object.aoiBufferKm,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherSettings object, {
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
    required WeatherSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alertContext':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherSettingsAlertContextEnum,
                    ),
                  )
                  as WeatherSettingsAlertContextEnum?;
          if (valueDes == null) continue;
          result.alertContext = valueDes;
          break;
        case r'defaultAoi':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultAoi = valueDes;
          break;
        case r'aoiBufferKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.aoiBufferKm = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherSettingsBuilder();
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

/// Compute `context.weather` for geolocated alerts (056)
class WeatherSettingsAlertContextEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'auto')
  static const WeatherSettingsAlertContextEnum auto =
      _$weatherSettingsAlertContextEnum_auto;
  @BuiltValueEnumConst(wireName: r'off')
  static const WeatherSettingsAlertContextEnum off =
      _$weatherSettingsAlertContextEnum_off;

  static Serializer<WeatherSettingsAlertContextEnum> get serializer =>
      _$weatherSettingsAlertContextEnumSerializer;

  const WeatherSettingsAlertContextEnum._(String name) : super(name);

  static BuiltSet<WeatherSettingsAlertContextEnum> get values =>
      _$weatherSettingsAlertContextEnumValues;
  static WeatherSettingsAlertContextEnum valueOf(String name) =>
      _$weatherSettingsAlertContextEnumValueOf(name);
}
