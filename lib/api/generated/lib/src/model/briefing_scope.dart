//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_scope.g.dart';

/// BriefingScope
///
/// Properties:
/// * [sources]
/// * [kinds]
/// * [bbox]
/// * [ruleIds]
/// * [includeHealth]
/// * [placeIds] - Places (036) whose areas bound the scope; digest headings name the place
/// * [viewId] - Saved view id or slug (036)
/// * [country] - ISO2 filter (040)
/// * [admin1] - ISO 3166-2 filter (040)
/// * [county] - FIPS5 filter (040)
/// * [places] - Place ids for the \"Weather at places\" section (empty = none); unknown ids → 400
/// * [weatherProducts] - Products for the section (default: those backing place-weather: mrms-reflectivity, mrms-mesh-60m, mrms-precip-rate, hrrr-smoke, gfs-gust, gfs-apcp); they choose the radar and MESH values and the GFS and HRRR rows (lightning, NWS alerts and the NWS forecast are always shown); unknown ids → 400
/// * [includeAlertQuality] - Include the weekly alert-quality section: lowest precision (at least 10 labeled), noisiest rules by alerts per day, rules with open tuning suggestions (115)
@BuiltValue()
abstract class BriefingScope
    implements Built<BriefingScope, BriefingScopeBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'bbox')
  String? get bbox;

  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'includeHealth')
  bool? get includeHealth;

  /// Places (036) whose areas bound the scope; digest headings name the place
  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  /// Saved view id or slug (036)
  @BuiltValueField(wireName: r'viewId')
  String? get viewId;

  /// ISO2 filter (040)
  @BuiltValueField(wireName: r'country')
  BuiltList<String>? get country;

  /// ISO 3166-2 filter (040)
  @BuiltValueField(wireName: r'admin1')
  BuiltList<String>? get admin1;

  /// FIPS5 filter (040)
  @BuiltValueField(wireName: r'county')
  BuiltList<String>? get county;

  /// Place ids for the \"Weather at places\" section (empty = none); unknown ids → 400
  @BuiltValueField(wireName: r'places')
  BuiltList<String>? get places;

  /// Products for the section (default: those backing place-weather: mrms-reflectivity, mrms-mesh-60m, mrms-precip-rate, hrrr-smoke, gfs-gust, gfs-apcp); they choose the radar and MESH values and the GFS and HRRR rows (lightning, NWS alerts and the NWS forecast are always shown); unknown ids → 400
  @BuiltValueField(wireName: r'weatherProducts')
  BuiltList<String>? get weatherProducts;

  /// Include the weekly alert-quality section: lowest precision (at least 10 labeled), noisiest rules by alerts per day, rules with open tuning suggestions (115)
  @BuiltValueField(wireName: r'includeAlertQuality')
  bool? get includeAlertQuality;

  BriefingScope._();

  factory BriefingScope([void updates(BriefingScopeBuilder b)]) =
      _$BriefingScope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingScopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingScope> get serializer =>
      _$BriefingScopeSerializer();
}

class _$BriefingScopeSerializer implements PrimitiveSerializer<BriefingScope> {
  @override
  final Iterable<Type> types = const [BriefingScope, _$BriefingScope];

  @override
  final String wireName = r'BriefingScope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingScope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ruleIds != null) {
      yield r'ruleIds';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.includeHealth != null) {
      yield r'includeHealth';
      yield serializers.serialize(
        object.includeHealth,
        specifiedType: const FullType(bool),
      );
    }
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.viewId != null) {
      yield r'viewId';
      yield serializers.serialize(
        object.viewId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.admin1 != null) {
      yield r'admin1';
      yield serializers.serialize(
        object.admin1,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.county != null) {
      yield r'county';
      yield serializers.serialize(
        object.county,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.places != null) {
      yield r'places';
      yield serializers.serialize(
        object.places,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.weatherProducts != null) {
      yield r'weatherProducts';
      yield serializers.serialize(
        object.weatherProducts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.includeAlertQuality != null) {
      yield r'includeAlertQuality';
      yield serializers.serialize(
        object.includeAlertQuality,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingScope object, {
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
    required BriefingScopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bbox = valueDes;
          break;
        case r'ruleIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'includeHealth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeHealth = valueDes;
          break;
        case r'placeIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'viewId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.viewId = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.country.replace(valueDes);
          break;
        case r'admin1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.admin1.replace(valueDes);
          break;
        case r'county':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.county.replace(valueDes);
          break;
        case r'places':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.places.replace(valueDes);
          break;
        case r'weatherProducts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.weatherProducts.replace(valueDes);
          break;
        case r'includeAlertQuality':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.includeAlertQuality = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingScopeBuilder();
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
