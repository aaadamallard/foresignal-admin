//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/common_dependencies_dependencies_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'common_dependencies.g.dart';

/// Facilities and infrastructure shared through `depends-on` and `located-in` paths
///
/// Properties:
/// * [refs]
/// * [asOf]
/// * [generatedAt]
/// * [dependencies]
@BuiltValue()
abstract class CommonDependencies
    implements Built<CommonDependencies, CommonDependenciesBuilder> {
  @BuiltValueField(wireName: r'refs')
  BuiltList<String> get refs;

  @BuiltValueField(wireName: r'asOf')
  DateTime? get asOf;

  @BuiltValueField(wireName: r'generatedAt')
  DateTime? get generatedAt;

  @BuiltValueField(wireName: r'dependencies')
  BuiltList<CommonDependenciesDependenciesInner> get dependencies;

  CommonDependencies._();

  factory CommonDependencies([void updates(CommonDependenciesBuilder b)]) =
      _$CommonDependencies;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommonDependenciesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommonDependencies> get serializer =>
      _$CommonDependenciesSerializer();
}

class _$CommonDependenciesSerializer
    implements PrimitiveSerializer<CommonDependencies> {
  @override
  final Iterable<Type> types = const [CommonDependencies, _$CommonDependencies];

  @override
  final String wireName = r'CommonDependencies';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommonDependencies object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refs';
    yield serializers.serialize(
      object.refs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.asOf != null) {
      yield r'asOf';
      yield serializers.serialize(
        object.asOf,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.generatedAt != null) {
      yield r'generatedAt';
      yield serializers.serialize(
        object.generatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'dependencies';
    yield serializers.serialize(
      object.dependencies,
      specifiedType: const FullType(
          BuiltList, [FullType(CommonDependenciesDependenciesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CommonDependencies object, {
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
    required CommonDependenciesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.refs.replace(valueDes);
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.asOf = valueDes;
          break;
        case r'generatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.generatedAt = valueDes;
          break;
        case r'dependencies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(CommonDependenciesDependenciesInner)]),
          ) as BuiltList<CommonDependenciesDependenciesInner>;
          result.dependencies.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommonDependencies deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonDependenciesBuilder();
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
