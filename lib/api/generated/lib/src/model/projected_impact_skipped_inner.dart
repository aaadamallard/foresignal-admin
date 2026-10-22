//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'projected_impact_skipped_inner.g.dart';

/// Impact pair skipped (n < 20 or no rate)
///
/// Properties:
/// * [impactFamily]
/// * [regionClass]
/// * [n]
/// * [reason]
@BuiltValue()
abstract class ProjectedImpactSkippedInner
    implements
        Built<ProjectedImpactSkippedInner, ProjectedImpactSkippedInnerBuilder> {
  @BuiltValueField(wireName: r'impactFamily')
  String get impactFamily;

  @BuiltValueField(wireName: r'regionClass')
  String? get regionClass;

  @BuiltValueField(wireName: r'n')
  int? get n;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  ProjectedImpactSkippedInner._();

  factory ProjectedImpactSkippedInner(
          [void updates(ProjectedImpactSkippedInnerBuilder b)]) =
      _$ProjectedImpactSkippedInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectedImpactSkippedInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectedImpactSkippedInner> get serializer =>
      _$ProjectedImpactSkippedInnerSerializer();
}

class _$ProjectedImpactSkippedInnerSerializer
    implements PrimitiveSerializer<ProjectedImpactSkippedInner> {
  @override
  final Iterable<Type> types = const [
    ProjectedImpactSkippedInner,
    _$ProjectedImpactSkippedInner
  ];

  @override
  final String wireName = r'ProjectedImpactSkippedInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectedImpactSkippedInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'impactFamily';
    yield serializers.serialize(
      object.impactFamily,
      specifiedType: const FullType(String),
    );
    if (object.regionClass != null) {
      yield r'regionClass';
      yield serializers.serialize(
        object.regionClass,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectedImpactSkippedInner object, {
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
    required ProjectedImpactSkippedInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'impactFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.impactFamily = valueDes;
          break;
        case r'regionClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.regionClass = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.n = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectedImpactSkippedInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectedImpactSkippedInnerBuilder();
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
