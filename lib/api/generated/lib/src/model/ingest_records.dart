//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/normalized_record_preview.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ingest_records.g.dart';

/// IngestRecords
///
/// Properties:
/// * [records]
@BuiltValue()
abstract class IngestRecords
    implements Built<IngestRecords, IngestRecordsBuilder> {
  @BuiltValueField(wireName: r'records')
  BuiltList<NormalizedRecordPreview> get records;

  IngestRecords._();

  factory IngestRecords([void updates(IngestRecordsBuilder b)]) =
      _$IngestRecords;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IngestRecordsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IngestRecords> get serializer =>
      _$IngestRecordsSerializer();
}

class _$IngestRecordsSerializer implements PrimitiveSerializer<IngestRecords> {
  @override
  final Iterable<Type> types = const [IngestRecords, _$IngestRecords];

  @override
  final String wireName = r'IngestRecords';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IngestRecords object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'records';
    yield serializers.serialize(
      object.records,
      specifiedType:
          const FullType(BuiltList, [FullType(NormalizedRecordPreview)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IngestRecords object, {
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
    required IngestRecordsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IngestRecords deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IngestRecordsBuilder();
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
