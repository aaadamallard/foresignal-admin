//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/push_provider_input_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'push_provider.g.dart';

/// A native push provider; secrets are never returned (032)
///
/// Properties:
/// * [id]
/// * [type]
/// * [appIds]
/// * [config]
/// * [secretFields] - Names of secrets that are set
/// * [enabled]
/// * [lastTestAt]
/// * [lastError]
/// * [updatedAt]
@BuiltValue()
abstract class PushProvider
    implements Built<PushProvider, PushProviderBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'type')
  PushProviderTypeEnum get type;
  // enum typeEnum {  apns,  fcm,  };

  @BuiltValueField(wireName: r'appIds')
  BuiltList<String> get appIds;

  @BuiltValueField(wireName: r'config')
  PushProviderInputConfig get config;

  /// Names of secrets that are set
  @BuiltValueField(wireName: r'secretFields')
  BuiltList<String>? get secretFields;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'lastTestAt')
  DateTime? get lastTestAt;

  @BuiltValueField(wireName: r'lastError')
  String? get lastError;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  PushProvider._();

  factory PushProvider([void updates(PushProviderBuilder b)]) = _$PushProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PushProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PushProvider> get serializer => _$PushProviderSerializer();
}

class _$PushProviderSerializer implements PrimitiveSerializer<PushProvider> {
  @override
  final Iterable<Type> types = const [PushProvider, _$PushProvider];

  @override
  final String wireName = r'PushProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PushProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(PushProviderTypeEnum),
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
    if (object.secretFields != null) {
      yield r'secretFields';
      yield serializers.serialize(
        object.secretFields,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.lastTestAt != null) {
      yield r'lastTestAt';
      yield serializers.serialize(
        object.lastTestAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastError != null) {
      yield r'lastError';
      yield serializers.serialize(
        object.lastError,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PushProvider object, {
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
    required PushProviderBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushProviderTypeEnum),
                  )
                  as PushProviderTypeEnum;
          result.type = valueDes;
          break;
        case r'appIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.appIds.replace(valueDes);
          break;
        case r'config':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PushProviderInputConfig),
                  )
                  as PushProviderInputConfig;
          result.config.replace(valueDes);
          break;
        case r'secretFields':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretFields.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'lastTestAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastTestAt = valueDes;
          break;
        case r'lastError':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastError = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PushProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PushProviderBuilder();
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

class PushProviderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'apns')
  static const PushProviderTypeEnum apns = _$pushProviderTypeEnum_apns;
  @BuiltValueEnumConst(wireName: r'fcm')
  static const PushProviderTypeEnum fcm = _$pushProviderTypeEnum_fcm;

  static Serializer<PushProviderTypeEnum> get serializer =>
      _$pushProviderTypeEnumSerializer;

  const PushProviderTypeEnum._(String name) : super(name);

  static BuiltSet<PushProviderTypeEnum> get values =>
      _$pushProviderTypeEnumValues;
  static PushProviderTypeEnum valueOf(String name) =>
      _$pushProviderTypeEnumValueOf(name);
}
