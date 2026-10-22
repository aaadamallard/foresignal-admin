//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_setup_traccar.g.dart';

/// Traccar Client / OsmAnd settings
///
/// Properties:
/// * [serverUrl] - URL with the key in the path
@BuiltValue()
abstract class IngestDeviceSetupTraccar
    implements
        Built<IngestDeviceSetupTraccar, IngestDeviceSetupTraccarBuilder> {
  /// URL with the key in the path
  @BuiltValueField(wireName: r'serverUrl')
  String? get serverUrl;

  IngestDeviceSetupTraccar._();

  factory IngestDeviceSetupTraccar([
    void updates(IngestDeviceSetupTraccarBuilder b),
  ]) = _$IngestDeviceSetupTraccar;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceSetupTraccarBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceSetupTraccar> get serializer =>
      _$IngestDeviceSetupTraccarSerializer();
}

class _$IngestDeviceSetupTraccarSerializer
    implements PrimitiveSerializer<IngestDeviceSetupTraccar> {
  @override
  final Iterable<Type> types = const [
    IngestDeviceSetupTraccar,
    _$IngestDeviceSetupTraccar,
  ];

  @override
  final String wireName = r'IngestDeviceSetupTraccar';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceSetupTraccar object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.serverUrl != null) {
      yield r'serverUrl';
      yield serializers.serialize(
        object.serverUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceSetupTraccar object, {
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
    required IngestDeviceSetupTraccarBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serverUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serverUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceSetupTraccar deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceSetupTraccarBuilder();
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
