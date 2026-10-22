//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/projected_impact.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_page.g.dart';

/// Page of projected impacts
///
/// Properties:
/// * [items]
/// * [nextCursor]
@BuiltValue()
abstract class ProjectedImpactPage
    implements Built<ProjectedImpactPage, ProjectedImpactPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ProjectedImpact> get items;

  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  ProjectedImpactPage._();

  factory ProjectedImpactPage([void updates(ProjectedImpactPageBuilder b)]) =
      _$ProjectedImpactPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactPage> get serializer =>
      _$ProjectedImpactPageSerializer();
}

class _$ProjectedImpactPageSerializer
    implements PrimitiveSerializer<ProjectedImpactPage> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactPage,
    _$ProjectedImpactPage
  ];

  @override
  final String wireName = r'ProjectedImpactPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ProjectedImpact)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactPage object, {
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
    required ProjectedImpactPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ProjectedImpact)]),
          ) as BuiltList<ProjectedImpact>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactPageBuilder();
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
