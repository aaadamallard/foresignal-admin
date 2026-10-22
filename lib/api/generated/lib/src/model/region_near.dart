//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region_near.g.dart';

/// Nearest gazetteer place (GeoNames, CC BY 4.0) (040)
///
/// Properties:
/// * [geonameid]
/// * [name]
/// * [iso2]
/// * [admin1]
/// * [distanceKm]
/// * [bearingDeg]
/// * [compass16]
/// * [population]
/// * [text]
@BuiltValue()
abstract class RegionNear implements Built<RegionNear, RegionNearBuilder> {
  @BuiltValueField(wireName: r'geonameid')
  int get geonameid;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'iso2')
  String? get iso2;

  @BuiltValueField(wireName: r'admin1')
  String? get admin1;

  @BuiltValueField(wireName: r'distanceKm')
  num get distanceKm;

  @BuiltValueField(wireName: r'bearingDeg')
  num? get bearingDeg;

  @BuiltValueField(wireName: r'compass16')
  RegionNearCompass16Enum get compass16;
  // enum compass16Enum {  N,  NNE,  NE,  ENE,  E,  ESE,  SE,  SSE,  S,  SSW,  SW,  WSW,  W,  WNW,  NW,  NNW,  };

  @BuiltValueField(wireName: r'population')
  int? get population;

  @BuiltValueField(wireName: r'text')
  String? get text;

  RegionNear._();

  factory RegionNear([void updates(RegionNearBuilder b)]) = _$RegionNear;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionNearBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionNear> get serializer => _$RegionNearSerializer();
}

class _$RegionNearSerializer implements PrimitiveSerializer<RegionNear> {
  @override
  final Iterable<Type> types = const [RegionNear, _$RegionNear];

  @override
  final String wireName = r'RegionNear';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionNear object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'geonameid';
    yield serializers.serialize(
      object.geonameid,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.iso2 != null) {
      yield r'iso2';
      yield serializers.serialize(
        object.iso2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.admin1 != null) {
      yield r'admin1';
      yield serializers.serialize(
        object.admin1,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'distanceKm';
    yield serializers.serialize(
      object.distanceKm,
      specifiedType: const FullType(num),
    );
    if (object.bearingDeg != null) {
      yield r'bearingDeg';
      yield serializers.serialize(
        object.bearingDeg,
        specifiedType: const FullType(num),
      );
    }
    yield r'compass16';
    yield serializers.serialize(
      object.compass16,
      specifiedType: const FullType(RegionNearCompass16Enum),
    );
    if (object.population != null) {
      yield r'population';
      yield serializers.serialize(
        object.population,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionNear object, {
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
    required RegionNearBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'geonameid':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.geonameid = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'iso2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.iso2 = valueDes;
          break;
        case r'admin1':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1 = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.distanceKm = valueDes;
          break;
        case r'bearingDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bearingDeg = valueDes;
          break;
        case r'compass16':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RegionNearCompass16Enum),
                  )
                  as RegionNearCompass16Enum;
          result.compass16 = valueDes;
          break;
        case r'population':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.population = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionNear deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionNearBuilder();
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

class RegionNearCompass16Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'N')
  static const RegionNearCompass16Enum N = _$regionNearCompass16Enum_N;
  @BuiltValueEnumConst(wireName: r'NNE')
  static const RegionNearCompass16Enum NNE = _$regionNearCompass16Enum_NNE;
  @BuiltValueEnumConst(wireName: r'NE')
  static const RegionNearCompass16Enum NE = _$regionNearCompass16Enum_NE;
  @BuiltValueEnumConst(wireName: r'ENE')
  static const RegionNearCompass16Enum ENE = _$regionNearCompass16Enum_ENE;
  @BuiltValueEnumConst(wireName: r'E')
  static const RegionNearCompass16Enum E = _$regionNearCompass16Enum_E;
  @BuiltValueEnumConst(wireName: r'ESE')
  static const RegionNearCompass16Enum ESE = _$regionNearCompass16Enum_ESE;
  @BuiltValueEnumConst(wireName: r'SE')
  static const RegionNearCompass16Enum SE = _$regionNearCompass16Enum_SE;
  @BuiltValueEnumConst(wireName: r'SSE')
  static const RegionNearCompass16Enum SSE = _$regionNearCompass16Enum_SSE;
  @BuiltValueEnumConst(wireName: r'S')
  static const RegionNearCompass16Enum S = _$regionNearCompass16Enum_S;
  @BuiltValueEnumConst(wireName: r'SSW')
  static const RegionNearCompass16Enum SSW = _$regionNearCompass16Enum_SSW;
  @BuiltValueEnumConst(wireName: r'SW')
  static const RegionNearCompass16Enum SW = _$regionNearCompass16Enum_SW;
  @BuiltValueEnumConst(wireName: r'WSW')
  static const RegionNearCompass16Enum WSW = _$regionNearCompass16Enum_WSW;
  @BuiltValueEnumConst(wireName: r'W')
  static const RegionNearCompass16Enum W = _$regionNearCompass16Enum_W;
  @BuiltValueEnumConst(wireName: r'WNW')
  static const RegionNearCompass16Enum WNW = _$regionNearCompass16Enum_WNW;
  @BuiltValueEnumConst(wireName: r'NW')
  static const RegionNearCompass16Enum NW = _$regionNearCompass16Enum_NW;
  @BuiltValueEnumConst(wireName: r'NNW')
  static const RegionNearCompass16Enum NNW = _$regionNearCompass16Enum_NNW;

  static Serializer<RegionNearCompass16Enum> get serializer =>
      _$regionNearCompass16EnumSerializer;

  const RegionNearCompass16Enum._(String name) : super(name);

  static BuiltSet<RegionNearCompass16Enum> get values =>
      _$regionNearCompass16EnumValues;
  static RegionNearCompass16Enum valueOf(String name) =>
      _$regionNearCompass16EnumValueOf(name);
}
