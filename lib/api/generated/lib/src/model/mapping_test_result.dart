//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/mapping_test_result_samples_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_test_result.g.dart';

/// Mapping applied to each captured sample (059)
///
/// Properties:
/// * [mappingSource]
/// * [samples]
@BuiltValue()
abstract class MappingTestResult
    implements Built<MappingTestResult, MappingTestResultBuilder> {
  @BuiltValueField(wireName: r'mappingSource')
  MappingTestResultMappingSourceEnum get mappingSource;
  // enum mappingSourceEnum {  stored,  proposed,  };

  @BuiltValueField(wireName: r'samples')
  BuiltList<MappingTestResultSamplesInner> get samples;

  MappingTestResult._();

  factory MappingTestResult([void updates(MappingTestResultBuilder b)]) =
      _$MappingTestResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingTestResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingTestResult> get serializer =>
      _$MappingTestResultSerializer();
}

class _$MappingTestResultSerializer
    implements PrimitiveSerializer<MappingTestResult> {
  @override
  final Iterable<Type> types = const [MappingTestResult, _$MappingTestResult];

  @override
  final String wireName = r'MappingTestResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingTestResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mappingSource';
    yield serializers.serialize(
      object.mappingSource,
      specifiedType: const FullType(MappingTestResultMappingSourceEnum),
    );
    yield r'samples';
    yield serializers.serialize(
      object.samples,
      specifiedType: const FullType(BuiltList, [
        FullType(MappingTestResultSamplesInner),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingTestResult object, {
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
    required MappingTestResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mappingSource':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      MappingTestResultMappingSourceEnum,
                    ),
                  )
                  as MappingTestResultMappingSourceEnum;
          result.mappingSource = valueDes;
          break;
        case r'samples':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(MappingTestResultSamplesInner),
                    ]),
                  )
                  as BuiltList<MappingTestResultSamplesInner>;
          result.samples.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingTestResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingTestResultBuilder();
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

class MappingTestResultMappingSourceEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'stored')
  static const MappingTestResultMappingSourceEnum stored =
      _$mappingTestResultMappingSourceEnum_stored;
  @BuiltValueEnumConst(wireName: r'proposed')
  static const MappingTestResultMappingSourceEnum proposed =
      _$mappingTestResultMappingSourceEnum_proposed;

  static Serializer<MappingTestResultMappingSourceEnum> get serializer =>
      _$mappingTestResultMappingSourceEnumSerializer;

  const MappingTestResultMappingSourceEnum._(String name) : super(name);

  static BuiltSet<MappingTestResultMappingSourceEnum> get values =>
      _$mappingTestResultMappingSourceEnumValues;
  static MappingTestResultMappingSourceEnum valueOf(String name) =>
      _$mappingTestResultMappingSourceEnumValueOf(name);
}
