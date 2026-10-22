//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osm_and_query.g.dart';

/// OsmAnd/Traccar query or form fields accepted by the `osmand` format (039)
///
/// Properties:
/// * [id]
/// * [deviceid]
/// * [lat]
/// * [lon]
/// * [location] - lat,lon
/// * [timestamp] - epoch s, epoch ms, ISO, or `yyyy-MM-dd HH:mm:ss` UTC
/// * [speed] - knots
/// * [bearing]
/// * [heading]
/// * [altitude]
/// * [accuracy]
/// * [batt]
/// * [charge]
/// * [valid] - false → rejected
@BuiltValue()
abstract class OsmAndQuery implements Built<OsmAndQuery, OsmAndQueryBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'deviceid')
  String? get deviceid;

  @BuiltValueField(wireName: r'lat')
  num? get lat;

  @BuiltValueField(wireName: r'lon')
  num? get lon;

  /// lat,lon
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// epoch s, epoch ms, ISO, or `yyyy-MM-dd HH:mm:ss` UTC
  @BuiltValueField(wireName: r'timestamp')
  String? get timestamp;

  /// knots
  @BuiltValueField(wireName: r'speed')
  num? get speed;

  @BuiltValueField(wireName: r'bearing')
  num? get bearing;

  @BuiltValueField(wireName: r'heading')
  num? get heading;

  @BuiltValueField(wireName: r'altitude')
  num? get altitude;

  @BuiltValueField(wireName: r'accuracy')
  num? get accuracy;

  @BuiltValueField(wireName: r'batt')
  num? get batt;

  @BuiltValueField(wireName: r'charge')
  bool? get charge;

  /// false → rejected
  @BuiltValueField(wireName: r'valid')
  bool? get valid;

  OsmAndQuery._();

  factory OsmAndQuery([void updates(OsmAndQueryBuilder b)]) = _$OsmAndQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsmAndQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsmAndQuery> get serializer => _$OsmAndQuerySerializer();
}

class _$OsmAndQuerySerializer implements PrimitiveSerializer<OsmAndQuery> {
  @override
  final Iterable<Type> types = const [OsmAndQuery, _$OsmAndQuery];

  @override
  final String wireName = r'OsmAndQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsmAndQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceid != null) {
      yield r'deviceid';
      yield serializers.serialize(
        object.deviceid,
        specifiedType: const FullType(String),
      );
    }
    if (object.lat != null) {
      yield r'lat';
      yield serializers.serialize(
        object.lat,
        specifiedType: const FullType(num),
      );
    }
    if (object.lon != null) {
      yield r'lon';
      yield serializers.serialize(
        object.lon,
        specifiedType: const FullType(num),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(String),
      );
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(num),
      );
    }
    if (object.bearing != null) {
      yield r'bearing';
      yield serializers.serialize(
        object.bearing,
        specifiedType: const FullType(num),
      );
    }
    if (object.heading != null) {
      yield r'heading';
      yield serializers.serialize(
        object.heading,
        specifiedType: const FullType(num),
      );
    }
    if (object.altitude != null) {
      yield r'altitude';
      yield serializers.serialize(
        object.altitude,
        specifiedType: const FullType(num),
      );
    }
    if (object.accuracy != null) {
      yield r'accuracy';
      yield serializers.serialize(
        object.accuracy,
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
    if (object.charge != null) {
      yield r'charge';
      yield serializers.serialize(
        object.charge,
        specifiedType: const FullType(bool),
      );
    }
    if (object.valid != null) {
      yield r'valid';
      yield serializers.serialize(
        object.valid,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OsmAndQuery object, {
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
    required OsmAndQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'deviceid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceid = valueDes;
          break;
        case r'lat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lat = valueDes;
          break;
        case r'lon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lon = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.speed = valueDes;
          break;
        case r'bearing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.bearing = valueDes;
          break;
        case r'heading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.heading = valueDes;
          break;
        case r'altitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.altitude = valueDes;
          break;
        case r'accuracy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.accuracy = valueDes;
          break;
        case r'batt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.batt = valueDes;
          break;
        case r'charge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.charge = valueDes;
          break;
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.valid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsmAndQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsmAndQueryBuilder();
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
