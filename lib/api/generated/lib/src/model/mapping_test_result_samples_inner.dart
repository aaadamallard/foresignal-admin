//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/normalized_record_preview.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/mapping_warning.dart';
import 'package:foresignal_api/src/model/mapping_rejection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_test_result_samples_inner.g.dart';

/// What ingest would write for a sample; nothing is persisted (059)
///
/// Properties:
/// * [records]
/// * [rejections]
/// * [skipped] - Items dropped by `filter`
/// * [warnings]
/// * [receivedAt]
@BuiltValue()
abstract class MappingTestResultSamplesInner
    implements
        Built<MappingTestResultSamplesInner,
            MappingTestResultSamplesInnerBuilder> {
  @BuiltValueField(wireName: r'records')
  BuiltList<NormalizedRecordPreview> get records;

  @BuiltValueField(wireName: r'rejections')
  BuiltList<MappingRejection> get rejections;

  /// Items dropped by `filter`
  @BuiltValueField(wireName: r'skipped')
  int? get skipped;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<MappingWarning> get warnings;

  @BuiltValueField(wireName: r'receivedAt')
  DateTime get receivedAt;

  MappingTestResultSamplesInner._();

  factory MappingTestResultSamplesInner(
          [void updates(MappingTestResultSamplesInnerBuilder b)]) =
      _$MappingTestResultSamplesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingTestResultSamplesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingTestResultSamplesInner> get serializer =>
      _$MappingTestResultSamplesInnerSerializer();
}

class _$MappingTestResultSamplesInnerSerializer
    implements PrimitiveSerializer<MappingTestResultSamplesInner> {
  @override
  final Iterable<Type> types = const [
    MappingTestResultSamplesInner,
    _$MappingTestResultSamplesInner
  ];

  @override
  final String wireName = r'MappingTestResultSamplesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingTestResultSamplesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType:
          const FullType(BuiltList, [FullType(NormalizedRecordPreview)]),
    );
    yield r'rejections';
    yield serializers.serialize(
      object.rejections,
      specifiedType: const FullType(BuiltList, [FullType(MappingRejection)]),
    );
    if (object.skipped != null) {
      yield r'skipped';
      yield serializers.serialize(
        object.skipped,
        specifiedType: const FullType(int),
      );
    }
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(MappingWarning)]),
    );
    yield r'receivedAt';
    yield serializers.serialize(
      object.receivedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingTestResultSamplesInner object, {
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
    required MappingTestResultSamplesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'records':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NormalizedRecordPreview)]),
          ) as BuiltList<NormalizedRecordPreview>;
          result.records.replace(valueDes);
          break;
        case r'rejections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MappingRejection)]),
          ) as BuiltList<MappingRejection>;
          result.rejections.replace(valueDes);
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.skipped = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MappingWarning)]),
          ) as BuiltList<MappingWarning>;
          result.warnings.replace(valueDes);
          break;
        case r'receivedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.receivedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingTestResultSamplesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingTestResultSamplesInnerBuilder();
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
