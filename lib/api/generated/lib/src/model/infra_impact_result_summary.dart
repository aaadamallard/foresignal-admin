//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_result_summary.g.dart';

/// Counts by facility type and label
///
/// Properties:
/// * [byType]
/// * [byLabel]
@BuiltValue()
abstract class InfraImpactResultSummary
    implements
        Built<InfraImpactResultSummary, InfraImpactResultSummaryBuilder> {
  @BuiltValueField(wireName: r'byType')
  BuiltMap<String, BuiltMap<String, int>>? get byType;

  @BuiltValueField(wireName: r'byLabel')
  BuiltMap<String, int>? get byLabel;

  InfraImpactResultSummary._();

  factory InfraImpactResultSummary(
          [void updates(InfraImpactResultSummaryBuilder b)]) =
      _$InfraImpactResultSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactResultSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactResultSummary> get serializer =>
      _$InfraImpactResultSummarySerializer();
}

class _$InfraImpactResultSummarySerializer
    implements PrimitiveSerializer<InfraImpactResultSummary> {
  @override
  final Iterable<Type> types = const [
    InfraImpactResultSummary,
    _$InfraImpactResultSummary
  ];

  @override
  final String wireName = r'InfraImpactResultSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactResultSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.byType != null) {
      yield r'byType';
      yield serializers.serialize(
        object.byType,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltMap, [FullType(String), FullType(int)])
        ]),
      );
    }
    if (object.byLabel != null) {
      yield r'byLabel';
      yield serializers.serialize(
        object.byLabel,
        specifiedType:
            const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactResultSummary object, {
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
    required InfraImpactResultSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'byType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [
              FullType(String),
              FullType(BuiltMap, [FullType(String), FullType(int)])
            ]),
          ) as BuiltMap<String, BuiltMap<String, int>>?;
          if (valueDes == null) continue;
          result.byType.replace(valueDes);
          break;
        case r'byLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.byLabel.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactResultSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactResultSummaryBuilder();
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
