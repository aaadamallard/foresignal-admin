//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backtest_caveat.g.dart';

/// A generated limit of a backtest result; NOT_GROUND_TRUTH is always present
///
/// Properties:
/// * [code]
/// * [text]
/// * [data]
@BuiltValue()
abstract class BacktestCaveat
    implements Built<BacktestCaveat, BacktestCaveatBuilder> {
  @BuiltValueField(wireName: r'code')
  BacktestCaveatCodeEnum get code;
  // enum codeEnum {  RANGE_CLAMPED_BY_RETENTION,  DOWNSAMPLED_RANGE,  SAMPLED_SOURCE,  COVERAGE_GAPS,  DEFINITION_DIFFERS,  ENTITY_RESOLUTION_CHANGED,  WINDOW_APPROXIMATE,  SMALL_SAMPLE,  NOT_GROUND_TRUTH,  };

  @BuiltValueField(wireName: r'text')
  String get text;

  @BuiltValueField(wireName: r'data')
  BuiltMap<String, JsonObject?>? get data;

  BacktestCaveat._();

  factory BacktestCaveat([void updates(BacktestCaveatBuilder b)]) =
      _$BacktestCaveat;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BacktestCaveatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BacktestCaveat> get serializer =>
      _$BacktestCaveatSerializer();
}

class _$BacktestCaveatSerializer
    implements PrimitiveSerializer<BacktestCaveat> {
  @override
  final Iterable<Type> types = const [BacktestCaveat, _$BacktestCaveat];

  @override
  final String wireName = r'BacktestCaveat';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BacktestCaveat object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(BacktestCaveatCodeEnum),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BacktestCaveat object, {
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
    required BacktestCaveatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BacktestCaveatCodeEnum),
          ) as BacktestCaveatCodeEnum;
          result.code = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BacktestCaveat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BacktestCaveatBuilder();
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

class BacktestCaveatCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RANGE_CLAMPED_BY_RETENTION')
  static const BacktestCaveatCodeEnum RANGE_CLAMPED_BY_RETENTION =
      _$backtestCaveatCodeEnum_RANGE_CLAMPED_BY_RETENTION;
  @BuiltValueEnumConst(wireName: r'DOWNSAMPLED_RANGE')
  static const BacktestCaveatCodeEnum DOWNSAMPLED_RANGE =
      _$backtestCaveatCodeEnum_DOWNSAMPLED_RANGE;
  @BuiltValueEnumConst(wireName: r'SAMPLED_SOURCE')
  static const BacktestCaveatCodeEnum SAMPLED_SOURCE =
      _$backtestCaveatCodeEnum_SAMPLED_SOURCE;
  @BuiltValueEnumConst(wireName: r'COVERAGE_GAPS')
  static const BacktestCaveatCodeEnum COVERAGE_GAPS =
      _$backtestCaveatCodeEnum_COVERAGE_GAPS;
  @BuiltValueEnumConst(wireName: r'DEFINITION_DIFFERS')
  static const BacktestCaveatCodeEnum DEFINITION_DIFFERS =
      _$backtestCaveatCodeEnum_DEFINITION_DIFFERS;
  @BuiltValueEnumConst(wireName: r'ENTITY_RESOLUTION_CHANGED')
  static const BacktestCaveatCodeEnum ENTITY_RESOLUTION_CHANGED =
      _$backtestCaveatCodeEnum_ENTITY_RESOLUTION_CHANGED;
  @BuiltValueEnumConst(wireName: r'WINDOW_APPROXIMATE')
  static const BacktestCaveatCodeEnum WINDOW_APPROXIMATE =
      _$backtestCaveatCodeEnum_WINDOW_APPROXIMATE;
  @BuiltValueEnumConst(wireName: r'SMALL_SAMPLE')
  static const BacktestCaveatCodeEnum SMALL_SAMPLE =
      _$backtestCaveatCodeEnum_SMALL_SAMPLE;
  @BuiltValueEnumConst(wireName: r'NOT_GROUND_TRUTH')
  static const BacktestCaveatCodeEnum NOT_GROUND_TRUTH =
      _$backtestCaveatCodeEnum_NOT_GROUND_TRUTH;

  static Serializer<BacktestCaveatCodeEnum> get serializer =>
      _$backtestCaveatCodeEnumSerializer;

  const BacktestCaveatCodeEnum._(String name) : super(name);

  static BuiltSet<BacktestCaveatCodeEnum> get values =>
      _$backtestCaveatCodeEnumValues;
  static BacktestCaveatCodeEnum valueOf(String name) =>
      _$backtestCaveatCodeEnumValueOf(name);
}
