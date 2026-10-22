//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/common_dependencies_dependencies_inner_paths_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_dependencies_dependencies_inner.g.dart';

/// One shared dependency
///
/// Properties:
/// * [node]
/// * [sharedBy]
/// * [weakestEdgeLabel] - Relation or dependency label (104 vocabulary)
/// * [paths]
@BuiltValue()
abstract class CommonDependenciesDependenciesInner
    implements
        Built<
          CommonDependenciesDependenciesInner,
          CommonDependenciesDependenciesInnerBuilder
        > {
  @BuiltValueField(wireName: r'node')
  ObjectEnvelope get node;

  @BuiltValueField(wireName: r'sharedBy')
  BuiltList<String> get sharedBy;

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'weakestEdgeLabel')
  CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  @BuiltValueField(wireName: r'paths')
  BuiltList<CommonDependenciesDependenciesInnerPathsInner> get paths;

  CommonDependenciesDependenciesInner._();

  factory CommonDependenciesDependenciesInner([
    void updates(CommonDependenciesDependenciesInnerBuilder b),
  ]) = _$CommonDependenciesDependenciesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommonDependenciesDependenciesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonDependenciesDependenciesInner> get serializer =>
      _$CommonDependenciesDependenciesInnerSerializer();
}

class _$CommonDependenciesDependenciesInnerSerializer
    implements PrimitiveSerializer<CommonDependenciesDependenciesInner> {
  @override
  final Iterable<Type> types = const [
    CommonDependenciesDependenciesInner,
    _$CommonDependenciesDependenciesInner,
  ];

  @override
  final String wireName = r'CommonDependenciesDependenciesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonDependenciesDependenciesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'node';
    yield serializers.serialize(
      object.node,
      specifiedType: const FullType(ObjectEnvelope),
    );
    yield r'sharedBy';
    yield serializers.serialize(
      object.sharedBy,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(
        CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum,
      ),
    );
    yield r'paths';
    yield serializers.serialize(
      object.paths,
      specifiedType: const FullType(BuiltList, [
        FullType(CommonDependenciesDependenciesInnerPathsInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesDependenciesInner object, {
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
    required CommonDependenciesDependenciesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ObjectEnvelope),
                  )
                  as ObjectEnvelope;
          result.node.replace(valueDes);
          break;
        case r'sharedBy':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.sharedBy.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum,
                    ),
                  )
                  as CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum;
          result.weakestEdgeLabel = valueDes;
          break;
        case r'paths':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(CommonDependenciesDependenciesInnerPathsInner),
                    ]),
                  )
                  as BuiltList<CommonDependenciesDependenciesInnerPathsInner>;
          result.paths.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommonDependenciesDependenciesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonDependenciesDependenciesInnerBuilder();
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

/// Relation or dependency label (104 vocabulary)
class CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
  confirmed =
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum likely =
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
  possible = _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum
  speculative =
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnum_speculative;

  static Serializer<CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum>
  get serializer =>
      _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumSerializer;

  const CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum._(String name)
    : super(name);

  static BuiltSet<CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum>
  get values => _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumValues;
  static CommonDependenciesDependenciesInnerWeakestEdgeLabelEnum valueOf(
    String name,
  ) => _$commonDependenciesDependenciesInnerWeakestEdgeLabelEnumValueOf(name);
}
