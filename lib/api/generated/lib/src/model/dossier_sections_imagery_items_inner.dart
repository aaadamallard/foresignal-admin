//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_imagery_items_inner.g.dart';

/// Raster frame, SatDump product or STAC scene
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [kind]
/// * [title]
/// * [time]
/// * [sourceId]
/// * [frameUrl]
/// * [thumbnailUrl]
/// * [bbox]
@BuiltValue()
abstract class DossierSectionsImageryItemsInner
    implements
        Built<DossierSectionsImageryItemsInner,
            DossierSectionsImageryItemsInnerBuilder> {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'kind')
  DossierSectionsImageryItemsInnerKindEnum get kind;
  // enum kindEnum {  raster-frame,  satdump-product,  stac-scene,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'time')
  DateTime? get time;

  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  @BuiltValueField(wireName: r'frameUrl')
  String? get frameUrl;

  @BuiltValueField(wireName: r'thumbnailUrl')
  String? get thumbnailUrl;

  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  DossierSectionsImageryItemsInner._();

  factory DossierSectionsImageryItemsInner(
          [void updates(DossierSectionsImageryItemsInnerBuilder b)]) =
      _$DossierSectionsImageryItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsImageryItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsImageryItemsInner> get serializer =>
      _$DossierSectionsImageryItemsInnerSerializer();
}

class _$DossierSectionsImageryItemsInnerSerializer
    implements PrimitiveSerializer<DossierSectionsImageryItemsInner> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsImageryItemsInner,
    _$DossierSectionsImageryItemsInner
  ];

  @override
  final String wireName = r'DossierSectionsImageryItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsImageryItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(DossierSectionsImageryItemsInnerKindEnum),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.frameUrl != null) {
      yield r'frameUrl';
      yield serializers.serialize(
        object.frameUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.thumbnailUrl != null) {
      yield r'thumbnailUrl';
      yield serializers.serialize(
        object.thumbnailUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsImageryItemsInner object, {
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
    required DossierSectionsImageryItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ref = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(DossierSectionsImageryItemsInnerKindEnum),
          ) as DossierSectionsImageryItemsInnerKindEnum;
          result.kind = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.time = valueDes;
          break;
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        case r'frameUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameUrl = valueDes;
          break;
        case r'thumbnailUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.thumbnailUrl = valueDes;
          break;
        case r'bbox':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsImageryItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsImageryItemsInnerBuilder();
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

class DossierSectionsImageryItemsInnerKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'raster-frame')
  static const DossierSectionsImageryItemsInnerKindEnum rasterFrame =
      _$dossierSectionsImageryItemsInnerKindEnum_rasterFrame;
  @BuiltValueEnumConst(wireName: r'satdump-product')
  static const DossierSectionsImageryItemsInnerKindEnum satdumpProduct =
      _$dossierSectionsImageryItemsInnerKindEnum_satdumpProduct;
  @BuiltValueEnumConst(wireName: r'stac-scene')
  static const DossierSectionsImageryItemsInnerKindEnum stacScene =
      _$dossierSectionsImageryItemsInnerKindEnum_stacScene;

  static Serializer<DossierSectionsImageryItemsInnerKindEnum> get serializer =>
      _$dossierSectionsImageryItemsInnerKindEnumSerializer;

  const DossierSectionsImageryItemsInnerKindEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsImageryItemsInnerKindEnum> get values =>
      _$dossierSectionsImageryItemsInnerKindEnumValues;
  static DossierSectionsImageryItemsInnerKindEnum valueOf(String name) =>
      _$dossierSectionsImageryItemsInnerKindEnumValueOf(name);
}
