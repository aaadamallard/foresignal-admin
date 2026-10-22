//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/related_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_related.g.dart';

/// Relations grouped for panels
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [nearby]
/// * [operational]
/// * [infrastructure]
/// * [historical]
@BuiltValue()
abstract class DossierSectionsRelated
    implements Built<DossierSectionsRelated, DossierSectionsRelatedBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsRelatedStatusEnum get status;
  // enum statusEnum {  ok,  empty,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'links')
  DossierSectionsOverviewLinks? get links;

  @BuiltValueField(wireName: r'facets')
  DossierSectionsOverviewFacets? get facets;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'nearby')
  BuiltList<RelatedObject>? get nearby;

  @BuiltValueField(wireName: r'operational')
  BuiltList<RelatedObject>? get operational;

  @BuiltValueField(wireName: r'infrastructure')
  BuiltList<RelatedObject>? get infrastructure;

  @BuiltValueField(wireName: r'historical')
  BuiltList<RelatedObject>? get historical;

  DossierSectionsRelated._();

  factory DossierSectionsRelated([
    void updates(DossierSectionsRelatedBuilder b),
  ]) = _$DossierSectionsRelated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsRelatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsRelated> get serializer =>
      _$DossierSectionsRelatedSerializer();
}

class _$DossierSectionsRelatedSerializer
    implements PrimitiveSerializer<DossierSectionsRelated> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsRelated,
    _$DossierSectionsRelated,
  ];

  @override
  final String wireName = r'DossierSectionsRelated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsRelated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsRelatedStatusEnum),
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
    if (object.nearby != null) {
      yield r'nearby';
      yield serializers.serialize(
        object.nearby,
        specifiedType: const FullType(BuiltList, [FullType(RelatedObject)]),
      );
    }
    if (object.operational != null) {
      yield r'operational';
      yield serializers.serialize(
        object.operational,
        specifiedType: const FullType(BuiltList, [FullType(RelatedObject)]),
      );
    }
    if (object.infrastructure != null) {
      yield r'infrastructure';
      yield serializers.serialize(
        object.infrastructure,
        specifiedType: const FullType(BuiltList, [FullType(RelatedObject)]),
      );
    }
    if (object.historical != null) {
      yield r'historical';
      yield serializers.serialize(
        object.historical,
        specifiedType: const FullType(BuiltList, [FullType(RelatedObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsRelated object, {
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
    required DossierSectionsRelatedBuilder result,
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
                      DossierSectionsRelatedStatusEnum,
                    ),
                  )
                  as DossierSectionsRelatedStatusEnum;
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
        case r'nearby':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelatedObject),
                    ]),
                  )
                  as BuiltList<RelatedObject>?;
          if (valueDes == null) continue;
          result.nearby.replace(valueDes);
          break;
        case r'operational':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelatedObject),
                    ]),
                  )
                  as BuiltList<RelatedObject>?;
          if (valueDes == null) continue;
          result.operational.replace(valueDes);
          break;
        case r'infrastructure':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelatedObject),
                    ]),
                  )
                  as BuiltList<RelatedObject>?;
          if (valueDes == null) continue;
          result.infrastructure.replace(valueDes);
          break;
        case r'historical':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelatedObject),
                    ]),
                  )
                  as BuiltList<RelatedObject>?;
          if (valueDes == null) continue;
          result.historical.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsRelated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsRelatedBuilder();
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

class DossierSectionsRelatedStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsRelatedStatusEnum ok =
      _$dossierSectionsRelatedStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsRelatedStatusEnum empty =
      _$dossierSectionsRelatedStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsRelatedStatusEnum unavailable =
      _$dossierSectionsRelatedStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsRelatedStatusEnum notInstalled =
      _$dossierSectionsRelatedStatusEnum_notInstalled;

  static Serializer<DossierSectionsRelatedStatusEnum> get serializer =>
      _$dossierSectionsRelatedStatusEnumSerializer;

  const DossierSectionsRelatedStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsRelatedStatusEnum> get values =>
      _$dossierSectionsRelatedStatusEnumValues;
  static DossierSectionsRelatedStatusEnum valueOf(String name) =>
      _$dossierSectionsRelatedStatusEnumValueOf(name);
}
