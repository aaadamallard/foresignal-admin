//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/geometry.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_request.g.dart';

/// Area statistics request: exactly one of geometry, place or bbox
///
/// Properties:
/// * [geometry]
/// * [place] - Place id (requires a token)
/// * [bbox] - minLon,minLat,maxLon,maxLat
/// * [time] - `latest`, `now`, ISO-8601 or relative offset
/// * [run] - Forecast run (`latest`, `previous`, runIso); required with a concrete forecast time
/// * [thresholds] - Thresholds (physical units) for areaKm2 above each
/// * [units]
@BuiltValue()
abstract class StatsRequest
    implements Built<StatsRequest, StatsRequestBuilder> {
  @BuiltValueField(wireName: r'geometry')
  Geometry? get geometry;

  /// Place id (requires a token)
  @BuiltValueField(wireName: r'place')
  String? get place;

  /// minLon,minLat,maxLon,maxLat
  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  /// `latest`, `now`, ISO-8601 or relative offset
  @BuiltValueField(wireName: r'time')
  String? get time;

  /// Forecast run (`latest`, `previous`, runIso); required with a concrete forecast time
  @BuiltValueField(wireName: r'run')
  String? get run;

  /// Thresholds (physical units) for areaKm2 above each
  @BuiltValueField(wireName: r'thresholds')
  BuiltList<num>? get thresholds;

  @BuiltValueField(wireName: r'units')
  StatsRequestUnitsEnum? get units;
  // enum unitsEnum {  metric,  imperial,  };

  StatsRequest._();

  factory StatsRequest([void updates(StatsRequestBuilder b)]) = _$StatsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatsRequest> get serializer => _$StatsRequestSerializer();
}

class _$StatsRequestSerializer implements PrimitiveSerializer<StatsRequest> {
  @override
  final Iterable<Type> types = const [StatsRequest, _$StatsRequest];

  @override
  final String wireName = r'StatsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.geometry != null) {
      yield r'geometry';
      yield serializers.serialize(
        object.geometry,
        specifiedType: const FullType(Geometry),
      );
    }
    if (object.place != null) {
      yield r'place';
      yield serializers.serialize(
        object.place,
        specifiedType: const FullType(String),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType(String),
      );
    }
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
    if (object.units != null) {
      yield r'units';
      yield serializers.serialize(
        object.units,
        specifiedType: const FullType(StatsRequestUnitsEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StatsRequest object, {
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
    required StatsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'geometry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Geometry),
          ) as Geometry?;
          if (valueDes == null) continue;
          result.geometry.replace(valueDes);
          break;
        case r'place':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.place = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'units':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StatsRequestUnitsEnum),
          ) as StatsRequestUnitsEnum?;
          if (valueDes == null) continue;
          result.units = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatsRequestBuilder();
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

class StatsRequestUnitsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'metric')
  static const StatsRequestUnitsEnum metric = _$statsRequestUnitsEnum_metric;
  @BuiltValueEnumConst(wireName: r'imperial')
  static const StatsRequestUnitsEnum imperial =
      _$statsRequestUnitsEnum_imperial;

  static Serializer<StatsRequestUnitsEnum> get serializer =>
      _$statsRequestUnitsEnumSerializer;

  const StatsRequestUnitsEnum._(String name) : super(name);

  static BuiltSet<StatsRequestUnitsEnum> get values =>
      _$statsRequestUnitsEnumValues;
  static StatsRequestUnitsEnum valueOf(String name) =>
      _$statsRequestUnitsEnumValueOf(name);
}
