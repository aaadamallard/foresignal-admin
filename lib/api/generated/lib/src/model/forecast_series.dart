//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/weather_section_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/forecast_series_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_series.g.dart';

/// Cached forecast series for a place (GFS/HRRR/IFS 052/105; AIFS 106; NWS hourly 72 h, 053)
///
/// Properties:
/// * [provider]
/// * [run] - Model run (gfs, hrrr)
/// * [updatedAt]
/// * [validFrom]
/// * [status]
/// * [items]
@BuiltValue()
abstract class ForecastSeries
    implements Built<ForecastSeries, ForecastSeriesBuilder> {
  @BuiltValueField(wireName: r'provider')
  ForecastSeriesProviderEnum get provider;
  // enum providerEnum {  gfs,  hrrr,  ifs,  aifs,  nws,  };

  /// Model run (gfs, hrrr)
  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'validFrom')
  DateTime? get validFrom;

  @BuiltValueField(wireName: r'status')
  WeatherSectionStatus? get status;
  // enum statusEnum {  ok,  stale,  no-coverage,  unavailable,  };

  @BuiltValueField(wireName: r'items')
  BuiltList<ForecastSeriesPoint> get items;

  ForecastSeries._();

  factory ForecastSeries([void updates(ForecastSeriesBuilder b)]) =
      _$ForecastSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastSeries> get serializer =>
      _$ForecastSeriesSerializer();
}

class _$ForecastSeriesSerializer
    implements PrimitiveSerializer<ForecastSeries> {
  @override
  final Iterable<Type> types = const [ForecastSeries, _$ForecastSeries];

  @override
  final String wireName = r'ForecastSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(ForecastSeriesProviderEnum),
    );
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.validFrom != null) {
      yield r'validFrom';
      yield serializers.serialize(
        object.validFrom,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(WeatherSectionStatus),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ForecastSeriesPoint)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastSeries object, {
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
    required ForecastSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ForecastSeriesProviderEnum),
                  )
                  as ForecastSeriesProviderEnum;
          result.provider = valueDes;
          break;
        case r'run':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'validFrom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.validFrom = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      WeatherSectionStatus,
                    ),
                  )
                  as WeatherSectionStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ForecastSeriesPoint),
                    ]),
                  )
                  as BuiltList<ForecastSeriesPoint>;
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
  ForecastSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastSeriesBuilder();
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

class ForecastSeriesProviderEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'gfs')
  static const ForecastSeriesProviderEnum gfs =
      _$forecastSeriesProviderEnum_gfs;
  @BuiltValueEnumConst(wireName: r'hrrr')
  static const ForecastSeriesProviderEnum hrrr =
      _$forecastSeriesProviderEnum_hrrr;
  @BuiltValueEnumConst(wireName: r'ifs')
  static const ForecastSeriesProviderEnum ifs =
      _$forecastSeriesProviderEnum_ifs;
  @BuiltValueEnumConst(wireName: r'aifs')
  static const ForecastSeriesProviderEnum aifs =
      _$forecastSeriesProviderEnum_aifs;
  @BuiltValueEnumConst(wireName: r'nws')
  static const ForecastSeriesProviderEnum nws =
      _$forecastSeriesProviderEnum_nws;

  static Serializer<ForecastSeriesProviderEnum> get serializer =>
      _$forecastSeriesProviderEnumSerializer;

  const ForecastSeriesProviderEnum._(String name) : super(name);

  static BuiltSet<ForecastSeriesProviderEnum> get values =>
      _$forecastSeriesProviderEnumValues;
  static ForecastSeriesProviderEnum valueOf(String name) =>
      _$forecastSeriesProviderEnumValueOf(name);
}
