//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation.g.dart';

/// A note or verdict on any object (labels use 130 tags)
///
/// Properties:
/// * [id] - ULID identifier
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [targetRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [kind]
/// * [verdict]
/// * [duplicateOfRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [body]
/// * [tags]
/// * [author] - Principal id
/// * [private]
/// * [statusApplied] - A rejected verdict with `applyStatus` dismissed the target
/// * [createdAt]
/// * [updatedAt]
/// * [deletedAt]
/// * [parentId] - Root annotation for replies (threads)
/// * [mentions] - Principal handles parsed from `@handle`
/// * [droppedMentions] - Mentions dropped because the principal cannot see the target (returned to the author only)
/// * [resolved] - Thread resolved (root annotations)
/// * [editedAt]
/// * [tlp] - Traffic Light Protocol 2.0 label
/// * [visibility]
@BuiltValue()
abstract class Annotation implements Built<Annotation, AnnotationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'targetRef')
  String get targetRef;

  @BuiltValueField(wireName: r'kind')
  AnnotationKindEnum get kind;
  // enum kindEnum {  note,  verdict,  };

  @BuiltValueField(wireName: r'verdict')
  AnnotationVerdictEnum? get verdict;
  // enum verdictEnum {  confirmed,  rejected,  needs-review,  duplicate-of,  };

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'duplicateOfRef')
  String? get duplicateOfRef;

  @BuiltValueField(wireName: r'body')
  String? get body;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Principal id
  @BuiltValueField(wireName: r'author')
  String get author;

  @BuiltValueField(wireName: r'private')
  bool get private;

  /// A rejected verdict with `applyStatus` dismissed the target
  @BuiltValueField(wireName: r'statusApplied')
  bool? get statusApplied;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'deletedAt')
  DateTime? get deletedAt;

  /// Root annotation for replies (threads)
  @BuiltValueField(wireName: r'parentId')
  String? get parentId;

  /// Principal handles parsed from `@handle`
  @BuiltValueField(wireName: r'mentions')
  BuiltList<String>? get mentions;

  /// Mentions dropped because the principal cannot see the target (returned to the author only)
  @BuiltValueField(wireName: r'droppedMentions')
  BuiltList<String>? get droppedMentions;

  /// Thread resolved (root annotations)
  @BuiltValueField(wireName: r'resolved')
  bool? get resolved;

  @BuiltValueField(wireName: r'editedAt')
  DateTime? get editedAt;

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  Annotation._();

  factory Annotation([void updates(AnnotationBuilder b)]) = _$Annotation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Annotation> get serializer => _$AnnotationSerializer();
}

class _$AnnotationSerializer implements PrimitiveSerializer<Annotation> {
  @override
  final Iterable<Type> types = const [Annotation, _$Annotation];

  @override
  final String wireName = r'Annotation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Annotation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType(String),
      );
    }
    yield r'targetRef';
    yield serializers.serialize(
      object.targetRef,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AnnotationKindEnum),
    );
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType.nullable(AnnotationVerdictEnum),
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
    yield r'author';
    yield serializers.serialize(
      object.author,
      specifiedType: const FullType(String),
    );
    yield r'private';
    yield serializers.serialize(
      object.private,
      specifiedType: const FullType(bool),
    );
    if (object.statusApplied != null) {
      yield r'statusApplied';
      yield serializers.serialize(
        object.statusApplied,
        specifiedType: const FullType(bool),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.deletedAt != null) {
      yield r'deletedAt';
      yield serializers.serialize(
        object.deletedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.parentId != null) {
      yield r'parentId';
      yield serializers.serialize(
        object.parentId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mentions != null) {
      yield r'mentions';
      yield serializers.serialize(
        object.mentions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.droppedMentions != null) {
      yield r'droppedMentions';
      yield serializers.serialize(
        object.droppedMentions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.resolved != null) {
      yield r'resolved';
      yield serializers.serialize(
        object.resolved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.editedAt != null) {
      yield r'editedAt';
      yield serializers.serialize(
        object.editedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Annotation object, {
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
    required AnnotationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'targetRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.targetRef = valueDes;
          break;
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnnotationKindEnum),
                  )
                  as AnnotationKindEnum;
          result.kind = valueDes;
          break;
        case r'verdict':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnnotationVerdictEnum,
                    ),
                  )
                  as AnnotationVerdictEnum?;
          if (valueDes == null) continue;
          result.verdict = valueDes;
          break;
        case r'duplicateOfRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.duplicateOfRef = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'tags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'author':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.author = valueDes;
          break;
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.private = valueDes;
          break;
        case r'statusApplied':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.statusApplied = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'deletedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.deletedAt = valueDes;
          break;
        case r'parentId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.parentId = valueDes;
          break;
        case r'mentions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.mentions.replace(valueDes);
          break;
        case r'droppedMentions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.droppedMentions.replace(valueDes);
          break;
        case r'resolved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.resolved = valueDes;
          break;
        case r'editedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.editedAt = valueDes;
          break;
        case r'tlp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tlp = valueDes;
          break;
        case r'visibility':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Visibility),
                  )
                  as Visibility?;
          if (valueDes == null) continue;
          result.visibility = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Annotation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationBuilder();
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

class AnnotationKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'note')
  static const AnnotationKindEnum note = _$annotationKindEnum_note;
  @BuiltValueEnumConst(wireName: r'verdict')
  static const AnnotationKindEnum verdict = _$annotationKindEnum_verdict;

  static Serializer<AnnotationKindEnum> get serializer =>
      _$annotationKindEnumSerializer;

  const AnnotationKindEnum._(String name) : super(name);

  static BuiltSet<AnnotationKindEnum> get values => _$annotationKindEnumValues;
  static AnnotationKindEnum valueOf(String name) =>
      _$annotationKindEnumValueOf(name);
}

class AnnotationVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const AnnotationVerdictEnum confirmed =
      _$annotationVerdictEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AnnotationVerdictEnum rejected =
      _$annotationVerdictEnum_rejected;
  @BuiltValueEnumConst(wireName: r'needs-review')
  static const AnnotationVerdictEnum needsReview =
      _$annotationVerdictEnum_needsReview;
  @BuiltValueEnumConst(wireName: r'duplicate-of')
  static const AnnotationVerdictEnum duplicateOf =
      _$annotationVerdictEnum_duplicateOf;

  static Serializer<AnnotationVerdictEnum> get serializer =>
      _$annotationVerdictEnumSerializer;

  const AnnotationVerdictEnum._(String name) : super(name);

  static BuiltSet<AnnotationVerdictEnum> get values =>
      _$annotationVerdictEnumValues;
  static AnnotationVerdictEnum valueOf(String name) =>
      _$annotationVerdictEnumValueOf(name);
}
