//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_provider_input_config.dart';
import 'package:foresignal_api/src/model/push_provider_input_secrets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_provider_input.g.dart';

/// Create or replace a native push provider (032); omitted `secrets` keep the stored ones
///
/// Properties:
/// * [type]
/// * [appIds] - Bundle ids / Android package names served by this key
/// * [config]
/// * [secrets]
/// * [enabled]
@BuiltValue()
abstract class PushProviderInput
    implements Built<PushProviderInput, PushProviderInputBuilder> {
  @BuiltValueField(wireName: r'type')
  PushProviderInputTypeEnum get type;
  // enum typeEnum {  apns,  fcm,  };

  /// Bundle ids / Android package names served by this key
  @BuiltValueField(wireName: r'appIds')
  BuiltList<String> get appIds;

  @BuiltValueField(wireName: r'config')
  PushProviderInputConfig get config;

  @BuiltValueField(wireName: r'secrets')
  PushProviderInputSecrets? get secrets;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  PushProviderInput._();

  factory PushProviderInput([void updates(PushProviderInputBuilder b)]) =
      _$PushProviderInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushProviderInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushProviderInput> get serializer =>
      _$PushProviderInputSerializer();
}

class _$PushProviderInputSerializer
    implements PrimitiveSerializer<PushProviderInput> {
  @override
  final Iterable<Type> types = const [PushProviderInput, _$PushProviderInput];

  @override
  final String wireName = r'PushProviderInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushProviderInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PushProviderInputTypeEnum),
    );
    yield r'appIds';
    yield serializers.serialize(
      object.appIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(PushProviderInputConfig),
    );
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(PushProviderInputSecrets),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushProviderInput object, {
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
    required PushProviderInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PushProviderInputTypeEnum),
          ) as PushProviderInputTypeEnum;
          result.type = valueDes;
          break;
        case r'appIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.appIds.replace(valueDes);
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PushProviderInputConfig),
          ) as PushProviderInputConfig;
          result.config.replace(valueDes);
          break;
        case r'secrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PushProviderInputSecrets),
          ) as PushProviderInputSecrets?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushProviderInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushProviderInputBuilder();
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

class PushProviderInputTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'apns')
  static const PushProviderInputTypeEnum apns =
      _$pushProviderInputTypeEnum_apns;
  @BuiltValueEnumConst(wireName: r'fcm')
  static const PushProviderInputTypeEnum fcm = _$pushProviderInputTypeEnum_fcm;

  static Serializer<PushProviderInputTypeEnum> get serializer =>
      _$pushProviderInputTypeEnumSerializer;

  const PushProviderInputTypeEnum._(String name) : super(name);

  static BuiltSet<PushProviderInputTypeEnum> get values =>
      _$pushProviderInputTypeEnumValues;
  static PushProviderInputTypeEnum valueOf(String name) =>
      _$pushProviderInputTypeEnumValueOf(name);
}
