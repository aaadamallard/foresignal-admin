//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'series_point.g.dart';

/// One data point of a series (`series-point` record payload, current version) (093)
///
/// Properties:
/// * [period] - Upstream period label
/// * [periodStart]
/// * [periodEnd]
/// * [value]
/// * [unit]
/// * [status]
/// * [extra] - Flat scalar extras (e.g. `gasInStorageTWh`, `sharePct`)
/// * [version] - Record version; > 1 means the point was revised
/// * [observedAt]
/// * [knownAt] - Ingest time of the version that supplied the point (via `seq_clock`); rollups use bucket close time, rule samples their write time
/// * [coverageOk] - False when the involved sources were failing or not covering the period
@BuiltValue()
abstract class SeriesPoint implements Built<SeriesPoint, SeriesPointBuilder> {
  /// Upstream period label
  @BuiltValueField(wireName: r'period')
  String get period;

  @BuiltValueField(wireName: r'periodStart')
  DateTime get periodStart;

  @BuiltValueField(wireName: r'periodEnd')
  DateTime get periodEnd;

  @BuiltValueField(wireName: r'value')
  num? get value;

  @BuiltValueField(wireName: r'unit')
  String get unit;

  @BuiltValueField(wireName: r'status')
  SeriesPointStatusEnum get status;
  // enum statusEnum {  final,  preliminary,  estimated,  forecast,  };

  /// Flat scalar extras (e.g. `gasInStorageTWh`, `sharePct`)
  @BuiltValueField(wireName: r'extra')
  BuiltMap<String, JsonObject?>? get extra;

  /// Record version; > 1 means the point was revised
  @BuiltValueField(wireName: r'version')
  int? get version;

  @BuiltValueField(wireName: r'observedAt')
  DateTime? get observedAt;

  /// Ingest time of the version that supplied the point (via `seq_clock`); rollups use bucket close time, rule samples their write time
  @BuiltValueField(wireName: r'knownAt')
  DateTime? get knownAt;

  /// False when the involved sources were failing or not covering the period
  @BuiltValueField(wireName: r'coverageOk')
  bool? get coverageOk;

  SeriesPoint._();

  factory SeriesPoint([void updates(SeriesPointBuilder b)]) = _$SeriesPoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SeriesPointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SeriesPoint> get serializer => _$SeriesPointSerializer();
}

class _$SeriesPointSerializer implements PrimitiveSerializer<SeriesPoint> {
  @override
  final Iterable<Type> types = const [SeriesPoint, _$SeriesPoint];

  @override
  final String wireName = r'SeriesPoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SeriesPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(String),
    );
    yield r'periodStart';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(DateTime),
    );
    yield r'periodEnd';
    yield serializers.serialize(
      object.periodEnd,
      specifiedType: const FullType(DateTime),
    );
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
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SeriesPointStatusEnum),
    );
    if (object.extra != null) {
      yield r'extra';
      yield serializers.serialize(
        object.extra,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType.nullable(JsonObject),
        ]),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.observedAt != null) {
      yield r'observedAt';
      yield serializers.serialize(
        object.observedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.knownAt != null) {
      yield r'knownAt';
      yield serializers.serialize(
        object.knownAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.coverageOk != null) {
      yield r'coverageOk';
      yield serializers.serialize(
        object.coverageOk,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SeriesPoint object, {
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
    required SeriesPointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.period = valueDes;
          break;
        case r'periodStart':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.periodEnd = valueDes;
          break;
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
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SeriesPointStatusEnum),
                  )
                  as SeriesPointStatusEnum;
          result.status = valueDes;
          break;
        case r'extra':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType.nullable(JsonObject),
                    ]),
                  )
                  as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.extra.replace(valueDes);
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'observedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.observedAt = valueDes;
          break;
        case r'knownAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.knownAt = valueDes;
          break;
        case r'coverageOk':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.coverageOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SeriesPoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SeriesPointBuilder();
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

class SeriesPointStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'final')
  static const SeriesPointStatusEnum final_ = _$seriesPointStatusEnum_final_;
  @BuiltValueEnumConst(wireName: r'preliminary')
  static const SeriesPointStatusEnum preliminary =
      _$seriesPointStatusEnum_preliminary;
  @BuiltValueEnumConst(wireName: r'estimated')
  static const SeriesPointStatusEnum estimated =
      _$seriesPointStatusEnum_estimated;
  @BuiltValueEnumConst(wireName: r'forecast')
  static const SeriesPointStatusEnum forecast =
      _$seriesPointStatusEnum_forecast;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SeriesPointStatusEnum unknownDefaultOpenApi =
      _$seriesPointStatusEnum_unknownDefaultOpenApi;

  static Serializer<SeriesPointStatusEnum> get serializer =>
      _$seriesPointStatusEnumSerializer;

  const SeriesPointStatusEnum._(String name) : super(name);

  static BuiltSet<SeriesPointStatusEnum> get values =>
      _$seriesPointStatusEnumValues;
  static SeriesPointStatusEnum valueOf(String name) =>
      _$seriesPointStatusEnumValueOf(name);
}
