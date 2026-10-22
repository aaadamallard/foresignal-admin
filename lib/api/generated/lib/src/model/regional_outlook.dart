//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/outlook_window.dart';
import 'package:foresignal_api/src/model/regional_outlook_skill.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_outlook.g.dart';

/// CAST-style count outlook for one region and family: six 4-week windows with accuracy
///
/// Properties:
/// * [region]
/// * [regionLevel]
/// * [family] - Outlook family from `intel/outlook-families.json`
/// * [category]
/// * [publishedAt]
/// * [modelVersion]
/// * [asOfSeq]
/// * [manifestId] - ULID identifier
/// * [windows]
/// * [history] - Past windows with actuals (detail endpoint only)
/// * [skill]
/// * [lowReportingDensity]
/// * [lowDetectability]
/// * [caveats]
/// * [recordRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [id] - ULID identifier
/// * [source_] - The reference source the counts came from (acled, ucdp, usgs, gdacs or foresignal)
@BuiltValue()
abstract class RegionalOutlook
    implements Built<RegionalOutlook, RegionalOutlookBuilder> {
  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'regionLevel')
  RegionalOutlookRegionLevelEnum get regionLevel;
  // enum regionLevelEnum {  country,  admin1,  };

  /// Outlook family from `intel/outlook-families.json`
  @BuiltValueField(wireName: r'family')
  String get family;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime get publishedAt;

  @BuiltValueField(wireName: r'modelVersion')
  String get modelVersion;

  @BuiltValueField(wireName: r'asOfSeq')
  int? get asOfSeq;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  @BuiltValueField(wireName: r'windows')
  BuiltList<OutlookWindow> get windows;

  /// Past windows with actuals (detail endpoint only)
  @BuiltValueField(wireName: r'history')
  BuiltList<OutlookWindow>? get history;

  @BuiltValueField(wireName: r'skill')
  RegionalOutlookSkill? get skill;

  @BuiltValueField(wireName: r'lowReportingDensity')
  bool? get lowReportingDensity;

  @BuiltValueField(wireName: r'lowDetectability')
  bool? get lowDetectability;

  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat>? get caveats;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'recordRef')
  String? get recordRef;

  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The reference source the counts came from (acled, ucdp, usgs, gdacs or foresignal)
  @BuiltValueField(wireName: r'source')
  String? get source_;

  RegionalOutlook._();

  factory RegionalOutlook([void updates(RegionalOutlookBuilder b)]) =
      _$RegionalOutlook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalOutlookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalOutlook> get serializer =>
      _$RegionalOutlookSerializer();
}

class _$RegionalOutlookSerializer
    implements PrimitiveSerializer<RegionalOutlook> {
  @override
  final Iterable<Type> types = const [RegionalOutlook, _$RegionalOutlook];

  @override
  final String wireName = r'RegionalOutlook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalOutlook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'regionLevel';
    yield serializers.serialize(
      object.regionLevel,
      specifiedType: const FullType(RegionalOutlookRegionLevelEnum),
    );
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(String),
    );
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    yield r'publishedAt';
    yield serializers.serialize(
      object.publishedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'modelVersion';
    yield serializers.serialize(
      object.modelVersion,
      specifiedType: const FullType(String),
    );
    if (object.asOfSeq != null) {
      yield r'asOfSeq';
      yield serializers.serialize(
        object.asOfSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'windows';
    yield serializers.serialize(
      object.windows,
      specifiedType: const FullType(BuiltList, [FullType(OutlookWindow)]),
    );
    if (object.history != null) {
      yield r'history';
      yield serializers.serialize(
        object.history,
        specifiedType: const FullType(BuiltList, [FullType(OutlookWindow)]),
      );
    }
    if (object.skill != null) {
      yield r'skill';
      yield serializers.serialize(
        object.skill,
        specifiedType: const FullType.nullable(RegionalOutlookSkill),
      );
    }
    if (object.lowReportingDensity != null) {
      yield r'lowReportingDensity';
      yield serializers.serialize(
        object.lowReportingDensity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lowDetectability != null) {
      yield r'lowDetectability';
      yield serializers.serialize(
        object.lowDetectability,
        specifiedType: const FullType(bool),
      );
    }
    if (object.caveats != null) {
      yield r'caveats';
      yield serializers.serialize(
        object.caveats,
        specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
      );
    }
    if (object.recordRef != null) {
      yield r'recordRef';
      yield serializers.serialize(
        object.recordRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalOutlook object, {
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
    required RegionalOutlookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        case r'regionLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegionalOutlookRegionLevelEnum),
          ) as RegionalOutlookRegionLevelEnum;
          result.regionLevel = valueDes;
          break;
        case r'family':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.family = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.category = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'modelVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modelVersion = valueDes;
          break;
        case r'asOfSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.asOfSeq = valueDes;
          break;
        case r'manifestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        case r'windows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OutlookWindow)]),
          ) as BuiltList<OutlookWindow>;
          result.windows.replace(valueDes);
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(OutlookWindow)]),
          ) as BuiltList<OutlookWindow>?;
          if (valueDes == null) continue;
          result.history.replace(valueDes);
          break;
        case r'skill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RegionalOutlookSkill),
          ) as RegionalOutlookSkill?;
          if (valueDes == null) continue;
          result.skill.replace(valueDes);
          break;
        case r'lowReportingDensity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lowReportingDensity = valueDes;
          break;
        case r'lowDetectability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.lowDetectability = valueDes;
          break;
        case r'caveats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Caveat)]),
          ) as BuiltList<Caveat>?;
          if (valueDes == null) continue;
          result.caveats.replace(valueDes);
          break;
        case r'recordRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.recordRef = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalOutlook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalOutlookBuilder();
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

class RegionalOutlookRegionLevelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'country')
  static const RegionalOutlookRegionLevelEnum country =
      _$regionalOutlookRegionLevelEnum_country;
  @BuiltValueEnumConst(wireName: r'admin1')
  static const RegionalOutlookRegionLevelEnum admin1 =
      _$regionalOutlookRegionLevelEnum_admin1;

  static Serializer<RegionalOutlookRegionLevelEnum> get serializer =>
      _$regionalOutlookRegionLevelEnumSerializer;

  const RegionalOutlookRegionLevelEnum._(String name) : super(name);

  static BuiltSet<RegionalOutlookRegionLevelEnum> get values =>
      _$regionalOutlookRegionLevelEnumValues;
  static RegionalOutlookRegionLevelEnum valueOf(String name) =>
      _$regionalOutlookRegionLevelEnumValueOf(name);
}
