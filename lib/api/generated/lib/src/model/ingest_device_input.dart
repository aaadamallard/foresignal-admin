//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_device_input.g.dart';

/// Create a device-scoped ingest key bound to one entity (039)
///
/// Properties:
/// * [externalId] - Forced externalId for everything this key ingests
/// * [name]
@BuiltValue()
abstract class IngestDeviceInput
    implements Built<IngestDeviceInput, IngestDeviceInputBuilder> {
  /// Forced externalId for everything this key ingests
  @BuiltValueField(wireName: r'externalId')
  String get externalId;

  @BuiltValueField(wireName: r'name')
  String get name;

  IngestDeviceInput._();

  factory IngestDeviceInput([void updates(IngestDeviceInputBuilder b)]) =
      _$IngestDeviceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestDeviceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestDeviceInput> get serializer =>
      _$IngestDeviceInputSerializer();
}

class _$IngestDeviceInputSerializer
    implements PrimitiveSerializer<IngestDeviceInput> {
  @override
  final Iterable<Type> types = const [IngestDeviceInput, _$IngestDeviceInput];

  @override
  final String wireName = r'IngestDeviceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestDeviceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'externalId';
    yield serializers.serialize(
      object.externalId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestDeviceInput object, {
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
    required IngestDeviceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'externalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestDeviceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestDeviceInputBuilder();
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
