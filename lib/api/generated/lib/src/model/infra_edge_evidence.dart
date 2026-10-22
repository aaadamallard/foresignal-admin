//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_edge_evidence.g.dart';

/// Why the edge exists
///
/// Properties:
/// * [dataset]
/// * [distanceKm]
/// * [matched]
/// * [notes]
@BuiltValue()
abstract class InfraEdgeEvidence
    implements Built<InfraEdgeEvidence, InfraEdgeEvidenceBuilder> {
  @BuiltValueField(wireName: r'dataset')
  String? get dataset;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'matched')
  BuiltMap<String, JsonObject?>? get matched;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  InfraEdgeEvidence._();

  factory InfraEdgeEvidence([void updates(InfraEdgeEvidenceBuilder b)]) =
      _$InfraEdgeEvidence;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraEdgeEvidenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraEdgeEvidence> get serializer =>
      _$InfraEdgeEvidenceSerializer();
}

class _$InfraEdgeEvidenceSerializer
    implements PrimitiveSerializer<InfraEdgeEvidence> {
  @override
  final Iterable<Type> types = const [InfraEdgeEvidence, _$InfraEdgeEvidence];

  @override
  final String wireName = r'InfraEdgeEvidence';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraEdgeEvidence object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dataset != null) {
      yield r'dataset';
      yield serializers.serialize(
        object.dataset,
        specifiedType: const FullType(String),
      );
    }
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.matched != null) {
      yield r'matched';
      yield serializers.serialize(
        object.matched,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
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
    InfraEdgeEvidence object, {
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
    required InfraEdgeEvidenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dataset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dataset = valueDes;
          break;
        case r'distanceKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'matched':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.matched.replace(valueDes);
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  InfraEdgeEvidence deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraEdgeEvidenceBuilder();
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
