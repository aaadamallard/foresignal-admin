//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'population_pack_import_request.g.dart';

/// Import GHSL GHS-POP GeoTIFF tiles from a path under `${FORESIGNAL_DATA_DIR}/packs`
///
/// Properties:
/// * [path]
@BuiltValue()
abstract class PopulationPackImportRequest
    implements
        Built<PopulationPackImportRequest, PopulationPackImportRequestBuilder> {
  @BuiltValueField(wireName: r'path')
  String get path;

  PopulationPackImportRequest._();

  factory PopulationPackImportRequest(
          [void updates(PopulationPackImportRequestBuilder b)]) =
      _$PopulationPackImportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PopulationPackImportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PopulationPackImportRequest> get serializer =>
      _$PopulationPackImportRequestSerializer();
}

class _$PopulationPackImportRequestSerializer
    implements PrimitiveSerializer<PopulationPackImportRequest> {
  @override
  final Iterable<Type> types = const [
    PopulationPackImportRequest,
    _$PopulationPackImportRequest
  ];

  @override
  final String wireName = r'PopulationPackImportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PopulationPackImportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PopulationPackImportRequest object, {
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
    required PopulationPackImportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PopulationPackImportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PopulationPackImportRequestBuilder();
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
