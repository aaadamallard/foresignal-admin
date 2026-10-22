//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gps_logger_fix.g.dart';

/// GPSLogger custom-URL fields accepted by the `gpslogger` format (039); names are case-insensitive. Template: `lat=%LAT&lon=%LON&time=%TIME&acc=%ACC&alt=%ALT&spd=%SPD&dir=%DIR&batt=%BATT&dev=%SER`
///
/// Properties:
/// * [lat]
/// * [lon]
/// * [time]
/// * [acc]
/// * [alt]
/// * [spd] - m/s
/// * [dir]
/// * [batt]
/// * [dev] - → externalId
@BuiltValue()
abstract class GpsLoggerFix
    implements Built<GpsLoggerFix, GpsLoggerFixBuilder> {
  @BuiltValueField(wireName: r'lat')
  num get lat;

  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'acc')
  num? get acc;

  @BuiltValueField(wireName: r'alt')
  num? get alt;

  /// m/s
  @BuiltValueField(wireName: r'spd')
  num? get spd;

  @BuiltValueField(wireName: r'dir')
  num? get dir;

  @BuiltValueField(wireName: r'batt')
  num? get batt;

  /// → externalId
  @BuiltValueField(wireName: r'dev')
  String? get dev;

  GpsLoggerFix._();

  factory GpsLoggerFix([void updates(GpsLoggerFixBuilder b)]) = _$GpsLoggerFix;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GpsLoggerFixBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GpsLoggerFix> get serializer => _$GpsLoggerFixSerializer();
}

class _$GpsLoggerFixSerializer implements PrimitiveSerializer<GpsLoggerFix> {
  @override
  final Iterable<Type> types = const [GpsLoggerFix, _$GpsLoggerFix];

  @override
  final String wireName = r'GpsLoggerFix';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GpsLoggerFix object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lat';
    yield serializers.serialize(object.lat, specifiedType: const FullType(num));
    yield r'lon';
    yield serializers.serialize(object.lon, specifiedType: const FullType(num));
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.acc != null) {
      yield r'acc';
      yield serializers.serialize(
        object.acc,
        specifiedType: const FullType(num),
      );
    }
    if (object.alt != null) {
      yield r'alt';
      yield serializers.serialize(
        object.alt,
        specifiedType: const FullType(num),
      );
    }
    if (object.spd != null) {
      yield r'spd';
      yield serializers.serialize(
        object.spd,
        specifiedType: const FullType(num),
      );
    }
    if (object.dir != null) {
      yield r'dir';
      yield serializers.serialize(
        object.dir,
        specifiedType: const FullType(num),
      );
    }
    if (object.batt != null) {
      yield r'batt';
      yield serializers.serialize(
        object.batt,
        specifiedType: const FullType(num),
      );
    }
    if (object.dev != null) {
      yield r'dev';
      yield serializers.serialize(
        object.dev,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GpsLoggerFix object, {
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
    required GpsLoggerFixBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lat':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lat = valueDes;
          break;
        case r'lon':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lon = valueDes;
          break;
        case r'time':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'acc':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.acc = valueDes;
          break;
        case r'alt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.alt = valueDes;
          break;
        case r'spd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.spd = valueDes;
          break;
        case r'dir':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.dir = valueDes;
          break;
        case r'batt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.batt = valueDes;
          break;
        case r'dev':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dev = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GpsLoggerFix deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpsLoggerFixBuilder();
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
