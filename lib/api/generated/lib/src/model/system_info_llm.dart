//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_llm.g.dart';

/// SystemInfoLlm
///
/// Properties:
/// * [configured]
/// * [chatProvider]
/// * [embeddingProvider]
/// * [tokensToday]
@BuiltValue()
abstract class SystemInfoLlm
    implements Built<SystemInfoLlm, SystemInfoLlmBuilder> {
  @BuiltValueField(wireName: r'configured')
  bool? get configured;

  @BuiltValueField(wireName: r'chatProvider')
  String? get chatProvider;

  @BuiltValueField(wireName: r'embeddingProvider')
  String? get embeddingProvider;

  @BuiltValueField(wireName: r'tokensToday')
  int? get tokensToday;

  SystemInfoLlm._();

  factory SystemInfoLlm([void updates(SystemInfoLlmBuilder b)]) =
      _$SystemInfoLlm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoLlmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoLlm> get serializer =>
      _$SystemInfoLlmSerializer();
}

class _$SystemInfoLlmSerializer implements PrimitiveSerializer<SystemInfoLlm> {
  @override
  final Iterable<Type> types = const [SystemInfoLlm, _$SystemInfoLlm];

  @override
  final String wireName = r'SystemInfoLlm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoLlm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configured != null) {
      yield r'configured';
      yield serializers.serialize(
        object.configured,
        specifiedType: const FullType(bool),
      );
    }
    if (object.chatProvider != null) {
      yield r'chatProvider';
      yield serializers.serialize(
        object.chatProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.embeddingProvider != null) {
      yield r'embeddingProvider';
      yield serializers.serialize(
        object.embeddingProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokensToday != null) {
      yield r'tokensToday';
      yield serializers.serialize(
        object.tokensToday,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoLlm object, {
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
    required SystemInfoLlmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configured':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.configured = valueDes;
          break;
        case r'chatProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.chatProvider = valueDes;
          break;
        case r'embeddingProvider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.embeddingProvider = valueDes;
          break;
        case r'tokensToday':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.tokensToday = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoLlm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoLlmBuilder();
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
