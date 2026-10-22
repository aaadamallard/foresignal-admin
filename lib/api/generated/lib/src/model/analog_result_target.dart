//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analog_result_target.g.dart';

/// What was matched
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [regionCode] - 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
/// * [from]
/// * [to]
@BuiltValue()
abstract class AnalogResultTarget
    implements Built<AnalogResultTarget, AnalogResultTargetBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  /// 040 region code: ISO 3166-1 alpha-2 country, `CC-admin1`, or `ZZ` for untagged
  @BuiltValueField(wireName: r'regionCode')
  String? get regionCode;

  @BuiltValueField(wireName: r'from')
  DateTime? get from;

  @BuiltValueField(wireName: r'to')
  DateTime? get to;

  AnalogResultTarget._();

  factory AnalogResultTarget([void updates(AnalogResultTargetBuilder b)]) =
      _$AnalogResultTarget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalogResultTargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalogResultTarget> get serializer =>
      _$AnalogResultTargetSerializer();
}

class _$AnalogResultTargetSerializer
    implements PrimitiveSerializer<AnalogResultTarget> {
  @override
  final Iterable<Type> types = const [AnalogResultTarget, _$AnalogResultTarget];

  @override
  final String wireName = r'AnalogResultTarget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalogResultTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.regionCode != null) {
      yield r'regionCode';
      yield serializers.serialize(
        object.regionCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalogResultTarget object, {
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
    required AnalogResultTargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
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
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalogResultTarget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalogResultTargetBuilder();
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
