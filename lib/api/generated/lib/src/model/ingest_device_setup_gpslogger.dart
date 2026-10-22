//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_setup_gpslogger.g.dart';

/// GPSLogger custom URL
///
/// Properties:
/// * [urlTemplate]
/// * [method]
@BuiltValue()
abstract class IngestDeviceSetupGpslogger
    implements
        Built<IngestDeviceSetupGpslogger, IngestDeviceSetupGpsloggerBuilder> {
  @BuiltValueField(wireName: r'urlTemplate')
  String? get urlTemplate;

  @BuiltValueField(wireName: r'method')
  String? get method;

  IngestDeviceSetupGpslogger._();

  factory IngestDeviceSetupGpslogger(
          [void updates(IngestDeviceSetupGpsloggerBuilder b)]) =
      _$IngestDeviceSetupGpslogger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceSetupGpsloggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceSetupGpslogger> get serializer =>
      _$IngestDeviceSetupGpsloggerSerializer();
}

class _$IngestDeviceSetupGpsloggerSerializer
    implements PrimitiveSerializer<IngestDeviceSetupGpslogger> {
  @override
  final Iterable<Type> types = const [
    IngestDeviceSetupGpslogger,
    _$IngestDeviceSetupGpslogger
  ];

  @override
  final String wireName = r'IngestDeviceSetupGpslogger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceSetupGpslogger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.urlTemplate != null) {
      yield r'urlTemplate';
      yield serializers.serialize(
        object.urlTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceSetupGpslogger object, {
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
    required IngestDeviceSetupGpsloggerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'urlTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.urlTemplate = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceSetupGpslogger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceSetupGpsloggerBuilder();
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
