//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/declared_observability_kinds_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declared_observability.g.dart';

/// Declared observability per kind (descriptor field or intel/observability.json) (116)
///
/// Properties:
/// * [kinds]
@BuiltValue()
abstract class DeclaredObservability
    implements Built<DeclaredObservability, DeclaredObservabilityBuilder> {
  @BuiltValueField(wireName: r'kinds')
  BuiltMap<String, DeclaredObservabilityKindsValue> get kinds;

  DeclaredObservability._();

  factory DeclaredObservability(
      [void updates(DeclaredObservabilityBuilder b)]) = _$DeclaredObservability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeclaredObservabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclaredObservability> get serializer =>
      _$DeclaredObservabilitySerializer();
}

class _$DeclaredObservabilitySerializer
    implements PrimitiveSerializer<DeclaredObservability> {
  @override
  final Iterable<Type> types = const [
    DeclaredObservability,
    _$DeclaredObservability
  ];

  @override
  final String wireName = r'DeclaredObservability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclaredObservability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kinds';
    yield serializers.serialize(
      object.kinds,
      specifiedType: const FullType(BuiltMap,
          [FullType(String), FullType(DeclaredObservabilityKindsValue)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclaredObservability object, {
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
    required DeclaredObservabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kinds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap,
                [FullType(String), FullType(DeclaredObservabilityKindsValue)]),
          ) as BuiltMap<String, DeclaredObservabilityKindsValue>;
          result.kinds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclaredObservability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclaredObservabilityBuilder();
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
