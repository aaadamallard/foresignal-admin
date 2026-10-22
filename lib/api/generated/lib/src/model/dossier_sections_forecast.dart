//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_facets.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview_links.dart';
import 'package:foresignal_api/src/model/ledger_question_brief.dart';
import 'package:foresignal_api/src/model/dossier_sections_forecast_official_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections_forecast.g.dart';

/// Official forecasts and ledger questions about the object
///
/// Properties:
/// * [status]
/// * [message]
/// * [links]
/// * [facets]
/// * [truncated]
/// * [official]
/// * [questions]
@BuiltValue()
abstract class DossierSectionsForecast
    implements Built<DossierSectionsForecast, DossierSectionsForecastBuilder> {
  @BuiltValueField(wireName: r'status')
  DossierSectionsForecastStatusEnum get status;
  // enum statusEnum {  ok,  empty,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'links')
  DossierSectionsOverviewLinks? get links;

  @BuiltValueField(wireName: r'facets')
  DossierSectionsOverviewFacets? get facets;

  @BuiltValueField(wireName: r'truncated')
  bool? get truncated;

  @BuiltValueField(wireName: r'official')
  BuiltList<DossierSectionsForecastOfficialInner>? get official;

  @BuiltValueField(wireName: r'questions')
  BuiltList<LedgerQuestionBrief>? get questions;

  DossierSectionsForecast._();

  factory DossierSectionsForecast(
          [void updates(DossierSectionsForecastBuilder b)]) =
      _$DossierSectionsForecast;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsForecastBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSectionsForecast> get serializer =>
      _$DossierSectionsForecastSerializer();
}

class _$DossierSectionsForecastSerializer
    implements PrimitiveSerializer<DossierSectionsForecast> {
  @override
  final Iterable<Type> types = const [
    DossierSectionsForecast,
    _$DossierSectionsForecast
  ];

  @override
  final String wireName = r'DossierSectionsForecast';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSectionsForecast object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DossierSectionsForecastStatusEnum),
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
    if (object.official != null) {
      yield r'official';
      yield serializers.serialize(
        object.official,
        specifiedType: const FullType(
            BuiltList, [FullType(DossierSectionsForecastOfficialInner)]),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType:
            const FullType(BuiltList, [FullType(LedgerQuestionBrief)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsForecast object, {
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
    required DossierSectionsForecastBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DossierSectionsForecastStatusEnum),
          ) as DossierSectionsForecastStatusEnum;
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
        case r'official':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(DossierSectionsForecastOfficialInner)]),
          ) as BuiltList<DossierSectionsForecastOfficialInner>?;
          if (valueDes == null) continue;
          result.official.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(LedgerQuestionBrief)]),
          ) as BuiltList<LedgerQuestionBrief>?;
          if (valueDes == null) continue;
          result.questions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSectionsForecast deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsForecastBuilder();
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

class DossierSectionsForecastStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const DossierSectionsForecastStatusEnum ok =
      _$dossierSectionsForecastStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'empty')
  static const DossierSectionsForecastStatusEnum empty =
      _$dossierSectionsForecastStatusEnum_empty;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const DossierSectionsForecastStatusEnum unavailable =
      _$dossierSectionsForecastStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const DossierSectionsForecastStatusEnum notInstalled =
      _$dossierSectionsForecastStatusEnum_notInstalled;

  static Serializer<DossierSectionsForecastStatusEnum> get serializer =>
      _$dossierSectionsForecastStatusEnumSerializer;

  const DossierSectionsForecastStatusEnum._(String name) : super(name);

  static BuiltSet<DossierSectionsForecastStatusEnum> get values =>
      _$dossierSectionsForecastStatusEnumValues;
  static DossierSectionsForecastStatusEnum valueOf(String name) =>
      _$dossierSectionsForecastStatusEnumValueOf(name);
}
