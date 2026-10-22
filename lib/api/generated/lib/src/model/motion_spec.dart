//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motion_spec.g.dart';

/// Payload fields used for dead reckoning (never significant)
///
/// Properties:
/// * [speedField] - Top-level payload key holding speed
/// * [speedUnit] - Unit of the speed field
/// * [courseField] - Top-level payload key holding course over ground (degrees)
@BuiltValue()
abstract class MotionSpec implements Built<MotionSpec, MotionSpecBuilder> {
  /// Top-level payload key holding speed
  @BuiltValueField(wireName: r'speedField')
  String get speedField;

  /// Unit of the speed field
  @BuiltValueField(wireName: r'speedUnit')
  String get speedUnit;

  /// Top-level payload key holding course over ground (degrees)
  @BuiltValueField(wireName: r'courseField')
  String? get courseField;

  MotionSpec._();

  factory MotionSpec([void updates(MotionSpecBuilder b)]) = _$MotionSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MotionSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MotionSpec> get serializer => _$MotionSpecSerializer();
}

class _$MotionSpecSerializer implements PrimitiveSerializer<MotionSpec> {
  @override
  final Iterable<Type> types = const [MotionSpec, _$MotionSpec];

  @override
  final String wireName = r'MotionSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotionSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'speedField';
    yield serializers.serialize(
      object.speedField,
      specifiedType: const FullType(String),
    );
    yield r'speedUnit';
    yield serializers.serialize(
      object.speedUnit,
      specifiedType: const FullType(String),
    );
    if (object.courseField != null) {
      yield r'courseField';
      yield serializers.serialize(
        object.courseField,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotionSpec object, {
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
    required MotionSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'speedField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.speedField = valueDes;
          break;
        case r'speedUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.speedUnit = valueDes;
          break;
        case r'courseField':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.courseField = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MotionSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MotionSpecBuilder();
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
