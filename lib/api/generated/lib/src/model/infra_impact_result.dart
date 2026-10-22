//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/caveat.dart';
import 'package:foresignal_api/src/model/infra_impact_result_summary.dart';
import 'package:foresignal_api/src/model/infra_node.dart';
import 'package:foresignal_api/src/model/infra_impact_result_dependents_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_result.g.dart';

/// Facilities inside the area and their dependents with weakest-link path labels, caveats and attribution. Derived from open data; not authoritative.
///
/// Properties:
/// * [buildId] - ULID identifier
/// * [approximateArea] - Seeds came from a region polygon
/// * [direct]
/// * [dependents]
/// * [summary]
/// * [caveats] - Always includes open data / heuristic links; region-level area; OSM extract date; disabled rules
/// * [attribution]
/// * [truncated]
@BuiltValue()
abstract class InfraImpactResult
    implements Built<InfraImpactResult, InfraImpactResultBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'buildId')
  String get buildId;

  /// Seeds came from a region polygon
  @BuiltValueField(wireName: r'approximateArea')
  bool? get approximateArea;

  @BuiltValueField(wireName: r'direct')
  BuiltList<InfraNode> get direct;

  @BuiltValueField(wireName: r'dependents')
  BuiltList<InfraImpactResultDependentsInner> get dependents;

  @BuiltValueField(wireName: r'summary')
  InfraImpactResultSummary get summary;

  /// Always includes open data / heuristic links; region-level area; OSM extract date; disabled rules
  @BuiltValueField(wireName: r'caveats')
  BuiltList<Caveat> get caveats;

  @BuiltValueField(wireName: r'attribution')
  BuiltList<String> get attribution;

  @BuiltValueField(wireName: r'truncated')
  bool get truncated;

  InfraImpactResult._();

  factory InfraImpactResult([void updates(InfraImpactResultBuilder b)]) =
      _$InfraImpactResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactResult> get serializer =>
      _$InfraImpactResultSerializer();
}

class _$InfraImpactResultSerializer
    implements PrimitiveSerializer<InfraImpactResult> {
  @override
  final Iterable<Type> types = const [InfraImpactResult, _$InfraImpactResult];

  @override
  final String wireName = r'InfraImpactResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buildId';
    yield serializers.serialize(
      object.buildId,
      specifiedType: const FullType(String),
    );
    if (object.approximateArea != null) {
      yield r'approximateArea';
      yield serializers.serialize(
        object.approximateArea,
        specifiedType: const FullType(bool),
      );
    }
    yield r'direct';
    yield serializers.serialize(
      object.direct,
      specifiedType: const FullType(BuiltList, [FullType(InfraNode)]),
    );
    yield r'dependents';
    yield serializers.serialize(
      object.dependents,
      specifiedType: const FullType(BuiltList, [
        FullType(InfraImpactResultDependentsInner),
      ]),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(InfraImpactResultSummary),
    );
    yield r'caveats';
    yield serializers.serialize(
      object.caveats,
      specifiedType: const FullType(BuiltList, [FullType(Caveat)]),
    );
    yield r'attribution';
    yield serializers.serialize(
      object.attribution,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'truncated';
    yield serializers.serialize(
      object.truncated,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactResult object, {
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
    required InfraImpactResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buildId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.buildId = valueDes;
          break;
        case r'approximateArea':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.approximateArea = valueDes;
          break;
        case r'direct':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(InfraNode),
                    ]),
                  )
                  as BuiltList<InfraNode>;
          result.direct.replace(valueDes);
          break;
        case r'dependents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(InfraImpactResultDependentsInner),
                    ]),
                  )
                  as BuiltList<InfraImpactResultDependentsInner>;
          result.dependents.replace(valueDes);
          break;
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(InfraImpactResultSummary),
                  )
                  as InfraImpactResultSummary;
          result.summary.replace(valueDes);
          break;
        case r'caveats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(Caveat),
                    ]),
                  )
                  as BuiltList<Caveat>;
          result.caveats.replace(valueDes);
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.attribution.replace(valueDes);
          break;
        case r'truncated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.truncated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactResultBuilder();
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
