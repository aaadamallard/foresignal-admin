//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_dependencies_dependencies_inner_paths_inner.g.dart';

/// Path from an input object to the dependency
///
/// Properties:
/// * [from] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hops]
/// * [relationTypes]
/// * [weakestEdgeLabel] - Relation or dependency label (104 vocabulary)
@BuiltValue()
abstract class CommonDependenciesDependenciesInnerPathsInner
    implements
        Built<
          CommonDependenciesDependenciesInnerPathsInner,
          CommonDependenciesDependenciesInnerPathsInnerBuilder
        > {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'hops')
  BuiltList<String> get hops;

  @BuiltValueField(wireName: r'relationTypes')
  BuiltList<String>? get relationTypes;

  /// Relation or dependency label (104 vocabulary)
  @BuiltValueField(wireName: r'weakestEdgeLabel')
  CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  get weakestEdgeLabel;
  // enum weakestEdgeLabelEnum {  confirmed,  likely,  possible,  speculative,  };

  CommonDependenciesDependenciesInnerPathsInner._();

  factory CommonDependenciesDependenciesInnerPathsInner([
    void updates(CommonDependenciesDependenciesInnerPathsInnerBuilder b),
  ]) = _$CommonDependenciesDependenciesInnerPathsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    CommonDependenciesDependenciesInnerPathsInnerBuilder b,
  ) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonDependenciesDependenciesInnerPathsInner>
  get serializer => _$CommonDependenciesDependenciesInnerPathsInnerSerializer();
}

class _$CommonDependenciesDependenciesInnerPathsInnerSerializer
    implements
        PrimitiveSerializer<CommonDependenciesDependenciesInnerPathsInner> {
  @override
  final Iterable<Type> types = const [
    CommonDependenciesDependenciesInnerPathsInner,
    _$CommonDependenciesDependenciesInnerPathsInner,
  ];

  @override
  final String wireName = r'CommonDependenciesDependenciesInnerPathsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonDependenciesDependenciesInnerPathsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'hops';
    yield serializers.serialize(
      object.hops,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.relationTypes != null) {
      yield r'relationTypes';
      yield serializers.serialize(
        object.relationTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'weakestEdgeLabel';
    yield serializers.serialize(
      object.weakestEdgeLabel,
      specifiedType: const FullType(
        CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum,
      ),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonDependenciesDependenciesInnerPathsInner object, {
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
    required CommonDependenciesDependenciesInnerPathsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.from = valueDes;
          break;
        case r'hops':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.hops.replace(valueDes);
          break;
        case r'relationTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.relationTypes.replace(valueDes);
          break;
        case r'weakestEdgeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum,
                    ),
                  )
                  as CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum;
          result.weakestEdgeLabel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommonDependenciesDependenciesInnerPathsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonDependenciesDependenciesInnerPathsInnerBuilder();
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
class CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  confirmed =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'likely')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  likely =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_likely;
  @BuiltValueEnumConst(wireName: r'possible')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  possible =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_possible;
  @BuiltValueEnumConst(wireName: r'speculative')
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  speculative =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_speculative;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  unknownDefaultOpenApi =
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum_unknownDefaultOpenApi;

  static Serializer<
    CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  >
  get serializer =>
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumSerializer;

  const CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum._(
    String name,
  ) : super(name);

  static BuiltSet<
    CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  >
  get values =>
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValues;
  static CommonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnum
  valueOf(String name) =>
      _$commonDependenciesDependenciesInnerPathsInnerWeakestEdgeLabelEnumValueOf(
        name,
      );
}
