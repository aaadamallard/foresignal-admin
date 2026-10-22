//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_run_roles_inner_prompt_template.g.dart';

/// 116 prompt template
///
/// Properties:
/// * [id]
/// * [version]
@BuiltValue()
abstract class CycleRunRolesInnerPromptTemplate
    implements
        Built<CycleRunRolesInnerPromptTemplate,
            CycleRunRolesInnerPromptTemplateBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'version')
  String get version;

  CycleRunRolesInnerPromptTemplate._();

  factory CycleRunRolesInnerPromptTemplate(
          [void updates(CycleRunRolesInnerPromptTemplateBuilder b)]) =
      _$CycleRunRolesInnerPromptTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CycleRunRolesInnerPromptTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CycleRunRolesInnerPromptTemplate> get serializer =>
      _$CycleRunRolesInnerPromptTemplateSerializer();
}

class _$CycleRunRolesInnerPromptTemplateSerializer
    implements PrimitiveSerializer<CycleRunRolesInnerPromptTemplate> {
  @override
  final Iterable<Type> types = const [
    CycleRunRolesInnerPromptTemplate,
    _$CycleRunRolesInnerPromptTemplate
  ];

  @override
  final String wireName = r'CycleRunRolesInnerPromptTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CycleRunRolesInnerPromptTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CycleRunRolesInnerPromptTemplate object, {
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
    required CycleRunRolesInnerPromptTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CycleRunRolesInnerPromptTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CycleRunRolesInnerPromptTemplateBuilder();
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
