//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snooze_input.g.dart';

/// Snooze until a time or for a duration (exactly one; required expiry; rule snoozes ≤ 7 days)
///
/// Properties:
/// * [until]
/// * [for_] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class SnoozeInput implements Built<SnoozeInput, SnoozeInputBuilder> {
  @BuiltValueField(wireName: r'until')
  DateTime? get until;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'for')
  String? get for_;

  SnoozeInput._();

  factory SnoozeInput([void updates(SnoozeInputBuilder b)]) = _$SnoozeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnoozeInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SnoozeInput> get serializer => _$SnoozeInputSerializer();
}

class _$SnoozeInputSerializer implements PrimitiveSerializer<SnoozeInput> {
  @override
  final Iterable<Type> types = const [SnoozeInput, _$SnoozeInput];

  @override
  final String wireName = r'SnoozeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnoozeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.until != null) {
      yield r'until';
      yield serializers.serialize(
        object.until,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.for_ != null) {
      yield r'for';
      yield serializers.serialize(
        object.for_,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SnoozeInput object, {
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
    required SnoozeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'until':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.until = valueDes;
          break;
        case r'for':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.for_ = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SnoozeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnoozeInputBuilder();
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
