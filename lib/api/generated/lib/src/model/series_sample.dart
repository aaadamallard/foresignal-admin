//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/sample_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/sample_value_derived.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_sample.g.dart';

/// One step of a point series
///
/// Properties:
/// * [time]
/// * [kind]
/// * [value]
/// * [u]
/// * [v]
/// * [derived]
/// * [frameKey]
/// * [run]
/// * [step]
/// * [status]
/// * [statusText]
@BuiltValue()
abstract class SeriesSample
    implements Built<SeriesSample, SeriesSampleBuilder> {
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'kind')
  SeriesSampleKindEnum get kind;
  // enum kindEnum {  observed,  forecast,  };

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'u')
  num? get u;

  @BuiltValueField(wireName: r'v')
  num? get v;

  @BuiltValueField(wireName: r'derived')
  SampleValueDerived? get derived;

  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'run')
  String? get run;

  @BuiltValueField(wireName: r'step')
  int? get step;

  @BuiltValueField(wireName: r'status')
  SampleStatus get status;
  // enum statusEnum {  ok,  no-coverage,  no-data,  stale,  unavailable,  stale-position,  };

  @BuiltValueField(wireName: r'statusText')
  String? get statusText;

  SeriesSample._();

  factory SeriesSample([void updates(SeriesSampleBuilder b)]) = _$SeriesSample;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesSampleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesSample> get serializer => _$SeriesSampleSerializer();
}

class _$SeriesSampleSerializer implements PrimitiveSerializer<SeriesSample> {
  @override
  final Iterable<Type> types = const [SeriesSample, _$SeriesSample];

  @override
  final String wireName = r'SeriesSample';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesSample object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(SeriesSampleKindEnum),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.u != null) {
      yield r'u';
      yield serializers.serialize(
        object.u,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.v != null) {
      yield r'v';
      yield serializers.serialize(
        object.v,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.derived != null) {
      yield r'derived';
      yield serializers.serialize(
        object.derived,
        specifiedType: const FullType.nullable(SampleValueDerived),
      );
    }
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.run != null) {
      yield r'run';
      yield serializers.serialize(
        object.run,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SampleStatus),
    );
    if (object.statusText != null) {
      yield r'statusText';
      yield serializers.serialize(
        object.statusText,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesSample object, {
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
    required SeriesSampleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SeriesSampleKindEnum),
          ) as SeriesSampleKindEnum;
          result.kind = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'u':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.u = valueDes;
          break;
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.v = valueDes;
          break;
        case r'derived':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SampleValueDerived),
          ) as SampleValueDerived?;
          if (valueDes == null) continue;
          result.derived.replace(valueDes);
          break;
        case r'frameKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'run':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.run = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SampleStatus),
          ) as SampleStatus;
          result.status = valueDes;
          break;
        case r'statusText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesSample deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesSampleBuilder();
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

class SeriesSampleKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'observed')
  static const SeriesSampleKindEnum observed = _$seriesSampleKindEnum_observed;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const SeriesSampleKindEnum forecast = _$seriesSampleKindEnum_forecast;

  static Serializer<SeriesSampleKindEnum> get serializer =>
      _$seriesSampleKindEnumSerializer;

  const SeriesSampleKindEnum._(String name) : super(name);

  static BuiltSet<SeriesSampleKindEnum> get values =>
      _$seriesSampleKindEnumValues;
  static SeriesSampleKindEnum valueOf(String name) =>
      _$seriesSampleKindEnumValueOf(name);
}
