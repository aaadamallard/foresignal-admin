//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:foresignal_api/src/model/dossier_sections_impacts_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_impacts.g.dart';

/// 127 projected impacts for the object
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [items]
@BuiltValue()
abstract class DossierSectionsImpacts
    implements Built<DossierSectionsImpacts, DossierSectionsImpactsBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsImpactsStatusEnum get status;
  // enum statusEnum {  ok,  empty,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'links')
  DossierSectionsOverviewLinks? get links;

  @BuiltValueField(wireName: r'facets')
  DossierSectionsOverviewFacets? get facets;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'items')
  BuiltList<DossierSectionsImpactsItemsInner>? get items;

  DossierSectionsImpacts._();

  factory DossierSectionsImpacts([
    void updates(DossierSectionsImpactsBuilder b),
  ]) = _$DossierSectionsImpacts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsImpactsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsImpacts> get serializer =>
      _$DossierSectionsImpactsSerializer();
}

class _$DossierSectionsImpactsSerializer
    implements PrimitiveSerializer<DossierSectionsImpacts> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsImpacts,
    _$DossierSectionsImpacts,
  ];

  @override
  final String wireName = r'DossierSectionsImpacts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsImpacts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsImpactsStatusEnum),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType.nullable(DossierSectionsOverviewLinks),
      );
    }
    if (object.facets != null) {
      yield r'facets';
      yield serializers.serialize(
        object.facets,
        specifiedType: const FullType.nullable(DossierSectionsOverviewFacets),
      );
    }
    if (object.truncated != null) {
      yield r'truncated';
      yield serializers.serialize(
        object.truncated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [
          FullType(DossierSectionsImpactsItemsInner),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsImpacts object, {
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
    required DossierSectionsImpactsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DossierSectionsImpactsStatusEnum,
                    ),
                  )
                  as DossierSectionsImpactsStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'links':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsOverviewLinks,
                    ),
                  )
                  as DossierSectionsOverviewLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'facets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsOverviewFacets,
                    ),
                  )
                  as DossierSectionsOverviewFacets?;
          if (valueDes == null) continue;
          result.facets.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DossierSectionsImpactsItemsInner),
                    ]),
                  )
                  as BuiltList<DossierSectionsImpactsItemsInner>?;
          if (valueDes == null) continue;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsImpacts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsImpactsBuilder();
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

class DossierSectionsImpactsStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsImpactsStatusEnum ok =
      _$dossierSectionsImpactsStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsImpactsStatusEnum empty =
      _$dossierSectionsImpactsStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsImpactsStatusEnum unavailable =
      _$dossierSectionsImpactsStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsImpactsStatusEnum notInstalled =
      _$dossierSectionsImpactsStatusEnum_notInstalled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DossierSectionsImpactsStatusEnum unknownDefaultOpenApi =
      _$dossierSectionsImpactsStatusEnum_unknownDefaultOpenApi;

  static Serializer<DossierSectionsImpactsStatusEnum> get serializer =>
      _$dossierSectionsImpactsStatusEnumSerializer;

  const DossierSectionsImpactsStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsImpactsStatusEnum> get values =>
      _$dossierSectionsImpactsStatusEnumValues;
  static DossierSectionsImpactsStatusEnum valueOf(String name) =>
      _$dossierSectionsImpactsStatusEnumValueOf(name);
}
