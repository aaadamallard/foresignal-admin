//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/record_mapping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_test_request.g.dart';

/// Optional proposed mapping to test against captured samples; omit to test the stored mapping (059)
///
/// Properties:
/// * [mapping]
@BuiltValue()
abstract class MappingTestRequest
    implements Built<MappingTestRequest, MappingTestRequestBuilder> {
  @BuiltValueField(wireName: r'mapping')
  RecordMapping? get mapping;

  MappingTestRequest._();

  factory MappingTestRequest([void updates(MappingTestRequestBuilder b)]) =
      _$MappingTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingTestRequest> get serializer =>
      _$MappingTestRequestSerializer();
}

class _$MappingTestRequestSerializer
    implements PrimitiveSerializer<MappingTestRequest> {
  @override
  final Iterable<Type> types = const [MappingTestRequest, _$MappingTestRequest];

  @override
  final String wireName = r'MappingTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mapping != null) {
      yield r'mapping';
      yield serializers.serialize(
        object.mapping,
        specifiedType: const FullType.nullable(RecordMapping),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingTestRequest object, {
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
    required MappingTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mapping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecordMapping),
          ) as RecordMapping?;
          if (valueDes == null) continue;
          result.mapping.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingTestRequestBuilder();
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
