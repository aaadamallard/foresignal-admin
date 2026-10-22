//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/infra_impact_result_dependents_inner_path_inner.dart';
import 'package:foresignal_api/src/model/infra_node.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'infra_impact_result_dependents_inner.g.dart';

/// A dependent facility and its path
///
/// Properties:
/// * [node]
/// * [depth]
/// * [pathLabel] - Weakest edge label
/// * [pathScore] - Product of edge scores
/// * [path]
@BuiltValue()
abstract class InfraImpactResultDependentsInner
    implements
        Built<InfraImpactResultDependentsInner,
            InfraImpactResultDependentsInnerBuilder> {
  @BuiltValueField(wireName: r'node')
  InfraNode get node;

  @BuiltValueField(wireName: r'depth')
  int get depth;

  /// Weakest edge label
  @BuiltValueField(wireName: r'pathLabel')
  InfraImpactResultDependentsInnerPathLabelEnum get pathLabel;
  // enum pathLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  /// Product of edge scores
  @BuiltValueField(wireName: r'pathScore')
  num get pathScore;

  @BuiltValueField(wireName: r'path')
  BuiltList<InfraImpactResultDependentsInnerPathInner> get path;

  InfraImpactResultDependentsInner._();

  factory InfraImpactResultDependentsInner(
          [void updates(InfraImpactResultDependentsInnerBuilder b)]) =
      _$InfraImpactResultDependentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InfraImpactResultDependentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InfraImpactResultDependentsInner> get serializer =>
      _$InfraImpactResultDependentsInnerSerializer();
}

class _$InfraImpactResultDependentsInnerSerializer
    implements PrimitiveSerializer<InfraImpactResultDependentsInner> {
  @override
  final Iterable<Type> types = const [
    InfraImpactResultDependentsInner,
    _$InfraImpactResultDependentsInner
  ];

  @override
  final String wireName = r'InfraImpactResultDependentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InfraImpactResultDependentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(InfraNode),
    );
    yield r'depth';
    yield serializers.serialize(
      object.depth,
      specifiedType: const FullType(int),
    );
    yield r'pathLabel';
    yield serializers.serialize(
      object.pathLabel,
      specifiedType:
          const FullType(InfraImpactResultDependentsInnerPathLabelEnum),
    );
    yield r'pathScore';
    yield serializers.serialize(
      object.pathScore,
      specifiedType: const FullType(num),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(
          BuiltList, [FullType(InfraImpactResultDependentsInnerPathInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InfraImpactResultDependentsInner object, {
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
    required InfraImpactResultDependentsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InfraNode),
          ) as InfraNode;
          result.node.replace(valueDes);
          break;
        case r'depth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.depth = valueDes;
          break;
        case r'pathLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InfraImpactResultDependentsInnerPathLabelEnum),
          ) as InfraImpactResultDependentsInnerPathLabelEnum;
          result.pathLabel = valueDes;
          break;
        case r'pathScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pathScore = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(InfraImpactResultDependentsInnerPathInner)]),
          ) as BuiltList<InfraImpactResultDependentsInnerPathInner>;
          result.path.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InfraImpactResultDependentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InfraImpactResultDependentsInnerBuilder();
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

/// Weakest edge label
class InfraImpactResultDependentsInnerPathLabelEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const InfraImpactResultDependentsInnerPathLabelEnum confirmed =
      _$infraImpactResultDependentsInnerPathLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const InfraImpactResultDependentsInnerPathLabelEnum likely =
      _$infraImpactResultDependentsInnerPathLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const InfraImpactResultDependentsInnerPathLabelEnum possible =
      _$infraImpactResultDependentsInnerPathLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const InfraImpactResultDependentsInnerPathLabelEnum speculative =
      _$infraImpactResultDependentsInnerPathLabelEnum_speculative;

  static Serializer<InfraImpactResultDependentsInnerPathLabelEnum>
      get serializer =>
          _$infraImpactResultDependentsInnerPathLabelEnumSerializer;

  const InfraImpactResultDependentsInnerPathLabelEnum._(String name)
      : super(name);

  static BuiltSet<InfraImpactResultDependentsInnerPathLabelEnum> get values =>
      _$infraImpactResultDependentsInnerPathLabelEnumValues;
  static InfraImpactResultDependentsInnerPathLabelEnum valueOf(String name) =>
      _$infraImpactResultDependentsInnerPathLabelEnumValueOf(name);
}
