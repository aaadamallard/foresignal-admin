//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_setup_overland.g.dart';

/// Overland settings
///
/// Properties:
/// * [endpoint]
/// * [token]
@BuiltValue()
abstract class IngestDeviceSetupOverland
    implements
        Built<IngestDeviceSetupOverland, IngestDeviceSetupOverlandBuilder> {
  @BuiltValueField(wireName: r'endpoint')
  String? get endpoint;

  @BuiltValueField(wireName: r'token')
  String? get token;

  IngestDeviceSetupOverland._();

  factory IngestDeviceSetupOverland(
          [void updates(IngestDeviceSetupOverlandBuilder b)]) =
      _$IngestDeviceSetupOverland;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceSetupOverlandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceSetupOverland> get serializer =>
      _$IngestDeviceSetupOverlandSerializer();
}

class _$IngestDeviceSetupOverlandSerializer
    implements PrimitiveSerializer<IngestDeviceSetupOverland> {
  @override
  final Iterable<Type> types = const [
    IngestDeviceSetupOverland,
    _$IngestDeviceSetupOverland
  ];

  @override
  final String wireName = r'IngestDeviceSetupOverland';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceSetupOverland object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.endpoint != null) {
      yield r'endpoint';
      yield serializers.serialize(
        object.endpoint,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceSetupOverland object, {
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
    required IngestDeviceSetupOverlandBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endpoint = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceSetupOverland deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceSetupOverlandBuilder();
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
