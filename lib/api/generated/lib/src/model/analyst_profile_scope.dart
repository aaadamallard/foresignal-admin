//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_profile_scope.g.dart';

/// Inputs the analyst looks at
///
/// Properties:
/// * [sources]
/// * [kinds]
/// * [places]
/// * [bbox]
/// * [eventTypes]
/// * [ruleTags]
/// * [minSeverity]
@BuiltValue()
abstract class AnalystProfileScope
    implements Built<AnalystProfileScope, AnalystProfileScopeBuilder> {
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'kinds')
  BuiltList<String>? get kinds;

  @BuiltValueField(wireName: r'places')
  BuiltList<String>? get places;

  @BuiltValueField(wireName: r'bbox')
  BuiltList<num>? get bbox;

  @BuiltValueField(wireName: r'eventTypes')
  BuiltList<AnalystProfileScopeEventTypesEnum>? get eventTypes;
  // enum eventTypesEnum {  maritime-disruption,  aviation-anomaly,  infrastructure-disruption,  weather-impact,  seismic,  custom,  };

  @BuiltValueField(wireName: r'ruleTags')
  BuiltList<String>? get ruleTags;

  @BuiltValueField(wireName: r'minSeverity')
  Severity? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  AnalystProfileScope._();

  factory AnalystProfileScope([void updates(AnalystProfileScopeBuilder b)]) =
      _$AnalystProfileScope;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProfileScopeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProfileScope> get serializer =>
      _$AnalystProfileScopeSerializer();
}

class _$AnalystProfileScopeSerializer
    implements PrimitiveSerializer<AnalystProfileScope> {
  @override
  final Iterable<Type> types = const [
    AnalystProfileScope,
    _$AnalystProfileScope,
  ];

  @override
  final String wireName = r'AnalystProfileScope';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProfileScope object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.places != null) {
      yield r'places';
      yield serializers.serialize(
        object.places,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bbox != null) {
      yield r'bbox';
      yield serializers.serialize(
        object.bbox,
        specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
      );
    }
    if (object.eventTypes != null) {
      yield r'eventTypes';
      yield serializers.serialize(
        object.eventTypes,
        specifiedType: const FullType(BuiltList, [
          FullType(AnalystProfileScopeEventTypesEnum),
        ]),
      );
    }
    if (object.ruleTags != null) {
      yield r'ruleTags';
      yield serializers.serialize(
        object.ruleTags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(Severity),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProfileScope object, {
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
    required AnalystProfileScopeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'places':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.places.replace(valueDes);
          break;
        case r'bbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bbox.replace(valueDes);
          break;
        case r'eventTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AnalystProfileScopeEventTypesEnum),
                    ]),
                  )
                  as BuiltList<AnalystProfileScopeEventTypesEnum>?;
          if (valueDes == null) continue;
          result.eventTypes.replace(valueDes);
          break;
        case r'ruleTags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleTags.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProfileScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProfileScopeBuilder();
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

class AnalystProfileScopeEventTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime-disruption')
  static const AnalystProfileScopeEventTypesEnum maritimeDisruption =
      _$analystProfileScopeEventTypesEnum_maritimeDisruption;
  @BuiltValueEnumConst(wireName: r'aviation-anomaly')
  static const AnalystProfileScopeEventTypesEnum aviationAnomaly =
      _$analystProfileScopeEventTypesEnum_aviationAnomaly;
  @BuiltValueEnumConst(wireName: r'infrastructure-disruption')
  static const AnalystProfileScopeEventTypesEnum infrastructureDisruption =
      _$analystProfileScopeEventTypesEnum_infrastructureDisruption;
  @BuiltValueEnumConst(wireName: r'weather-impact')
  static const AnalystProfileScopeEventTypesEnum weatherImpact =
      _$analystProfileScopeEventTypesEnum_weatherImpact;
  @BuiltValueEnumConst(wireName: r'seismic')
  static const AnalystProfileScopeEventTypesEnum seismic =
      _$analystProfileScopeEventTypesEnum_seismic;
  @BuiltValueEnumConst(wireName: r'custom')
  static const AnalystProfileScopeEventTypesEnum custom =
      _$analystProfileScopeEventTypesEnum_custom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AnalystProfileScopeEventTypesEnum unknownDefaultOpenApi =
      _$analystProfileScopeEventTypesEnum_unknownDefaultOpenApi;

  static Serializer<AnalystProfileScopeEventTypesEnum> get serializer =>
      _$analystProfileScopeEventTypesEnumSerializer;

  const AnalystProfileScopeEventTypesEnum._(String name) : super(name);

  static BuiltSet<AnalystProfileScopeEventTypesEnum> get values =>
      _$analystProfileScopeEventTypesEnumValues;
  static AnalystProfileScopeEventTypesEnum valueOf(String name) =>
      _$analystProfileScopeEventTypesEnumValueOf(name);
}
