//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_exposed_assets_inner.g.dart';

/// Exposed facility, place or area
///
/// Properties:
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [title]
/// * [kind]
/// * [pHazard]
/// * [distanceKm]
/// * [population]
/// * [band] - The published band at the asset
@BuiltValue()
abstract class ProjectedImpactExposedAssetsInner
    implements
        Built<
          ProjectedImpactExposedAssetsInner,
          ProjectedImpactExposedAssetsInnerBuilder
        > {
  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String get ref;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'pHazard')
  num get pHazard;

  @BuiltValueField(wireName: r'distanceKm')
  num? get distanceKm;

  @BuiltValueField(wireName: r'population')
  int? get population;

  /// The published band at the asset
  @BuiltValueField(wireName: r'band')
  String? get band;

  ProjectedImpactExposedAssetsInner._();

  factory ProjectedImpactExposedAssetsInner([
    void updates(ProjectedImpactExposedAssetsInnerBuilder b),
  ]) = _$ProjectedImpactExposedAssetsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactExposedAssetsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactExposedAssetsInner> get serializer =>
      _$ProjectedImpactExposedAssetsInnerSerializer();
}

class _$ProjectedImpactExposedAssetsInnerSerializer
    implements PrimitiveSerializer<ProjectedImpactExposedAssetsInner> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactExposedAssetsInner,
    _$ProjectedImpactExposedAssetsInner,
  ];

  @override
  final String wireName = r'ProjectedImpactExposedAssetsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactExposedAssetsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ref';
    yield serializers.serialize(
      object.ref,
      specifiedType: const FullType(String),
    );
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'pHazard';
    yield serializers.serialize(
      object.pHazard,
      specifiedType: const FullType(num),
    );
    if (object.distanceKm != null) {
      yield r'distanceKm';
      yield serializers.serialize(
        object.distanceKm,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.population != null) {
      yield r'population';
      yield serializers.serialize(
        object.population,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.band != null) {
      yield r'band';
      yield serializers.serialize(
        object.band,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactExposedAssetsInner object, {
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
    required ProjectedImpactExposedAssetsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.ref = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.kind = valueDes;
          break;
        case r'pHazard':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.pHazard = valueDes;
          break;
        case r'distanceKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.distanceKm = valueDes;
          break;
        case r'population':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.population = valueDes;
          break;
        case r'band':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.band = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactExposedAssetsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactExposedAssetsInnerBuilder();
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
