//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_overview.g.dart';

/// Type-specific key fields
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [fields]
@BuiltValue()
abstract class DossierSectionsOverview
    implements Built<DossierSectionsOverview, DossierSectionsOverviewBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsOverviewStatusEnum get status;
  // enum statusEnum {  ok,  empty,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'links')
  DossierSectionsOverviewLinks? get links;

  @BuiltValueField(wireName: r'facets')
  DossierSectionsOverviewFacets? get facets;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'fields')
  BuiltMap<String, JsonObject?>? get fields;

  DossierSectionsOverview._();

  factory DossierSectionsOverview([
    void updates(DossierSectionsOverviewBuilder b),
  ]) = _$DossierSectionsOverview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsOverviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsOverview> get serializer =>
      _$DossierSectionsOverviewSerializer();
}

class _$DossierSectionsOverviewSerializer
    implements PrimitiveSerializer<DossierSectionsOverview> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsOverview,
    _$DossierSectionsOverview,
  ];

  @override
  final String wireName = r'DossierSectionsOverview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsOverview object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsOverviewStatusEnum),
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
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsOverview object, {
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
    required DossierSectionsOverviewBuilder result,
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
                      DossierSectionsOverviewStatusEnum,
                    ),
                  )
                  as DossierSectionsOverviewStatusEnum;
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
        case r'fields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsOverview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsOverviewBuilder();
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

class DossierSectionsOverviewStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsOverviewStatusEnum ok =
      _$dossierSectionsOverviewStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsOverviewStatusEnum empty =
      _$dossierSectionsOverviewStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsOverviewStatusEnum unavailable =
      _$dossierSectionsOverviewStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsOverviewStatusEnum notInstalled =
      _$dossierSectionsOverviewStatusEnum_notInstalled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DossierSectionsOverviewStatusEnum unknownDefaultOpenApi =
      _$dossierSectionsOverviewStatusEnum_unknownDefaultOpenApi;

  static Serializer<DossierSectionsOverviewStatusEnum> get serializer =>
      _$dossierSectionsOverviewStatusEnumSerializer;

  const DossierSectionsOverviewStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsOverviewStatusEnum> get values =>
      _$dossierSectionsOverviewStatusEnumValues;
  static DossierSectionsOverviewStatusEnum valueOf(String name) =>
      _$dossierSectionsOverviewStatusEnumValueOf(name);
}
