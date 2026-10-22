//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_query.g.dart';

/// Region-period analog query (no situation needed)
///
/// Properties:
/// * [regionCode] - 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
/// * [from]
/// * [to]
/// * [k]
/// * [outcome] - Target outcome: `critical` (situation reaches critical) or `{family}/P{n}D` (a family within n days), e.g. `conflict:battles/P30D`
@BuiltValue()
abstract class AnalogQuery implements Built<AnalogQuery, AnalogQueryBuilder> {
  /// 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
  @BuiltValueField(wireName: r'regionCode')
  String get regionCode;

  @BuiltValueField(wireName: r'from')
  DateTime get from;

  @BuiltValueField(wireName: r'to')
  DateTime get to;

  @BuiltValueField(wireName: r'k')
  int? get k;

  /// Target outcome: `critical` (situation reaches critical) or `{family}/P{n}D` (a family within n days), e.g. `conflict:battles/P30D`
  @BuiltValueField(wireName: r'outcome')
  String? get outcome;

  AnalogQuery._();

  factory AnalogQuery([void updates(AnalogQueryBuilder b)]) = _$AnalogQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogQuery> get serializer => _$AnalogQuerySerializer();
}

class _$AnalogQuerySerializer implements PrimitiveSerializer<AnalogQuery> {
  @override
  final Iterable<Type> types = const [AnalogQuery, _$AnalogQuery];

  @override
  final String wireName = r'AnalogQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'regionCode';
    yield serializers.serialize(
      object.regionCode,
      specifiedType: const FullType(String),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(DateTime),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(DateTime),
    );
    if (object.k != null) {
      yield r'k';
      yield serializers.serialize(object.k, specifiedType: const FullType(int));
    }
    if (object.outcome != null) {
      yield r'outcome';
      yield serializers.serialize(
        object.outcome,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogQuery object, {
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
    required AnalogQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regionCode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.regionCode = valueDes;
          break;
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.to = valueDes;
          break;
        case r'k':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.k = valueDes;
          break;
        case r'outcome':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.outcome = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogQueryBuilder();
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
