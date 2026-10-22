//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_threshold.g.dart';

/// SAMPLED threshold: persist when a numeric payload field moved by at least `delta` since the persisted version
///
/// Properties:
/// * [field] - Top-level payload key (never significant)
/// * [delta] - Minimum change
/// * [angular] - Compare with 360° wrap (headings, courses)
@BuiltValue()
abstract class FieldThreshold
    implements Built<FieldThreshold, FieldThresholdBuilder> {
  /// Top-level payload key (never significant)
  @BuiltValueField(wireName: r'field')
  String get field;

  /// Minimum change
  @BuiltValueField(wireName: r'delta')
  num get delta;

  /// Compare with 360° wrap (headings, courses)
  @BuiltValueField(wireName: r'angular')
  bool? get angular;

  FieldThreshold._();

  factory FieldThreshold([void updates(FieldThresholdBuilder b)]) =
      _$FieldThreshold;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldThresholdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldThreshold> get serializer =>
      _$FieldThresholdSerializer();
}

class _$FieldThresholdSerializer
    implements PrimitiveSerializer<FieldThreshold> {
  @override
  final Iterable<Type> types = const [FieldThreshold, _$FieldThreshold];

  @override
  final String wireName = r'FieldThreshold';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldThreshold object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'field';
    yield serializers.serialize(
      object.field,
      specifiedType: const FullType(String),
    );
    yield r'delta';
    yield serializers.serialize(
      object.delta,
      specifiedType: const FullType(num),
    );
    if (object.angular != null) {
      yield r'angular';
      yield serializers.serialize(
        object.angular,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldThreshold object, {
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
    required FieldThresholdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
          break;
        case r'delta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.delta = valueDes;
          break;
        case r'angular':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.angular = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldThreshold deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldThresholdBuilder();
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
