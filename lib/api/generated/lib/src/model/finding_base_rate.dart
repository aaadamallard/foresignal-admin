//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finding_base_rate.g.dart';

/// How often a finding this strong happens by chance, and how that was measured
///
/// Properties:
/// * [value]
/// * [unit] - e.g. `alarms-per-year`, `placebo-share`, `expected-joint-days-per-year`
/// * [method]
/// * [n] - Sample size behind the rate
/// * [period]
/// * [text] - Plain-language statement, e.g. `a change this large was flagged once in the previous 700 days`
@BuiltValue()
abstract class FindingBaseRate
    implements Built<FindingBaseRate, FindingBaseRateBuilder> {
  @BuiltValueField(wireName: r'value')
  num? get value;

  /// e.g. `alarms-per-year`, `placebo-share`, `expected-joint-days-per-year`
  @BuiltValueField(wireName: r'unit')
  String get unit;

  @BuiltValueField(wireName: r'method')
  FindingBaseRateMethodEnum get method;
  // enum methodEnum {  detector-false-alarm-rate,  placebo-distribution,  independence-baseline,  precursor-base-rate,  other,  };

  /// Sample size behind the rate
  @BuiltValueField(wireName: r'n')
  int? get n;

  @BuiltValueField(wireName: r'period')
  TimeRange? get period;

  /// Plain-language statement, e.g. `a change this large was flagged once in the previous 700 days`
  @BuiltValueField(wireName: r'text')
  String get text;

  FindingBaseRate._();

  factory FindingBaseRate([void updates(FindingBaseRateBuilder b)]) =
      _$FindingBaseRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FindingBaseRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FindingBaseRate> get serializer =>
      _$FindingBaseRateSerializer();
}

class _$FindingBaseRateSerializer
    implements PrimitiveSerializer<FindingBaseRate> {
  @override
  final Iterable<Type> types = const [FindingBaseRate, _$FindingBaseRate];

  @override
  final String wireName = r'FindingBaseRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FindingBaseRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield object.value == null
        ? null
        : serializers.serialize(
            object.value,
            specifiedType: const FullType.nullable(num),
          );
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(String),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(FindingBaseRateMethodEnum),
    );
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.period != null) {
      yield r'period';
      yield serializers.serialize(
        object.period,
        specifiedType: const FullType.nullable(TimeRange),
      );
    }
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FindingBaseRate object, {
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
    required FindingBaseRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
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
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(FindingBaseRateMethodEnum),
                  )
                  as FindingBaseRateMethodEnum;
          result.method = valueDes;
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'period':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TimeRange),
                  )
                  as TimeRange?;
          if (valueDes == null) continue;
          result.period.replace(valueDes);
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FindingBaseRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FindingBaseRateBuilder();
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

class FindingBaseRateMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'detector-false-alarm-rate')
  static const FindingBaseRateMethodEnum detectorFalseAlarmRate =
      _$findingBaseRateMethodEnum_detectorFalseAlarmRate;
  @BuiltValueEnumConst(wireName: r'placebo-distribution')
  static const FindingBaseRateMethodEnum placeboDistribution =
      _$findingBaseRateMethodEnum_placeboDistribution;
  @BuiltValueEnumConst(wireName: r'independence-baseline')
  static const FindingBaseRateMethodEnum independenceBaseline =
      _$findingBaseRateMethodEnum_independenceBaseline;
  @BuiltValueEnumConst(wireName: r'precursor-base-rate')
  static const FindingBaseRateMethodEnum precursorBaseRate =
      _$findingBaseRateMethodEnum_precursorBaseRate;
  @BuiltValueEnumConst(wireName: r'other')
  static const FindingBaseRateMethodEnum other =
      _$findingBaseRateMethodEnum_other;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FindingBaseRateMethodEnum unknownDefaultOpenApi =
      _$findingBaseRateMethodEnum_unknownDefaultOpenApi;

  static Serializer<FindingBaseRateMethodEnum> get serializer =>
      _$findingBaseRateMethodEnumSerializer;

  const FindingBaseRateMethodEnum._(String name) : super(name);

  static BuiltSet<FindingBaseRateMethodEnum> get values =>
      _$findingBaseRateMethodEnumValues;
  static FindingBaseRateMethodEnum valueOf(String name) =>
      _$findingBaseRateMethodEnumValueOf(name);
}
