//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_overview_facets.g.dart';

/// Evidence counts by class and by source
///
/// Properties:
/// * [byEvidenceClass] - imagery | signals | reports | documents | sensor | social | other
/// * [bySource]
@BuiltValue()
abstract class DossierSectionsOverviewFacets
    implements
        Built<DossierSectionsOverviewFacets,
            DossierSectionsOverviewFacetsBuilder> {
  /// imagery | signals | reports | documents | sensor | social | other
  @BuiltValueField(wireName: r'byEvidenceClass')
  BuiltMap<String, int>? get byEvidenceClass;

  @BuiltValueField(wireName: r'bySource')
  BuiltMap<String, int>? get bySource;

  DossierSectionsOverviewFacets._();

  factory DossierSectionsOverviewFacets(
          [void updates(DossierSectionsOverviewFacetsBuilder b)]) =
      _$DossierSectionsOverviewFacets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsOverviewFacetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsOverviewFacets> get serializer =>
      _$DossierSectionsOverviewFacetsSerializer();
}

class _$DossierSectionsOverviewFacetsSerializer
    implements PrimitiveSerializer<DossierSectionsOverviewFacets> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsOverviewFacets,
    _$DossierSectionsOverviewFacets
  ];

  @override
  final String wireName = r'DossierSectionsOverviewFacets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsOverviewFacets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.byEvidenceClass != null) {
      yield r'byEvidenceClass';
      yield serializers.serialize(
        object.byEvidenceClass,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
    if (object.bySource != null) {
      yield r'bySource';
      yield serializers.serialize(
        object.bySource,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsOverviewFacets object, {
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
    required DossierSectionsOverviewFacetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'byEvidenceClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byEvidenceClass.replace(valueDes);
          break;
        case r'bySource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.bySource.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsOverviewFacets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsOverviewFacetsBuilder();
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
