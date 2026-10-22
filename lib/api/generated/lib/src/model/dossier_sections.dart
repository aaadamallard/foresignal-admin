//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/dossier_sections_forecast.dart';
import 'package:foresignal_api/src/model/dossier_sections_timeline.dart';
import 'package:foresignal_api/src/model/dossier_sections_imagery.dart';
import 'package:foresignal_api/src/model/dossier_sections_analysis.dart';
import 'package:foresignal_api/src/model/dossier_sections_overview.dart';
import 'package:foresignal_api/src/model/dossier_sections_impacts.dart';
import 'package:foresignal_api/src/model/dossier_sections_related.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dossier_sections.g.dart';

/// Requested sections; each renders independently by `status`
///
/// Properties:
/// * [overview]
/// * [imagery]
/// * [forecast]
/// * [impacts]
/// * [related]
/// * [timeline]
/// * [analysis]
@BuiltValue()
abstract class DossierSections
    implements Built<DossierSections, DossierSectionsBuilder> {
  @BuiltValueField(wireName: r'overview')
  DossierSectionsOverview? get overview;

  @BuiltValueField(wireName: r'imagery')
  DossierSectionsImagery? get imagery;

  @BuiltValueField(wireName: r'forecast')
  DossierSectionsForecast? get forecast;

  @BuiltValueField(wireName: r'impacts')
  DossierSectionsImpacts? get impacts;

  @BuiltValueField(wireName: r'related')
  DossierSectionsRelated? get related;

  @BuiltValueField(wireName: r'timeline')
  DossierSectionsTimeline? get timeline;

  @BuiltValueField(wireName: r'analysis')
  DossierSectionsAnalysis? get analysis;

  DossierSections._();

  factory DossierSections([void updates(DossierSectionsBuilder b)]) =
      _$DossierSections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DossierSectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DossierSections> get serializer =>
      _$DossierSectionsSerializer();
}

class _$DossierSectionsSerializer
    implements PrimitiveSerializer<DossierSections> {
  @override
  final Iterable<Type> types = const [DossierSections, _$DossierSections];

  @override
  final String wireName = r'DossierSections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DossierSections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.overview != null) {
      yield r'overview';
      yield serializers.serialize(
        object.overview,
        specifiedType: const FullType(DossierSectionsOverview),
      );
    }
    if (object.imagery != null) {
      yield r'imagery';
      yield serializers.serialize(
        object.imagery,
        specifiedType: const FullType(DossierSectionsImagery),
      );
    }
    if (object.forecast != null) {
      yield r'forecast';
      yield serializers.serialize(
        object.forecast,
        specifiedType: const FullType(DossierSectionsForecast),
      );
    }
    if (object.impacts != null) {
      yield r'impacts';
      yield serializers.serialize(
        object.impacts,
        specifiedType: const FullType(DossierSectionsImpacts),
      );
    }
    if (object.related != null) {
      yield r'related';
      yield serializers.serialize(
        object.related,
        specifiedType: const FullType(DossierSectionsRelated),
      );
    }
    if (object.timeline != null) {
      yield r'timeline';
      yield serializers.serialize(
        object.timeline,
        specifiedType: const FullType(DossierSectionsTimeline),
      );
    }
    if (object.analysis != null) {
      yield r'analysis';
      yield serializers.serialize(
        object.analysis,
        specifiedType: const FullType(DossierSectionsAnalysis),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DossierSections object, {
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
    required DossierSectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'overview':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsOverview,
                    ),
                  )
                  as DossierSectionsOverview?;
          if (valueDes == null) continue;
          result.overview.replace(valueDes);
          break;
        case r'imagery':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsImagery,
                    ),
                  )
                  as DossierSectionsImagery?;
          if (valueDes == null) continue;
          result.imagery.replace(valueDes);
          break;
        case r'forecast':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsForecast,
                    ),
                  )
                  as DossierSectionsForecast?;
          if (valueDes == null) continue;
          result.forecast.replace(valueDes);
          break;
        case r'impacts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsImpacts,
                    ),
                  )
                  as DossierSectionsImpacts?;
          if (valueDes == null) continue;
          result.impacts.replace(valueDes);
          break;
        case r'related':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsRelated,
                    ),
                  )
                  as DossierSectionsRelated?;
          if (valueDes == null) continue;
          result.related.replace(valueDes);
          break;
        case r'timeline':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsTimeline,
                    ),
                  )
                  as DossierSectionsTimeline?;
          if (valueDes == null) continue;
          result.timeline.replace(valueDes);
          break;
        case r'analysis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DossierSectionsAnalysis,
                    ),
                  )
                  as DossierSectionsAnalysis?;
          if (valueDes == null) continue;
          result.analysis.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DossierSections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DossierSectionsBuilder();
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
