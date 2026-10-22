//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stat_interval.g.dart';

/// A two-sided statistical interval for a rate, proportion or difference
///
/// Properties:
/// * [lower]
/// * [upper]
/// * [level] - Coverage level
/// * [method] - How it was computed
@BuiltValue()
abstract class StatInterval
    implements Built<StatInterval, StatIntervalBuilder> {
  @BuiltValueField(wireName: r'lower')
  num get lower;

  @BuiltValueField(wireName: r'upper')
  num get upper;

  /// Coverage level
  @BuiltValueField(wireName: r'level')
  num get level;

  /// How it was computed
  @BuiltValueField(wireName: r'method')
  StatIntervalMethodEnum get method;
  // enum methodEnum {  wilson,  jeffreys,  paired-bootstrap,  empirical,  };

  StatInterval._();

  factory StatInterval([void updates(StatIntervalBuilder b)]) = _$StatInterval;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StatIntervalBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StatInterval> get serializer => _$StatIntervalSerializer();
}

class _$StatIntervalSerializer implements PrimitiveSerializer<StatInterval> {
  @override
  final Iterable<Type> types = const [StatInterval, _$StatInterval];

  @override
  final String wireName = r'StatInterval';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StatInterval object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'lower';
    yield serializers.serialize(
      object.lower,
      specifiedType: const FullType(num),
    );
    yield r'upper';
    yield serializers.serialize(
      object.upper,
      specifiedType: const FullType(num),
    );
    yield r'level';
    yield serializers.serialize(
      object.level,
      specifiedType: const FullType(num),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(StatIntervalMethodEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StatInterval object, {
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
    required StatIntervalBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lower':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lower = valueDes;
          break;
        case r'upper':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.upper = valueDes;
          break;
        case r'level':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.level = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(StatIntervalMethodEnum),
                  )
                  as StatIntervalMethodEnum;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StatInterval deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatIntervalBuilder();
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

/// How it was computed
class StatIntervalMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'wilson')
  static const StatIntervalMethodEnum wilson = _$statIntervalMethodEnum_wilson;
  @BuiltValueEnumConst(wireName: r'jeffreys')
  static const StatIntervalMethodEnum jeffreys =
      _$statIntervalMethodEnum_jeffreys;
  @BuiltValueEnumConst(wireName: r'paired-bootstrap')
  static const StatIntervalMethodEnum pairedBootstrap =
      _$statIntervalMethodEnum_pairedBootstrap;
  @BuiltValueEnumConst(wireName: r'empirical')
  static const StatIntervalMethodEnum empirical =
      _$statIntervalMethodEnum_empirical;

  static Serializer<StatIntervalMethodEnum> get serializer =>
      _$statIntervalMethodEnumSerializer;

  const StatIntervalMethodEnum._(String name) : super(name);

  static BuiltSet<StatIntervalMethodEnum> get values =>
      _$statIntervalMethodEnumValues;
  static StatIntervalMethodEnum valueOf(String name) =>
      _$statIntervalMethodEnumValueOf(name);
}
