//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/record_mapping.dart';
import 'package:foresignal_api/src/model/mapping_sample.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_preview_request.g.dart';

/// Preview request: a mapping and a sample, optionally checked against an existing custom source (059)
///
/// Properties:
/// * [mapping]
/// * [sample]
/// * [sourceId] - Custom source whose kinds, fieldSpecs, policy and observedAtMode are checked
@BuiltValue()
abstract class MappingPreviewRequest
    implements Built<MappingPreviewRequest, MappingPreviewRequestBuilder> {
  @BuiltValueField(wireName: r'mapping')
  RecordMapping get mapping;

  @BuiltValueField(wireName: r'sample')
  MappingSample get sample;

  /// Custom source whose kinds, fieldSpecs, policy and observedAtMode are checked
  @BuiltValueField(wireName: r'sourceId')
  String? get sourceId;

  MappingPreviewRequest._();

  factory MappingPreviewRequest([
    void updates(MappingPreviewRequestBuilder b),
  ]) = _$MappingPreviewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingPreviewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingPreviewRequest> get serializer =>
      _$MappingPreviewRequestSerializer();
}

class _$MappingPreviewRequestSerializer
    implements PrimitiveSerializer<MappingPreviewRequest> {
  @override
  final Iterable<Type> types = const [
    MappingPreviewRequest,
    _$MappingPreviewRequest,
  ];

  @override
  final String wireName = r'MappingPreviewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingPreviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mapping';
    yield serializers.serialize(
      object.mapping,
      specifiedType: const FullType(RecordMapping),
    );
    yield r'sample';
    yield serializers.serialize(
      object.sample,
      specifiedType: const FullType(MappingSample),
    );
    if (object.sourceId != null) {
      yield r'sourceId';
      yield serializers.serialize(
        object.sourceId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingPreviewRequest object, {
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
    required MappingPreviewRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mapping':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RecordMapping),
                  )
                  as RecordMapping;
          result.mapping.replace(valueDes);
          break;
        case r'sample':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(MappingSample),
                  )
                  as MappingSample;
          result.sample.replace(valueDes);
          break;
        case r'sourceId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.sourceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingPreviewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingPreviewRequestBuilder();
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
