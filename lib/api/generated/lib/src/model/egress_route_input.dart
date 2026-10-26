//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/egress_route_input_secrets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_route_input.g.dart';

/// Create or replace an egress route; credentials and WireGuard config are write-only and stored encrypted
///
/// Properties:
/// * [name]
/// * [type]
/// * [enabled]
/// * [url]
/// * [boundInterface]
/// * [secrets]
@BuiltValue()
abstract class EgressRouteInput
    implements Built<EgressRouteInput, EgressRouteInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'boundInterface')
  String? get boundInterface;

  @BuiltValueField(wireName: r'secrets')
  EgressRouteInputSecrets? get secrets;

  EgressRouteInput._();

  factory EgressRouteInput([void updates(EgressRouteInputBuilder b)]) =
      _$EgressRouteInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressRouteInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressRouteInput> get serializer =>
      _$EgressRouteInputSerializer();
}

class _$EgressRouteInputSerializer
    implements PrimitiveSerializer<EgressRouteInput> {
  @override
  final Iterable<Type> types = const [EgressRouteInput, _$EgressRouteInput];

  @override
  final String wireName = r'EgressRouteInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressRouteInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.boundInterface != null) {
      yield r'boundInterface';
      yield serializers.serialize(
        object.boundInterface,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(EgressRouteInputSecrets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressRouteInput object, {
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
    required EgressRouteInputBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'boundInterface':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.boundInterface = valueDes;
          break;
        case r'secrets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EgressRouteInputSecrets,
                    ),
                  )
                  as EgressRouteInputSecrets?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressRouteInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressRouteInputBuilder();
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
