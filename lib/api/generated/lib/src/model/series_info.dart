//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_info.g.dart';

/// Catalogue entry for one series, from its `series-latest` record (093)
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
@BuiltValue()
abstract class SeriesInfo implements Built<SeriesInfo, SeriesInfoBuilder> {
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
  SeriesInfoFrequencyEnum get frequency;
  // enum frequencyEnum {  PT15S,  PT15M,  PT30M,  PT1H,  P1D,  P1W,  P1M,  P3M,  P1Y,  };

  @BuiltValueField(wireName: r'area')
  String? get area;

  @BuiltValueField(wireName: r'latestPeriod')
  String? get latestPeriod;

  @BuiltValueField(wireName: r'latestValue')
  num? get latestValue;

  @BuiltValueField(wireName: r'status')
  SeriesInfoStatusEnum? get status;
  // enum statusEnum {  final,  preliminary,  estimated,  forecast,  };

  SeriesInfo._();

  factory SeriesInfo([void updates(SeriesInfoBuilder b)]) = _$SeriesInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesInfo> get serializer => _$SeriesInfoSerializer();
}

class _$SeriesInfoSerializer implements PrimitiveSerializer<SeriesInfo> {
  @override
  final Iterable<Type> types = const [SeriesInfo, _$SeriesInfo];

  @override
  final String wireName = r'SeriesInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesInfo object, {
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
      specifiedType: const FullType(SeriesInfoFrequencyEnum),
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
        specifiedType: const FullType.nullable(SeriesInfoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesInfo object, {
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
    required SeriesInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceId = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.series = valueDes;
          break;
        case r'seriesName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.seriesName = valueDes;
          break;
        case r'dataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dataset = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesInfoFrequencyEnum),
          ) as SeriesInfoFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.area = valueDes;
          break;
        case r'latestPeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.latestPeriod = valueDes;
          break;
        case r'latestValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.latestValue = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SeriesInfoStatusEnum),
          ) as SeriesInfoStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesInfoBuilder();
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

class SeriesInfoFrequencyEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PT15S')
  static const SeriesInfoFrequencyEnum PT15S = _$seriesInfoFrequencyEnum_PT15S;
  @BuiltValueEnumConst(wireName: r'PT15M')
  static const SeriesInfoFrequencyEnum PT15M = _$seriesInfoFrequencyEnum_PT15M;
  @BuiltValueEnumConst(wireName: r'PT30M')
  static const SeriesInfoFrequencyEnum PT30M = _$seriesInfoFrequencyEnum_PT30M;
  @BuiltValueEnumConst(wireName: r'PT1H')
  static const SeriesInfoFrequencyEnum PT1H = _$seriesInfoFrequencyEnum_PT1H;
  @BuiltValueEnumConst(wireName: r'P1D')
  static const SeriesInfoFrequencyEnum P1D = _$seriesInfoFrequencyEnum_P1D;
  @BuiltValueEnumConst(wireName: r'P1W')
  static const SeriesInfoFrequencyEnum P1W = _$seriesInfoFrequencyEnum_P1W;
  @BuiltValueEnumConst(wireName: r'P1M')
  static const SeriesInfoFrequencyEnum P1M = _$seriesInfoFrequencyEnum_P1M;
  @BuiltValueEnumConst(wireName: r'P3M')
  static const SeriesInfoFrequencyEnum P3M = _$seriesInfoFrequencyEnum_P3M;
  @BuiltValueEnumConst(wireName: r'P1Y')
  static const SeriesInfoFrequencyEnum P1Y = _$seriesInfoFrequencyEnum_P1Y;

  static Serializer<SeriesInfoFrequencyEnum> get serializer =>
      _$seriesInfoFrequencyEnumSerializer;

  const SeriesInfoFrequencyEnum._(String name) : super(name);

  static BuiltSet<SeriesInfoFrequencyEnum> get values =>
      _$seriesInfoFrequencyEnumValues;
  static SeriesInfoFrequencyEnum valueOf(String name) =>
      _$seriesInfoFrequencyEnumValueOf(name);
}

class SeriesInfoStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'final')
  static const SeriesInfoStatusEnum final_ = _$seriesInfoStatusEnum_final_;
  @BuiltValueEnumConst(wireName: r'preliminary')
  static const SeriesInfoStatusEnum preliminary =
      _$seriesInfoStatusEnum_preliminary;
  @BuiltValueEnumConst(wireName: r'estimated')
  static const SeriesInfoStatusEnum estimated =
      _$seriesInfoStatusEnum_estimated;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const SeriesInfoStatusEnum forecast = _$seriesInfoStatusEnum_forecast;

  static Serializer<SeriesInfoStatusEnum> get serializer =>
      _$seriesInfoStatusEnumSerializer;

  const SeriesInfoStatusEnum._(String name) : super(name);

  static BuiltSet<SeriesInfoStatusEnum> get values =>
      _$seriesInfoStatusEnumValues;
  static SeriesInfoStatusEnum valueOf(String name) =>
      _$seriesInfoStatusEnumValueOf(name);
}
