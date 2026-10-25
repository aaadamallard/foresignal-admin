//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_input.g.dart';

/// Create a tag; personal tags are visible only to their owner, shared tags default to `instance` visibility
///
/// Properties:
/// * [name]
/// * [namespace]
/// * [color]
/// * [description]
/// * [visibility]
/// * [tlp] - Traffic Light Protocol 2.0 label
@BuiltValue()
abstract class TagInput implements Built<TagInput, TagInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'namespace')
  TagInputNamespaceEnum? get namespace;
  // enum namespaceEnum {  personal,  shared,  };

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'visibility')
  Visibility? get visibility;
  // enum visibilityEnum {  private,  shared,  instance,  };

  /// Traffic Light Protocol 2.0 label
  @BuiltValueField(wireName: r'tlp')
  String? get tlp;

  TagInput._();

  factory TagInput([void updates(TagInputBuilder b)]) = _$TagInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagInput> get serializer => _$TagInputSerializer();
}

class _$TagInputSerializer implements PrimitiveSerializer<TagInput> {
  @override
  final Iterable<Type> types = const [TagInput, _$TagInput];

  @override
  final String wireName = r'TagInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(TagInputNamespaceEnum),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(Visibility),
      );
    }
    if (object.tlp != null) {
      yield r'tlp';
      yield serializers.serialize(
        object.tlp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TagInput object, {
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
    required TagInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'namespace':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TagInputNamespaceEnum,
                    ),
                  )
                  as TagInputNamespaceEnum?;
          if (valueDes == null) continue;
          result.namespace = valueDes;
          break;
        case r'color':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.color = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagInputBuilder();
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

class TagInputNamespaceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'personal')
  static const TagInputNamespaceEnum personal =
      _$tagInputNamespaceEnum_personal;
  @BuiltValueEnumConst(wireName: r'shared')
  static const TagInputNamespaceEnum shared = _$tagInputNamespaceEnum_shared;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TagInputNamespaceEnum unknownDefaultOpenApi =
      _$tagInputNamespaceEnum_unknownDefaultOpenApi;

  static Serializer<TagInputNamespaceEnum> get serializer =>
      _$tagInputNamespaceEnumSerializer;

  const TagInputNamespaceEnum._(String name) : super(name);

  static BuiltSet<TagInputNamespaceEnum> get values =>
      _$tagInputNamespaceEnumValues;
  static TagInputNamespaceEnum valueOf(String name) =>
      _$tagInputNamespaceEnumValueOf(name);
}
