//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_catalog_entry.g.dart';

/// A /v1/series catalogue item: 093's SeriesInfo plus the series metadata event studies need (also carried in the series-latest payload) (117)
///
/// Properties:
/// * [sourceId]
/// * [series]
/// * [seriesName]
/// * [dataset]
/// * [unit] - UCUM unit
/// * [frequency]
/// * [area]
/// * [latestPeriod]
/// * [latestValue]
/// * [status]
/// * [family]
/// * [transform] - Transform hint for analysis
/// * [releaseLagDays] - Typical delay between period and publication; the version's ingest time is its knownAt
/// * [egress] - The egress in force for the source (062; the operator override where the descriptor allows one); LOCAL_ONLY raw values are served only to callers allowed local egress, so such a series is absent from the catalog for other callers
/// * [regionCode] - 040 region code
/// * [topicId] - Attention topic id
/// * [attribution] - The credit line the provider asks for: the FRED notice plus the series' source line for fred-series, the indicator's source organization for worldbank-indicators, else the source's attribution (117)
@BuiltValue()
abstract class SeriesCatalogEntry
    implements Built<SeriesCatalogEntry, SeriesCatalogEntryBuilder> {
  @BuiltValueField(wireName: r'sourceId')
  String get sourceId;

  @BuiltValueField(wireName: r'series')
  String get series;

  @BuiltValueField(wireName: r'seriesName')
  String get seriesName;

  @BuiltValueField(wireName: r'dataset')
  String? get dataset;

  /// UCUM unit
  @BuiltValueField(wireName: r'unit')
  String get unit;

  @BuiltValueField(wireName: r'frequency')
  SeriesCatalogEntryFrequencyEnum get frequency;
  // enum frequencyEnum {  PT15S,  PT15M,  PT30M,  PT1H,  P1D,  P1W,  P1M,  P3M,  P1Y,  };

  @BuiltValueField(wireName: r'area')
  String? get area;

  @BuiltValueField(wireName: r'latestPeriod')
  String? get latestPeriod;

  @BuiltValueField(wireName: r'latestValue')
  num? get latestValue;

  @BuiltValueField(wireName: r'status')
  SeriesCatalogEntryStatusEnum? get status;
  // enum statusEnum {  final,  preliminary,  estimated,  forecast,  };

  @BuiltValueField(wireName: r'family')
  SeriesCatalogEntryFamilyEnum get family;
  // enum familyEnum {  price,  volume,  open-interest,  position,  rate,  attention,  tone,  count,  index,  structural,  };

  /// Transform hint for analysis
  @BuiltValueField(wireName: r'transform')
  SeriesCatalogEntryTransformEnum get transform;
  // enum transformEnum {  log-return,  log-level,  difference,  level,  };

  /// Typical delay between period and publication; the version's ingest time is its knownAt
  @BuiltValueField(wireName: r'releaseLagDays')
  num get releaseLagDays;

  /// The egress in force for the source (062; the operator override where the descriptor allows one); LOCAL_ONLY raw values are served only to callers allowed local egress, so such a series is absent from the catalog for other callers
  @BuiltValueField(wireName: r'egress')
  SeriesCatalogEntryEgressEnum get egress;
  // enum egressEnum {  OPEN,  LOCAL_ONLY,  };

  /// 040 region code
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  /// Attention topic id
  @BuiltValueField(wireName: r'topicId')
  String? get topicId;

  /// The credit line the provider asks for: the FRED notice plus the series' source line for fred-series, the indicator's source organization for worldbank-indicators, else the source's attribution (117)
  @BuiltValueField(wireName: r'attribution')
  String? get attribution;

  SeriesCatalogEntry._();

  factory SeriesCatalogEntry([void updates(SeriesCatalogEntryBuilder b)]) =
      _$SeriesCatalogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesCatalogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesCatalogEntry> get serializer =>
      _$SeriesCatalogEntrySerializer();
}

class _$SeriesCatalogEntrySerializer
    implements PrimitiveSerializer<SeriesCatalogEntry> {
  @override
  final Iterable<Type> types = const [SeriesCatalogEntry, _$SeriesCatalogEntry];

  @override
  final String wireName = r'SeriesCatalogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesCatalogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceId';
    yield serializers.serialize(
      object.sourceId,
      specifiedType: const FullType(String),
    );
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType: const FullType(String),
    );
    yield r'seriesName';
    yield serializers.serialize(
      object.seriesName,
      specifiedType: const FullType(String),
    );
    if (object.dataset != null) {
      yield r'dataset';
      yield serializers.serialize(
        object.dataset,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(String),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(SeriesCatalogEntryFrequencyEnum),
    );
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latestPeriod != null) {
      yield r'latestPeriod';
      yield serializers.serialize(
        object.latestPeriod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latestValue != null) {
      yield r'latestValue';
      yield serializers.serialize(
        object.latestValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(SeriesCatalogEntryStatusEnum),
      );
    }
    yield r'family';
    yield serializers.serialize(
      object.family,
      specifiedType: const FullType(SeriesCatalogEntryFamilyEnum),
    );
    yield r'transform';
    yield serializers.serialize(
      object.transform,
      specifiedType: const FullType(SeriesCatalogEntryTransformEnum),
    );
    yield r'releaseLagDays';
    yield serializers.serialize(
      object.releaseLagDays,
      specifiedType: const FullType(num),
    );
    yield r'egress';
    yield serializers.serialize(
      object.egress,
      specifiedType: const FullType(SeriesCatalogEntryEgressEnum),
    );
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.topicId != null) {
      yield r'topicId';
      yield serializers.serialize(
        object.topicId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesCatalogEntry object, {
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
    required SeriesCatalogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sourceId = valueDes;
          break;
        case r'series':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.series = valueDes;
          break;
        case r'seriesName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.seriesName = valueDes;
          break;
        case r'dataset':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dataset = valueDes;
          break;
        case r'unit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.unit = valueDes;
          break;
        case r'frequency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SeriesCatalogEntryFrequencyEnum,
                    ),
                  )
                  as SeriesCatalogEntryFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.area = valueDes;
          break;
        case r'latestPeriod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestPeriod = valueDes;
          break;
        case r'latestValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.latestValue = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SeriesCatalogEntryStatusEnum,
                    ),
                  )
                  as SeriesCatalogEntryStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'family':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesCatalogEntryFamilyEnum),
                  )
                  as SeriesCatalogEntryFamilyEnum;
          result.family = valueDes;
          break;
        case r'transform':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SeriesCatalogEntryTransformEnum,
                    ),
                  )
                  as SeriesCatalogEntryTransformEnum;
          result.transform = valueDes;
          break;
        case r'releaseLagDays':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.releaseLagDays = valueDes;
          break;
        case r'egress':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesCatalogEntryEgressEnum),
                  )
                  as SeriesCatalogEntryEgressEnum;
          result.egress = valueDes;
          break;
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.regionCode = valueDes;
          break;
        case r'topicId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.topicId = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.attribution = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesCatalogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesCatalogEntryBuilder();
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

class SeriesCatalogEntryFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PT15S')
  static const SeriesCatalogEntryFrequencyEnum PT15S =
      _$seriesCatalogEntryFrequencyEnum_PT15S;
  @BuiltValueEnumConst(wireName: r'PT15M')
  static const SeriesCatalogEntryFrequencyEnum PT15M =
      _$seriesCatalogEntryFrequencyEnum_PT15M;
  @BuiltValueEnumConst(wireName: r'PT30M')
  static const SeriesCatalogEntryFrequencyEnum PT30M =
      _$seriesCatalogEntryFrequencyEnum_PT30M;
  @BuiltValueEnumConst(wireName: r'PT1H')
  static const SeriesCatalogEntryFrequencyEnum PT1H =
      _$seriesCatalogEntryFrequencyEnum_PT1H;
  @BuiltValueEnumConst(wireName: r'P1D')
  static const SeriesCatalogEntryFrequencyEnum P1D =
      _$seriesCatalogEntryFrequencyEnum_P1D;
  @BuiltValueEnumConst(wireName: r'P1W')
  static const SeriesCatalogEntryFrequencyEnum P1W =
      _$seriesCatalogEntryFrequencyEnum_P1W;
  @BuiltValueEnumConst(wireName: r'P1M')
  static const SeriesCatalogEntryFrequencyEnum P1M =
      _$seriesCatalogEntryFrequencyEnum_P1M;
  @BuiltValueEnumConst(wireName: r'P3M')
  static const SeriesCatalogEntryFrequencyEnum P3M =
      _$seriesCatalogEntryFrequencyEnum_P3M;
  @BuiltValueEnumConst(wireName: r'P1Y')
  static const SeriesCatalogEntryFrequencyEnum P1Y =
      _$seriesCatalogEntryFrequencyEnum_P1Y;

  static Serializer<SeriesCatalogEntryFrequencyEnum> get serializer =>
      _$seriesCatalogEntryFrequencyEnumSerializer;

  const SeriesCatalogEntryFrequencyEnum._(String name) : super(name);

  static BuiltSet<SeriesCatalogEntryFrequencyEnum> get values =>
      _$seriesCatalogEntryFrequencyEnumValues;
  static SeriesCatalogEntryFrequencyEnum valueOf(String name) =>
      _$seriesCatalogEntryFrequencyEnumValueOf(name);
}

class SeriesCatalogEntryStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'final')
  static const SeriesCatalogEntryStatusEnum final_ =
      _$seriesCatalogEntryStatusEnum_final_;
  @BuiltValueEnumConst(wireName: r'preliminary')
  static const SeriesCatalogEntryStatusEnum preliminary =
      _$seriesCatalogEntryStatusEnum_preliminary;
  @BuiltValueEnumConst(wireName: r'estimated')
  static const SeriesCatalogEntryStatusEnum estimated =
      _$seriesCatalogEntryStatusEnum_estimated;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const SeriesCatalogEntryStatusEnum forecast =
      _$seriesCatalogEntryStatusEnum_forecast;

  static Serializer<SeriesCatalogEntryStatusEnum> get serializer =>
      _$seriesCatalogEntryStatusEnumSerializer;

  const SeriesCatalogEntryStatusEnum._(String name) : super(name);

  static BuiltSet<SeriesCatalogEntryStatusEnum> get values =>
      _$seriesCatalogEntryStatusEnumValues;
  static SeriesCatalogEntryStatusEnum valueOf(String name) =>
      _$seriesCatalogEntryStatusEnumValueOf(name);
}

class SeriesCatalogEntryFamilyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'price')
  static const SeriesCatalogEntryFamilyEnum price =
      _$seriesCatalogEntryFamilyEnum_price;
  @BuiltValueEnumConst(wireName: r'volume')
  static const SeriesCatalogEntryFamilyEnum volume =
      _$seriesCatalogEntryFamilyEnum_volume;
  @BuiltValueEnumConst(wireName: r'open-interest')
  static const SeriesCatalogEntryFamilyEnum openInterest =
      _$seriesCatalogEntryFamilyEnum_openInterest;
  @BuiltValueEnumConst(wireName: r'position')
  static const SeriesCatalogEntryFamilyEnum position =
      _$seriesCatalogEntryFamilyEnum_position;
  @BuiltValueEnumConst(wireName: r'rate')
  static const SeriesCatalogEntryFamilyEnum rate =
      _$seriesCatalogEntryFamilyEnum_rate;
  @BuiltValueEnumConst(wireName: r'attention')
  static const SeriesCatalogEntryFamilyEnum attention =
      _$seriesCatalogEntryFamilyEnum_attention;
  @BuiltValueEnumConst(wireName: r'tone')
  static const SeriesCatalogEntryFamilyEnum tone =
      _$seriesCatalogEntryFamilyEnum_tone;
  @BuiltValueEnumConst(wireName: r'count')
  static const SeriesCatalogEntryFamilyEnum count =
      _$seriesCatalogEntryFamilyEnum_count;
  @BuiltValueEnumConst(wireName: r'index')
  static const SeriesCatalogEntryFamilyEnum index =
      _$seriesCatalogEntryFamilyEnum_index;
  @BuiltValueEnumConst(wireName: r'structural')
  static const SeriesCatalogEntryFamilyEnum structural =
      _$seriesCatalogEntryFamilyEnum_structural;

  static Serializer<SeriesCatalogEntryFamilyEnum> get serializer =>
      _$seriesCatalogEntryFamilyEnumSerializer;

  const SeriesCatalogEntryFamilyEnum._(String name) : super(name);

  static BuiltSet<SeriesCatalogEntryFamilyEnum> get values =>
      _$seriesCatalogEntryFamilyEnumValues;
  static SeriesCatalogEntryFamilyEnum valueOf(String name) =>
      _$seriesCatalogEntryFamilyEnumValueOf(name);
}

/// Transform hint for analysis
class SeriesCatalogEntryTransformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'log-return')
  static const SeriesCatalogEntryTransformEnum logReturn =
      _$seriesCatalogEntryTransformEnum_logReturn;
  @BuiltValueEnumConst(wireName: r'log-level')
  static const SeriesCatalogEntryTransformEnum logLevel =
      _$seriesCatalogEntryTransformEnum_logLevel;
  @BuiltValueEnumConst(wireName: r'difference')
  static const SeriesCatalogEntryTransformEnum difference =
      _$seriesCatalogEntryTransformEnum_difference;
  @BuiltValueEnumConst(wireName: r'level')
  static const SeriesCatalogEntryTransformEnum level =
      _$seriesCatalogEntryTransformEnum_level;

  static Serializer<SeriesCatalogEntryTransformEnum> get serializer =>
      _$seriesCatalogEntryTransformEnumSerializer;

  const SeriesCatalogEntryTransformEnum._(String name) : super(name);

  static BuiltSet<SeriesCatalogEntryTransformEnum> get values =>
      _$seriesCatalogEntryTransformEnumValues;
  static SeriesCatalogEntryTransformEnum valueOf(String name) =>
      _$seriesCatalogEntryTransformEnumValueOf(name);
}

/// The egress in force for the source (062; the operator override where the descriptor allows one); LOCAL_ONLY raw values are served only to callers allowed local egress, so such a series is absent from the catalog for other callers
class SeriesCatalogEntryEgressEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN')
  static const SeriesCatalogEntryEgressEnum OPEN =
      _$seriesCatalogEntryEgressEnum_OPEN;
  @BuiltValueEnumConst(wireName: r'LOCAL_ONLY')
  static const SeriesCatalogEntryEgressEnum LOCAL_ONLY =
      _$seriesCatalogEntryEgressEnum_LOCAL_ONLY;

  static Serializer<SeriesCatalogEntryEgressEnum> get serializer =>
      _$seriesCatalogEntryEgressEnumSerializer;

  const SeriesCatalogEntryEgressEnum._(String name) : super(name);

  static BuiltSet<SeriesCatalogEntryEgressEnum> get values =>
      _$seriesCatalogEntryEgressEnumValues;
  static SeriesCatalogEntryEgressEnum valueOf(String name) =>
      _$seriesCatalogEntryEgressEnumValueOf(name);
}
