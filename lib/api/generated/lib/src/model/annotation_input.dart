//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annotation_input.g.dart';

/// A new annotation; verdicts need agent scope. There is no tag kind: label objects with 130 tags; a note may carry free tags.
///
/// Properties:
/// * [kind]
/// * [verdict]
/// * [duplicateOfRef] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [body]
/// * [tags]
/// * [private]
/// * [applyStatus] - Agent scope: a `rejected` verdict also dismisses the finding or intel event
@BuiltValue()
abstract class AnnotationInput
    implements Built<AnnotationInput, AnnotationInputBuilder> {
  @BuiltValueField(wireName: r'kind')
  AnnotationInputKindEnum get kind;
  // enum kindEnum {  note,  verdict,  };

  @BuiltValueField(wireName: r'verdict')
  AnnotationInputVerdictEnum? get verdict;
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

  /// Agent scope: a `rejected` verdict also dismisses the finding or intel event
  @BuiltValueField(wireName: r'applyStatus')
  bool? get applyStatus;

  AnnotationInput._();

  factory AnnotationInput([void updates(AnnotationInputBuilder b)]) =
      _$AnnotationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnotationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnotationInput> get serializer =>
      _$AnnotationInputSerializer();
}

class _$AnnotationInputSerializer
    implements PrimitiveSerializer<AnnotationInput> {
  @override
  final Iterable<Type> types = const [AnnotationInput, _$AnnotationInput];

  @override
  final String wireName = r'AnnotationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnotationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(AnnotationInputKindEnum),
    );
    if (object.verdict != null) {
      yield r'verdict';
      yield serializers.serialize(
        object.verdict,
        specifiedType: const FullType(AnnotationInputVerdictEnum),
      );
    }
    if (object.duplicateOfRef != null) {
      yield r'duplicateOfRef';
      yield serializers.serialize(
        object.duplicateOfRef,
        specifiedType: const FullType(String),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType(String),
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
    if (object.applyStatus != null) {
      yield r'applyStatus';
      yield serializers.serialize(
        object.applyStatus,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnotationInput object, {
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
    required AnnotationInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AnnotationInputKindEnum),
                  )
                  as AnnotationInputKindEnum;
          result.kind = valueDes;
          break;
        case r'verdict':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AnnotationInputVerdictEnum,
                    ),
                  )
                  as AnnotationInputVerdictEnum?;
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
        case r'private':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.private = valueDes;
          break;
        case r'applyStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.applyStatus = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnotationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnotationInputBuilder();
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

class AnnotationInputKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'note')
  static const AnnotationInputKindEnum note = _$annotationInputKindEnum_note;
  @BuiltValueEnumConst(wireName: r'verdict')
  static const AnnotationInputKindEnum verdict =
      _$annotationInputKindEnum_verdict;

  static Serializer<AnnotationInputKindEnum> get serializer =>
      _$annotationInputKindEnumSerializer;

  const AnnotationInputKindEnum._(String name) : super(name);

  static BuiltSet<AnnotationInputKindEnum> get values =>
      _$annotationInputKindEnumValues;
  static AnnotationInputKindEnum valueOf(String name) =>
      _$annotationInputKindEnumValueOf(name);
}

class AnnotationInputVerdictEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const AnnotationInputVerdictEnum confirmed =
      _$annotationInputVerdictEnum_confirmed;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AnnotationInputVerdictEnum rejected =
      _$annotationInputVerdictEnum_rejected;
  @BuiltValueEnumConst(wireName: r'needs-review')
  static const AnnotationInputVerdictEnum needsReview =
      _$annotationInputVerdictEnum_needsReview;
  @BuiltValueEnumConst(wireName: r'duplicate-of')
  static const AnnotationInputVerdictEnum duplicateOf =
      _$annotationInputVerdictEnum_duplicateOf;

  static Serializer<AnnotationInputVerdictEnum> get serializer =>
      _$annotationInputVerdictEnumSerializer;

  const AnnotationInputVerdictEnum._(String name) : super(name);

  static BuiltSet<AnnotationInputVerdictEnum> get values =>
      _$annotationInputVerdictEnumValues;
  static AnnotationInputVerdictEnum valueOf(String name) =>
      _$annotationInputVerdictEnumValueOf(name);
}
