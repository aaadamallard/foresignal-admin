//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media_provider.g.dart';

/// A media-rating provider with its licence, egress and import state
///
/// Properties:
/// * [id]
/// * [name]
/// * [enabled]
/// * [defaultEnabled]
/// * [licence]
/// * [licenceUrl]
/// * [attribution]
/// * [licenceAcknowledged]
/// * [acknowledgedBy]
/// * [acknowledgedAt]
/// * [egress]
/// * [permissionRecorded] - Operator recorded redistribution permission (lifts LOCAL_ONLY where terms allow)
/// * [credentialSet] - MBFC: operator API key stored
/// * [lastImportAt]
/// * [lastImportStatus]
/// * [ratingsCount]
@BuiltValue()
abstract class MediaProvider
    implements Built<MediaProvider, MediaProviderBuilder> {
  @BuiltValueField(wireName: r'id')
  MediaProviderIdEnum get id;
  // enum idEnum {  wikidata,  partisan-web,  allsides,  mbfc,  operator,  };

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'defaultEnabled')
  bool? get defaultEnabled;

  @BuiltValueField(wireName: r'licence')
  String get licence;

  @BuiltValueField(wireName: r'licenceUrl')
  String? get licenceUrl;

  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  @BuiltValueField(wireName: r'licenceAcknowledged')
  bool get licenceAcknowledged;

  @BuiltValueField(wireName: r'acknowledgedBy')
  String? get acknowledgedBy;

  @BuiltValueField(wireName: r'acknowledgedAt')
  DateTime? get acknowledgedAt;

  @BuiltValueField(wireName: r'egress')
  MediaProviderEgressEnum get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// Operator recorded redistribution permission (lifts LOCAL_ONLY where terms allow)
  @BuiltValueField(wireName: r'permissionRecorded')
  bool? get permissionRecorded;

  /// MBFC: operator API key stored
  @BuiltValueField(wireName: r'credentialSet')
  bool? get credentialSet;

  @BuiltValueField(wireName: r'lastImportAt')
  DateTime? get lastImportAt;

  @BuiltValueField(wireName: r'lastImportStatus')
  MediaProviderLastImportStatusEnum? get lastImportStatus;
  // enum lastImportStatusEnum {  ok,  partial,  failed,  };

  @BuiltValueField(wireName: r'ratingsCount')
  int? get ratingsCount;

  MediaProvider._();

  factory MediaProvider([void updates(MediaProviderBuilder b)]) =
      _$MediaProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MediaProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MediaProvider> get serializer =>
      _$MediaProviderSerializer();
}

class _$MediaProviderSerializer implements PrimitiveSerializer<MediaProvider> {
  @override
  final Iterable<Type> types = const [MediaProvider, _$MediaProvider];

  @override
  final String wireName = r'MediaProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MediaProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(MediaProviderIdEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.defaultEnabled != null) {
      yield r'defaultEnabled';
      yield serializers.serialize(
        object.defaultEnabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'licence';
    yield serializers.serialize(
      object.licence,
      specifiedType: const FullType(String),
    );
    if (object.licenceUrl != null) {
      yield r'licenceUrl';
      yield serializers.serialize(
        object.licenceUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'licenceAcknowledged';
    yield serializers.serialize(
      object.licenceAcknowledged,
      specifiedType: const FullType(bool),
    );
    if (object.acknowledgedBy != null) {
      yield r'acknowledgedBy';
      yield serializers.serialize(
        object.acknowledgedBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.acknowledgedAt != null) {
      yield r'acknowledgedAt';
      yield serializers.serialize(
        object.acknowledgedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'egress';
    yield serializers.serialize(
      object.egress,
      specifiedType: const FullType(MediaProviderEgressEnum),
    );
    if (object.permissionRecorded != null) {
      yield r'permissionRecorded';
      yield serializers.serialize(
        object.permissionRecorded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.credentialSet != null) {
      yield r'credentialSet';
      yield serializers.serialize(
        object.credentialSet,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastImportAt != null) {
      yield r'lastImportAt';
      yield serializers.serialize(
        object.lastImportAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastImportStatus != null) {
      yield r'lastImportStatus';
      yield serializers.serialize(
        object.lastImportStatus,
        specifiedType:
            const FullType.nullable(MediaProviderLastImportStatusEnum),
      );
    }
    if (object.ratingsCount != null) {
      yield r'ratingsCount';
      yield serializers.serialize(
        object.ratingsCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MediaProvider object, {
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
    required MediaProviderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaProviderIdEnum),
          ) as MediaProviderIdEnum;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'defaultEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.defaultEnabled = valueDes;
          break;
        case r'licence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licence = valueDes;
          break;
        case r'licenceUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenceUrl = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        case r'licenceAcknowledged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.licenceAcknowledged = valueDes;
          break;
        case r'acknowledgedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.acknowledgedBy = valueDes;
          break;
        case r'acknowledgedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.acknowledgedAt = valueDes;
          break;
        case r'egress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MediaProviderEgressEnum),
          ) as MediaProviderEgressEnum;
          result.egress = valueDes;
          break;
        case r'permissionRecorded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.permissionRecorded = valueDes;
          break;
        case r'credentialSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.credentialSet = valueDes;
          break;
        case r'lastImportAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastImportAt = valueDes;
          break;
        case r'lastImportStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(MediaProviderLastImportStatusEnum),
          ) as MediaProviderLastImportStatusEnum?;
          if (valueDes == null) continue;
          result.lastImportStatus = valueDes;
          break;
        case r'ratingsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ratingsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MediaProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MediaProviderBuilder();
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

class MediaProviderIdEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wikidata')
  static const MediaProviderIdEnum wikidata = _$mediaProviderIdEnum_wikidata;
  @BuiltValueEnumConst(wireName: r'partisan-web')
  static const MediaProviderIdEnum partisanWeb =
      _$mediaProviderIdEnum_partisanWeb;
  @BuiltValueEnumConst(wireName: r'allsides')
  static const MediaProviderIdEnum allsides = _$mediaProviderIdEnum_allsides;
  @BuiltValueEnumConst(wireName: r'mbfc')
  static const MediaProviderIdEnum mbfc = _$mediaProviderIdEnum_mbfc;
  @BuiltValueEnumConst(wireName: r'operator')
  static const MediaProviderIdEnum operator_ = _$mediaProviderIdEnum_operator_;

  static Serializer<MediaProviderIdEnum> get serializer =>
      _$mediaProviderIdEnumSerializer;

  const MediaProviderIdEnum._(String name) : super(name);

  static BuiltSet<MediaProviderIdEnum> get values =>
      _$mediaProviderIdEnumValues;
  static MediaProviderIdEnum valueOf(String name) =>
      _$mediaProviderIdEnumValueOf(name);
}

class MediaProviderEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const MediaProviderEgressEnum OPEN = _$mediaProviderEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const MediaProviderEgressEnum LOCAL_ONLY =
      _$mediaProviderEgressEnum_LOCAL_ONLY;

  static Serializer<MediaProviderEgressEnum> get serializer =>
      _$mediaProviderEgressEnumSerializer;

  const MediaProviderEgressEnum._(String name) : super(name);

  static BuiltSet<MediaProviderEgressEnum> get values =>
      _$mediaProviderEgressEnumValues;
  static MediaProviderEgressEnum valueOf(String name) =>
      _$mediaProviderEgressEnumValueOf(name);
}

class MediaProviderLastImportStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const MediaProviderLastImportStatusEnum ok =
      _$mediaProviderLastImportStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'partial')
  static const MediaProviderLastImportStatusEnum partial =
      _$mediaProviderLastImportStatusEnum_partial;
  @BuiltValueEnumConst(wireName: r'failed')
  static const MediaProviderLastImportStatusEnum failed =
      _$mediaProviderLastImportStatusEnum_failed;

  static Serializer<MediaProviderLastImportStatusEnum> get serializer =>
      _$mediaProviderLastImportStatusEnumSerializer;

  const MediaProviderLastImportStatusEnum._(String name) : super(name);

  static BuiltSet<MediaProviderLastImportStatusEnum> get values =>
      _$mediaProviderLastImportStatusEnumValues;
  static MediaProviderLastImportStatusEnum valueOf(String name) =>
      _$mediaProviderLastImportStatusEnumValueOf(name);
}
