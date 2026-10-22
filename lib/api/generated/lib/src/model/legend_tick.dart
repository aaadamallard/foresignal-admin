//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legend_tick.g.dart';

/// Legend axis tick
///
/// Properties:
/// * [value]
/// * [label]
@BuiltValue()
abstract class LegendTick implements Built<LegendTick, LegendTickBuilder> {
  @BuiltValueField(wireName: r'value')
  num get value;

  @BuiltValueField(wireName: r'label')
  String get label;

  LegendTick._();

  factory LegendTick([void updates(LegendTickBuilder b)]) = _$LegendTick;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegendTickBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegendTick> get serializer => _$LegendTickSerializer();
}

class _$LegendTickSerializer implements PrimitiveSerializer<LegendTick> {
  @override
  final Iterable<Type> types = const [LegendTick, _$LegendTick];

  @override
  final String wireName = r'LegendTick';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegendTick object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LegendTick object, {
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
    required LegendTickBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.value = valueDes;
          break;
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LegendTick deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegendTickBuilder();
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
