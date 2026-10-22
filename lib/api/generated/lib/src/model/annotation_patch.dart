//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_patch.g.dart';

/// JSON merge patch for an annotation (author or admin)
///
/// Properties:
/// * [verdict]
/// * [duplicateOfRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [body]
/// * [tags]
/// * [private]
@BuiltValue()
abstract class AnnotationPatch
    implements Built<AnnotationPatch, AnnotationPatchBuilder> {
  @BuiltValueField(wireName: r'verdict')
  AnnotationPatchVerdictEnum? get verdict;
  // enum verdictEnum {  confirmed,  rejected,  needs-review,  duplicate-of,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'duplicateOfRef')
  String? get duplicateOfRef;

  @BuiltValueField(wireName: r'body')
  String? get body;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'private')
  bool? get private;

  AnnotationPatch._();

  factory AnnotationPatch([void updates(AnnotationPatchBuilder b)]) =
      _$AnnotationPatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationPatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationPatch> get serializer =>
      _$AnnotationPatchSerializer();
}

class _$AnnotationPatchSerializer
    implements PrimitiveSerializer<AnnotationPatch> {
  @override
  final Iterable<Type> types = const [AnnotationPatch, _$AnnotationPatch];

  @override
  final String wireName = r'AnnotationPatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationPatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(AnnotationPatchVerdictEnum),
      );
    }
    if (object.duplicateOfRef != null) {
      yield r'duplicateOfRef';
      yield serializers.serialize(
        object.duplicateOfRef,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.private != null) {
      yield r'private';
      yield serializers.serialize(
        object.private,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationPatch object, {
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
    required AnnotationPatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verdict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnnotationPatchVerdictEnum),
          ) as AnnotationPatchVerdictEnum?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        case r'duplicateOfRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.duplicateOfRef = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationPatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationPatchBuilder();
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

class AnnotationPatchVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const AnnotationPatchVerdictEnum confirmed =
      _$annotationPatchVerdictEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AnnotationPatchVerdictEnum rejected =
      _$annotationPatchVerdictEnum_rejected;
  @BuiltValueEnumConst(wireName: r'needs-review')
  static const AnnotationPatchVerdictEnum needsReview =
      _$annotationPatchVerdictEnum_needsReview;
  @BuiltValueEnumConst(wireName: r'duplicate-of')
  static const AnnotationPatchVerdictEnum duplicateOf =
      _$annotationPatchVerdictEnum_duplicateOf;

  static Serializer<AnnotationPatchVerdictEnum> get serializer =>
      _$annotationPatchVerdictEnumSerializer;

  const AnnotationPatchVerdictEnum._(String name) : super(name);

  static BuiltSet<AnnotationPatchVerdictEnum> get values =>
      _$annotationPatchVerdictEnumValues;
  static AnnotationPatchVerdictEnum valueOf(String name) =>
      _$annotationPatchVerdictEnumValueOf(name);
}
