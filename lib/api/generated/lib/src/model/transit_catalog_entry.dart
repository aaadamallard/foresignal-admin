//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transit_catalog_entry.g.dart';

/// One GTFS-RT feed row of the vendored MobilityData snapshot and whether it is enabled (070)
///
/// Properties:
/// * [id] - Mobility Database id
/// * [provider]
/// * [countryCode]
/// * [entityType] - The GTFS-RT entity types the URL serves, `|`-joined as in the catalog (`vp` vehicle positions, `tu` trip updates, `sa` service alerts; for example `tu|vp`); empty when the catalog declares none
/// * [directDownloadUrl]
/// * [licenseUrl]
/// * [staticReference]
/// * [enabled] - Listed in `foresignal.transit.catalog-feeds` and registered
/// * [sourceId] - The first registered source id (`transit-mdb-{id}` or `transit-alerts-mdb-{id}`) when enabled; trip updates are not ingested. `{id}` is the catalog id lower-cased with other characters replaced by hyphens (shortened with a hash suffix past 64 characters)
/// * [sourceIds] - Every source id registered for the row (a `sa|tu|vp` row registers both `transit-mdb-{id}` and `transit-alerts-mdb-{id}`); empty when not enabled
@BuiltValue()
abstract class TransitCatalogEntry
    implements Built<TransitCatalogEntry, TransitCatalogEntryBuilder> {
  /// Mobility Database id
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'countryCode')
  String? get countryCode;

  /// The GTFS-RT entity types the URL serves, `|`-joined as in the catalog (`vp` vehicle positions, `tu` trip updates, `sa` service alerts; for example `tu|vp`); empty when the catalog declares none
  @BuiltValueField(wireName: r'entityType')
  String get entityType;

  @BuiltValueField(wireName: r'directDownloadUrl')
  String get directDownloadUrl;

  @BuiltValueField(wireName: r'licenseUrl')
  String? get licenseUrl;

  @BuiltValueField(wireName: r'staticReference')
  String? get staticReference;

  /// Listed in `foresignal.transit.catalog-feeds` and registered
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// The first registered source id (`transit-mdb-{id}` or `transit-alerts-mdb-{id}`) when enabled; trip updates are not ingested. `{id}` is the catalog id lower-cased with other characters replaced by hyphens (shortened with a hash suffix past 64 characters)
  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  /// Every source id registered for the row (a `sa|tu|vp` row registers both `transit-mdb-{id}` and `transit-alerts-mdb-{id}`); empty when not enabled
  @BuiltValueField(wireName: r'sourceIds')
  BuiltList<String>? get sourceIds;

  TransitCatalogEntry._();

  factory TransitCatalogEntry([void updates(TransitCatalogEntryBuilder b)]) =
      _$TransitCatalogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransitCatalogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransitCatalogEntry> get serializer =>
      _$TransitCatalogEntrySerializer();
}

class _$TransitCatalogEntrySerializer
    implements PrimitiveSerializer<TransitCatalogEntry> {
  @override
  final Iterable<Type> types = const [
    TransitCatalogEntry,
    _$TransitCatalogEntry
  ];

  @override
  final String wireName = r'TransitCatalogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransitCatalogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    if (object.countryCode != null) {
      yield r'countryCode';
      yield serializers.serialize(
        object.countryCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(String),
    );
    yield r'directDownloadUrl';
    yield serializers.serialize(
      object.directDownloadUrl,
      specifiedType: const FullType(String),
    );
    if (object.licenseUrl != null) {
      yield r'licenseUrl';
      yield serializers.serialize(
        object.licenseUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staticReference != null) {
      yield r'staticReference';
      yield serializers.serialize(
        object.staticReference,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sourceIds != null) {
      yield r'sourceIds';
      yield serializers.serialize(
        object.sourceIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransitCatalogEntry object, {
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
    required TransitCatalogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'countryCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.countryCode = valueDes;
          break;
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.entityType = valueDes;
          break;
        case r'directDownloadUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.directDownloadUrl = valueDes;
          break;
        case r'licenseUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.licenseUrl = valueDes;
          break;
        case r'staticReference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staticReference = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'sourceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sourceIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransitCatalogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitCatalogEntryBuilder();
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
