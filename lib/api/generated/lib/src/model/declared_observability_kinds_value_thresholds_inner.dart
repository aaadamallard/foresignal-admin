//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declared_observability_kinds_value_thresholds_inner.g.dart';

/// Detection threshold, e.g. {field: mag, min: 2.5, area: US}
///
/// Properties:
/// * [field]
/// * [min]
/// * [area]
@BuiltValue()
abstract class DeclaredObservabilityKindsValueThresholdsInner
    implements
        Built<
          DeclaredObservabilityKindsValueThresholdsInner,
          DeclaredObservabilityKindsValueThresholdsInnerBuilder
        > {
  @BuiltValueField(wireName: r'field')
  String get field;

  @BuiltValueField(wireName: r'min')
  num get min;

  @BuiltValueField(wireName: r'area')
  String? get area;

  DeclaredObservabilityKindsValueThresholdsInner._();

  factory DeclaredObservabilityKindsValueThresholdsInner([
    void updates(DeclaredObservabilityKindsValueThresholdsInnerBuilder b),
  ]) = _$DeclaredObservabilityKindsValueThresholdsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    DeclaredObservabilityKindsValueThresholdsInnerBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclaredObservabilityKindsValueThresholdsInner>
  get serializer =>
      _$DeclaredObservabilityKindsValueThresholdsInnerSerializer();
}

class _$DeclaredObservabilityKindsValueThresholdsInnerSerializer
    implements
        PrimitiveSerializer<DeclaredObservabilityKindsValueThresholdsInner> {
  @override
  final Iterable<Type> types = const [
    DeclaredObservabilityKindsValueThresholdsInner,
    _$DeclaredObservabilityKindsValueThresholdsInner,
  ];

  @override
  final String wireName = r'DeclaredObservabilityKindsValueThresholdsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclaredObservabilityKindsValueThresholdsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'field';
    yield serializers.serialize(
      object.field,
      specifiedType: const FullType(String),
    );
    yield r'min';
    yield serializers.serialize(object.min, specifiedType: const FullType(num));
    if (object.area != null) {
      yield r'area';
      yield serializers.serialize(
        object.area,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclaredObservabilityKindsValueThresholdsInner object, {
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
    required DeclaredObservabilityKindsValueThresholdsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.field = valueDes;
          break;
        case r'min':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.min = valueDes;
          break;
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.area = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclaredObservabilityKindsValueThresholdsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclaredObservabilityKindsValueThresholdsInnerBuilder();
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
