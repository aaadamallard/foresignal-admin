//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/declared_observability_kinds_value_area.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/declared_observability_kinds_value_thresholds_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'declared_observability_kinds_value.g.dart';

/// Declared footprint of one kind
///
/// Properties:
/// * [area]
/// * [thresholds]
/// * [typicalLatency] - Typical publication latency. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [notes]
@BuiltValue()
abstract class DeclaredObservabilityKindsValue
    implements
        Built<
          DeclaredObservabilityKindsValue,
          DeclaredObservabilityKindsValueBuilder
        > {
  @BuiltValueField(wireName: r'area')
  DeclaredObservabilityKindsValueArea get area;

  @BuiltValueField(wireName: r'thresholds')
  BuiltList<DeclaredObservabilityKindsValueThresholdsInner>? get thresholds;

  /// Typical publication latency. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'typicalLatency')
  String? get typicalLatency;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  DeclaredObservabilityKindsValue._();

  factory DeclaredObservabilityKindsValue([
    void updates(DeclaredObservabilityKindsValueBuilder b),
  ]) = _$DeclaredObservabilityKindsValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeclaredObservabilityKindsValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeclaredObservabilityKindsValue> get serializer =>
      _$DeclaredObservabilityKindsValueSerializer();
}

class _$DeclaredObservabilityKindsValueSerializer
    implements PrimitiveSerializer<DeclaredObservabilityKindsValue> {
  @override
  final Iterable<Type> types = const [
    DeclaredObservabilityKindsValue,
    _$DeclaredObservabilityKindsValue,
  ];

  @override
  final String wireName = r'DeclaredObservabilityKindsValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeclaredObservabilityKindsValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area';
    yield serializers.serialize(
      object.area,
      specifiedType: const FullType(DeclaredObservabilityKindsValueArea),
    );
    if (object.thresholds != null) {
      yield r'thresholds';
      yield serializers.serialize(
        object.thresholds,
        specifiedType: const FullType(BuiltList, [
          FullType(DeclaredObservabilityKindsValueThresholdsInner),
        ]),
      );
    }
    if (object.typicalLatency != null) {
      yield r'typicalLatency';
      yield serializers.serialize(
        object.typicalLatency,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeclaredObservabilityKindsValue object, {
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
    required DeclaredObservabilityKindsValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      DeclaredObservabilityKindsValueArea,
                    ),
                  )
                  as DeclaredObservabilityKindsValueArea;
          result.area.replace(valueDes);
          break;
        case r'thresholds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(DeclaredObservabilityKindsValueThresholdsInner),
                    ]),
                  )
                  as BuiltList<DeclaredObservabilityKindsValueThresholdsInner>?;
          if (valueDes == null) continue;
          result.thresholds.replace(valueDes);
          break;
        case r'typicalLatency':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.typicalLatency = valueDes;
          break;
        case r'notes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeclaredObservabilityKindsValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeclaredObservabilityKindsValueBuilder();
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
