//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/external_catalogue_entry_time_dimension.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_catalogue_entry.g.dart';

/// Client-direct external layer (GIBS, nowCOAST); listed by `/v1/products?kind=external`, never fetched by Foresignal
///
/// Properties:
/// * [provider] - Upstream provider (gibs, nowcoast)
/// * [layer]
/// * [protocol]
/// * [externalTemplate] - Tile URL template clients fetch directly (Foresignal never proxies it)
/// * [tilingScheme]
/// * [tileSize]
/// * [maxNativeZoom]
/// * [format]
/// * [bounds] - [west, south, east, north] in WGS84 degrees
/// * [timeDimension]
/// * [cors] - Upstream `Access-Control-Allow-Origin` (checked 2026-10)
/// * [attribution]
@BuiltValue()
abstract class ExternalCatalogueEntry
    implements Built<ExternalCatalogueEntry, ExternalCatalogueEntryBuilder> {
  /// Upstream provider (gibs, nowcoast)
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'layer')
  String? get layer;

  @BuiltValueField(wireName: r'protocol')
  ExternalCatalogueEntryProtocolEnum? get protocol;
  // enum protocolEnum {  wmts,  wms,  xyz,  };

  /// Tile URL template clients fetch directly (Foresignal never proxies it)
  @BuiltValueField(wireName: r'externalTemplate')
  String get externalTemplate;

  @BuiltValueField(wireName: r'tilingScheme')
  String get tilingScheme;

  @BuiltValueField(wireName: r'tileSize')
  int get tileSize;

  @BuiltValueField(wireName: r'maxNativeZoom')
  int get maxNativeZoom;

  @BuiltValueField(wireName: r'format')
  ExternalCatalogueEntryFormatEnum? get format;
  // enum formatEnum {  png,  jpg,  };

  /// [west, south, east, north] in WGS84 degrees
  @BuiltValueField(wireName: r'bounds')
  BuiltList<num> get bounds;

  @BuiltValueField(wireName: r'timeDimension')
  ExternalCatalogueEntryTimeDimension? get timeDimension;

  /// Upstream `Access-Control-Allow-Origin` (checked 2026-10)
  @BuiltValueField(wireName: r'cors')
  String? get cors;

  @BuiltValueField(wireName: r'attribution')
  Attribution get attribution;

  ExternalCatalogueEntry._();

  factory ExternalCatalogueEntry([
    void updates(ExternalCatalogueEntryBuilder b),
  ]) = _$ExternalCatalogueEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalCatalogueEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalCatalogueEntry> get serializer =>
      _$ExternalCatalogueEntrySerializer();
}

class _$ExternalCatalogueEntrySerializer
    implements PrimitiveSerializer<ExternalCatalogueEntry> {
  @override
  final Iterable<Type> types = const [
    ExternalCatalogueEntry,
    _$ExternalCatalogueEntry,
  ];

  @override
  final String wireName = r'ExternalCatalogueEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalCatalogueEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.layer != null) {
      yield r'layer';
      yield serializers.serialize(
        object.layer,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(ExternalCatalogueEntryProtocolEnum),
      );
    }
    yield r'externalTemplate';
    yield serializers.serialize(
      object.externalTemplate,
      specifiedType: const FullType(String),
    );
    yield r'tilingScheme';
    yield serializers.serialize(
      object.tilingScheme,
      specifiedType: const FullType(String),
    );
    yield r'tileSize';
    yield serializers.serialize(
      object.tileSize,
      specifiedType: const FullType(int),
    );
    yield r'maxNativeZoom';
    yield serializers.serialize(
      object.maxNativeZoom,
      specifiedType: const FullType(int),
    );
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(ExternalCatalogueEntryFormatEnum),
      );
    }
    yield r'bounds';
    yield serializers.serialize(
      object.bounds,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    if (object.timeDimension != null) {
      yield r'timeDimension';
      yield serializers.serialize(
        object.timeDimension,
        specifiedType: const FullType.nullable(
          ExternalCatalogueEntryTimeDimension,
        ),
      );
    }
    if (object.cors != null) {
      yield r'cors';
      yield serializers.serialize(
        object.cors,
        specifiedType: const FullType(String),
      );
    }
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(Attribution),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalCatalogueEntry object, {
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
    required ExternalCatalogueEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'layer':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.layer = valueDes;
          break;
        case r'protocol':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExternalCatalogueEntryProtocolEnum,
                    ),
                  )
                  as ExternalCatalogueEntryProtocolEnum?;
          if (valueDes == null) continue;
          result.protocol = valueDes;
          break;
        case r'externalTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.externalTemplate = valueDes;
          break;
        case r'tilingScheme':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.tilingScheme = valueDes;
          break;
        case r'tileSize':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.tileSize = valueDes;
          break;
        case r'maxNativeZoom':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.maxNativeZoom = valueDes;
          break;
        case r'format':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExternalCatalogueEntryFormatEnum,
                    ),
                  )
                  as ExternalCatalogueEntryFormatEnum?;
          if (valueDes == null) continue;
          result.format = valueDes;
          break;
        case r'bounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [FullType(num)]),
                  )
                  as BuiltList<num>;
          result.bounds.replace(valueDes);
          break;
        case r'timeDimension':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ExternalCatalogueEntryTimeDimension,
                    ),
                  )
                  as ExternalCatalogueEntryTimeDimension?;
          if (valueDes == null) continue;
          result.timeDimension.replace(valueDes);
          break;
        case r'cors':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.cors = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Attribution),
                  )
                  as Attribution;
          result.attribution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalCatalogueEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalCatalogueEntryBuilder();
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

class ExternalCatalogueEntryProtocolEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wmts')
  static const ExternalCatalogueEntryProtocolEnum wmts =
      _$externalCatalogueEntryProtocolEnum_wmts;
  @BuiltValueEnumConst(wireName: r'wms')
  static const ExternalCatalogueEntryProtocolEnum wms =
      _$externalCatalogueEntryProtocolEnum_wms;
  @BuiltValueEnumConst(wireName: r'xyz')
  static const ExternalCatalogueEntryProtocolEnum xyz =
      _$externalCatalogueEntryProtocolEnum_xyz;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExternalCatalogueEntryProtocolEnum unknownDefaultOpenApi =
      _$externalCatalogueEntryProtocolEnum_unknownDefaultOpenApi;

  static Serializer<ExternalCatalogueEntryProtocolEnum> get serializer =>
      _$externalCatalogueEntryProtocolEnumSerializer;

  const ExternalCatalogueEntryProtocolEnum._(String name) : super(name);

  static BuiltSet<ExternalCatalogueEntryProtocolEnum> get values =>
      _$externalCatalogueEntryProtocolEnumValues;
  static ExternalCatalogueEntryProtocolEnum valueOf(String name) =>
      _$externalCatalogueEntryProtocolEnumValueOf(name);
}

class ExternalCatalogueEntryFormatEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'png')
  static const ExternalCatalogueEntryFormatEnum png =
      _$externalCatalogueEntryFormatEnum_png;
  @BuiltValueEnumConst(wireName: r'jpg')
  static const ExternalCatalogueEntryFormatEnum jpg =
      _$externalCatalogueEntryFormatEnum_jpg;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExternalCatalogueEntryFormatEnum unknownDefaultOpenApi =
      _$externalCatalogueEntryFormatEnum_unknownDefaultOpenApi;

  static Serializer<ExternalCatalogueEntryFormatEnum> get serializer =>
      _$externalCatalogueEntryFormatEnumSerializer;

  const ExternalCatalogueEntryFormatEnum._(String name) : super(name);

  static BuiltSet<ExternalCatalogueEntryFormatEnum> get values =>
      _$externalCatalogueEntryFormatEnumValues;
  static ExternalCatalogueEntryFormatEnum valueOf(String name) =>
      _$externalCatalogueEntryFormatEnumValueOf(name);
}
