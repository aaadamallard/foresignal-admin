//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_analysis.g.dart';

/// Analytic objects that reference this object
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [findings]
/// * [hypothesisSets]
/// * [assessments]
@BuiltValue()
abstract class DossierSectionsAnalysis
    implements Built<DossierSectionsAnalysis, DossierSectionsAnalysisBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsAnalysisStatusEnum get status;
  // enum statusEnum {  ok,  empty,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'links')
  DossierSectionsOverviewLinks? get links;

  @BuiltValueField(wireName: r'facets')
  DossierSectionsOverviewFacets? get facets;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'findings')
  BuiltList<ObjectEnvelope>? get findings;

  @BuiltValueField(wireName: r'hypothesisSets')
  BuiltList<ObjectEnvelope>? get hypothesisSets;

  @BuiltValueField(wireName: r'assessments')
  BuiltList<ObjectEnvelope>? get assessments;

  DossierSectionsAnalysis._();

  factory DossierSectionsAnalysis([
    void updates(DossierSectionsAnalysisBuilder b),
  ]) = _$DossierSectionsAnalysis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsAnalysisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsAnalysis> get serializer =>
      _$DossierSectionsAnalysisSerializer();
}

class _$DossierSectionsAnalysisSerializer
    implements PrimitiveSerializer<DossierSectionsAnalysis> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsAnalysis,
    _$DossierSectionsAnalysis,
  ];

  @override
  final String wireName = r'DossierSectionsAnalysis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsAnalysisStatusEnum),
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
    if (object.findings != null) {
      yield r'findings';
      yield serializers.serialize(
        object.findings,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    if (object.hypothesisSets != null) {
      yield r'hypothesisSets';
      yield serializers.serialize(
        object.hypothesisSets,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
    if (object.assessments != null) {
      yield r'assessments';
      yield serializers.serialize(
        object.assessments,
        specifiedType: const FullType(BuiltList, [FullType(ObjectEnvelope)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsAnalysis object, {
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
    required DossierSectionsAnalysisBuilder result,
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
                      DossierSectionsAnalysisStatusEnum,
                    ),
                  )
                  as DossierSectionsAnalysisStatusEnum;
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
        case r'findings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.findings.replace(valueDes);
          break;
        case r'hypothesisSets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.hypothesisSets.replace(valueDes);
          break;
        case r'assessments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ObjectEnvelope),
                    ]),
                  )
                  as BuiltList<ObjectEnvelope>?;
          if (valueDes == null) continue;
          result.assessments.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsAnalysis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsAnalysisBuilder();
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

class DossierSectionsAnalysisStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsAnalysisStatusEnum ok =
      _$dossierSectionsAnalysisStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsAnalysisStatusEnum empty =
      _$dossierSectionsAnalysisStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsAnalysisStatusEnum unavailable =
      _$dossierSectionsAnalysisStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsAnalysisStatusEnum notInstalled =
      _$dossierSectionsAnalysisStatusEnum_notInstalled;

  static Serializer<DossierSectionsAnalysisStatusEnum> get serializer =>
      _$dossierSectionsAnalysisStatusEnumSerializer;

  const DossierSectionsAnalysisStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsAnalysisStatusEnum> get values =>
      _$dossierSectionsAnalysisStatusEnumValues;
  static DossierSectionsAnalysisStatusEnum valueOf(String name) =>
      _$dossierSectionsAnalysisStatusEnumValueOf(name);
}
