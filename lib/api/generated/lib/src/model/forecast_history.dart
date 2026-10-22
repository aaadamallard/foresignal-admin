//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/date.dart';
import 'package:foresignal_api/src/model/forecast_history_series_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_history.g.dart';

/// Standing forecast per day for each forecaster and the ensemble, derived from immutable forecasts
///
/// Properties:
/// * [questionId] - ULID identifier
/// * [type]
/// * [step]
/// * [from]
/// * [to]
/// * [series]
@BuiltValue()
abstract class ForecastHistory
    implements Built<ForecastHistory, ForecastHistoryBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'questionId')
  String get questionId;

  @BuiltValueField(wireName: r'type')
  ForecastHistoryTypeEnum get type;
  // enum typeEnum {  binary,  multiple,  ordered,  numeric,  };

  @BuiltValueField(wireName: r'step')
  ForecastHistoryStepEnum get step;
  // enum stepEnum {  P1D,  };

  @BuiltValueField(wireName: r'from')
  Date? get from;

  @BuiltValueField(wireName: r'to')
  Date? get to;

  @BuiltValueField(wireName: r'series')
  BuiltList<ForecastHistorySeriesInner> get series;

  ForecastHistory._();

  factory ForecastHistory([void updates(ForecastHistoryBuilder b)]) =
      _$ForecastHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastHistory> get serializer =>
      _$ForecastHistorySerializer();
}

class _$ForecastHistorySerializer
    implements PrimitiveSerializer<ForecastHistory> {
  @override
  final Iterable<Type> types = const [ForecastHistory, _$ForecastHistory];

  @override
  final String wireName = r'ForecastHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'questionId';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ForecastHistoryTypeEnum),
    );
    yield r'step';
    yield serializers.serialize(
      object.step,
      specifiedType: const FullType(ForecastHistoryStepEnum),
    );
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(Date),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(Date),
      );
    }
    yield r'series';
    yield serializers.serialize(
      object.series,
      specifiedType:
          const FullType(BuiltList, [FullType(ForecastHistorySeriesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastHistory object, {
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
    required ForecastHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'questionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForecastHistoryTypeEnum),
          ) as ForecastHistoryTypeEnum;
          result.type = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ForecastHistoryStepEnum),
          ) as ForecastHistoryStepEnum;
          result.step = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ForecastHistorySeriesInner)]),
          ) as BuiltList<ForecastHistorySeriesInner>;
          result.series.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastHistoryBuilder();
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

class ForecastHistoryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'binary')
  static const ForecastHistoryTypeEnum binary =
      _$forecastHistoryTypeEnum_binary;
  @BuiltValueEnumConst(wireName: r'multiple')
  static const ForecastHistoryTypeEnum multiple =
      _$forecastHistoryTypeEnum_multiple;
  @BuiltValueEnumConst(wireName: r'ordered')
  static const ForecastHistoryTypeEnum ordered =
      _$forecastHistoryTypeEnum_ordered;
  @BuiltValueEnumConst(wireName: r'numeric')
  static const ForecastHistoryTypeEnum numeric =
      _$forecastHistoryTypeEnum_numeric;

  static Serializer<ForecastHistoryTypeEnum> get serializer =>
      _$forecastHistoryTypeEnumSerializer;

  const ForecastHistoryTypeEnum._(String name) : super(name);

  static BuiltSet<ForecastHistoryTypeEnum> get values =>
      _$forecastHistoryTypeEnumValues;
  static ForecastHistoryTypeEnum valueOf(String name) =>
      _$forecastHistoryTypeEnumValueOf(name);
}

class ForecastHistoryStepEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'P1D')
  static const ForecastHistoryStepEnum P1D = _$forecastHistoryStepEnum_P1D;

  static Serializer<ForecastHistoryStepEnum> get serializer =>
      _$forecastHistoryStepEnumSerializer;

  const ForecastHistoryStepEnum._(String name) : super(name);

  static BuiltSet<ForecastHistoryStepEnum> get values =>
      _$forecastHistoryStepEnumValues;
  static ForecastHistoryStepEnum valueOf(String name) =>
      _$forecastHistoryStepEnumValueOf(name);
}
