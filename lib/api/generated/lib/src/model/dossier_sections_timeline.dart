//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_timeline_items_inner.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_timeline.g.dart';

/// History newest first (≤ 50)
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [items]
@BuiltValue()
abstract class DossierSectionsTimeline
    implements Built<DossierSectionsTimeline, DossierSectionsTimelineBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsTimelineStatusEnum get status;
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
  BuiltList<DossierSectionsTimelineItemsInner>? get items;

  DossierSectionsTimeline._();

  factory DossierSectionsTimeline(
          [void updates(DossierSectionsTimelineBuilder b)]) =
      _$DossierSectionsTimeline;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsTimelineBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsTimeline> get serializer =>
      _$DossierSectionsTimelineSerializer();
}

class _$DossierSectionsTimelineSerializer
    implements PrimitiveSerializer<DossierSectionsTimeline> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsTimeline,
    _$DossierSectionsTimeline
  ];

  @override
  final String wireName = r'DossierSectionsTimeline';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsTimeline object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsTimelineStatusEnum),
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
        specifiedType: const FullType(
            BuiltList, [FullType(DossierSectionsTimelineItemsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsTimeline object, {
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
    required DossierSectionsTimelineBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DossierSectionsTimelineStatusEnum),
          ) as DossierSectionsTimelineStatusEnum;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(DossierSectionsOverviewLinks),
          ) as DossierSectionsOverviewLinks?;
          if (valueDes == null) continue;
          result.links.replace(valueDes);
          break;
        case r'facets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(DossierSectionsOverviewFacets),
          ) as DossierSectionsOverviewFacets?;
          if (valueDes == null) continue;
          result.facets.replace(valueDes);
          break;
        case r'truncated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.truncated = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DossierSectionsTimelineItemsInner)]),
          ) as BuiltList<DossierSectionsTimelineItemsInner>?;
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
  DossierSectionsTimeline deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsTimelineBuilder();
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

class DossierSectionsTimelineStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsTimelineStatusEnum ok =
      _$dossierSectionsTimelineStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsTimelineStatusEnum empty =
      _$dossierSectionsTimelineStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsTimelineStatusEnum unavailable =
      _$dossierSectionsTimelineStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsTimelineStatusEnum notInstalled =
      _$dossierSectionsTimelineStatusEnum_notInstalled;

  static Serializer<DossierSectionsTimelineStatusEnum> get serializer =>
      _$dossierSectionsTimelineStatusEnumSerializer;

  const DossierSectionsTimelineStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsTimelineStatusEnum> get values =>
      _$dossierSectionsTimelineStatusEnumValues;
  static DossierSectionsTimelineStatusEnum valueOf(String name) =>
      _$dossierSectionsTimelineStatusEnumValueOf(name);
}
