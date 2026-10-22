//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/base_rate_definition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_rate_input.g.dart';

/// Store a custom base-rate definition
///
/// Properties:
/// * [name]
/// * [definition]
@BuiltValue()
abstract class BaseRateInput
    implements Built<BaseRateInput, BaseRateInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'definition')
  BaseRateDefinition get definition;

  BaseRateInput._();

  factory BaseRateInput([void updates(BaseRateInputBuilder b)]) =
      _$BaseRateInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseRateInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseRateInput> get serializer =>
      _$BaseRateInputSerializer();
}

class _$BaseRateInputSerializer implements PrimitiveSerializer<BaseRateInput> {
  @override
  final Iterable<Type> types = const [BaseRateInput, _$BaseRateInput];

  @override
  final String wireName = r'BaseRateInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseRateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'definition';
    yield serializers.serialize(
      object.definition,
      specifiedType: const FullType(BaseRateDefinition),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseRateInput object, {
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
    required BaseRateInputBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'definition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BaseRateDefinition),
                  )
                  as BaseRateDefinition;
          result.definition.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseRateInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseRateInputBuilder();
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
