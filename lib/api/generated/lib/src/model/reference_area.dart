//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reference_area.g.dart';

/// A named area found by searchReferenceAreas (161): a country, an admin-1 region or a populated place
///
/// Properties:
/// * [kind] - country and admin1 are geofenceRef codes; a place is a point
/// * [code] - The geofenceRef code: a country's ISO2 code or an admin-1 code; null for a place
/// * [name]
/// * [label] - The name with its admin-1 region and country, for display
/// * [countryIso2]
/// * [countryName]
/// * [admin1] - The admin-1 code of an admin-1 region, or of the region a place lies in
/// * [admin1Name]
/// * [lon] - A point inside the area (a country's label point, an admin-1 region's point on surface, a place's location)
/// * [lat]
/// * [placeId] - A place's GeoNames id
/// * [population] - A place's population, when known
@BuiltValue()
abstract class ReferenceArea
    implements Built<ReferenceArea, ReferenceAreaBuilder> {
  /// country and admin1 are geofenceRef codes; a place is a point
  @BuiltValueField(wireName: r'kind')
  ReferenceAreaKindEnum get kind;
  // enum kindEnum {  country,  admin1,  place,  };

  /// The geofenceRef code: a country's ISO2 code or an admin-1 code; null for a place
  @BuiltValueField(wireName: r'code')
  String? get code;

  @BuiltValueField(wireName: r'name')
  String get name;

  /// The name with its admin-1 region and country, for display
  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'countryIso2')
  String? get countryIso2;

  @BuiltValueField(wireName: r'countryName')
  String? get countryName;

  /// The admin-1 code of an admin-1 region, or of the region a place lies in
  @BuiltValueField(wireName: r'admin1')
  String? get admin1;

  @BuiltValueField(wireName: r'admin1Name')
  String? get admin1Name;

  /// A point inside the area (a country's label point, an admin-1 region's point on surface, a place's location)
  @BuiltValueField(wireName: r'lon')
  num get lon;

  @BuiltValueField(wireName: r'lat')
  num get lat;

  /// A place's GeoNames id
  @BuiltValueField(wireName: r'placeId')
  int? get placeId;

  /// A place's population, when known
  @BuiltValueField(wireName: r'population')
  int? get population;

  ReferenceArea._();

  factory ReferenceArea([void updates(ReferenceAreaBuilder b)]) =
      _$ReferenceArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReferenceAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReferenceArea> get serializer =>
      _$ReferenceAreaSerializer();
}

class _$ReferenceAreaSerializer implements PrimitiveSerializer<ReferenceArea> {
  @override
  final Iterable<Type> types = const [ReferenceArea, _$ReferenceArea];

  @override
  final String wireName = r'ReferenceArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReferenceArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(ReferenceAreaKindEnum),
    );
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    if (object.countryIso2 != null) {
      yield r'countryIso2';
      yield serializers.serialize(
        object.countryIso2,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.countryName != null) {
      yield r'countryName';
      yield serializers.serialize(
        object.countryName,
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
    if (object.admin1Name != null) {
      yield r'admin1Name';
      yield serializers.serialize(
        object.admin1Name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'lon';
    yield serializers.serialize(object.lon, specifiedType: const FullType(num));
    yield r'lat';
    yield serializers.serialize(object.lat, specifiedType: const FullType(num));
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.population != null) {
      yield r'population';
      yield serializers.serialize(
        object.population,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReferenceArea object, {
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
    required ReferenceAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ReferenceAreaKindEnum),
                  )
                  as ReferenceAreaKindEnum;
          result.kind = valueDes;
          break;
        case r'code':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
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
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        case r'countryIso2':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countryIso2 = valueDes;
          break;
        case r'countryName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.countryName = valueDes;
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
        case r'admin1Name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.admin1Name = valueDes;
          break;
        case r'lon':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lon = valueDes;
          break;
        case r'lat':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lat = valueDes;
          break;
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReferenceArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReferenceAreaBuilder();
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

/// country and admin1 are geofenceRef codes; a place is a point
class ReferenceAreaKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'country')
  static const ReferenceAreaKindEnum country = _$referenceAreaKindEnum_country;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const ReferenceAreaKindEnum admin1 = _$referenceAreaKindEnum_admin1;
  @BuiltValueEnumConst(wireName: r'place')
  static const ReferenceAreaKindEnum place = _$referenceAreaKindEnum_place;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReferenceAreaKindEnum unknownDefaultOpenApi =
      _$referenceAreaKindEnum_unknownDefaultOpenApi;

  static Serializer<ReferenceAreaKindEnum> get serializer =>
      _$referenceAreaKindEnumSerializer;

  const ReferenceAreaKindEnum._(String name) : super(name);

  static BuiltSet<ReferenceAreaKindEnum> get values =>
      _$referenceAreaKindEnumValues;
  static ReferenceAreaKindEnum valueOf(String name) =>
      _$referenceAreaKindEnumValueOf(name);
}
