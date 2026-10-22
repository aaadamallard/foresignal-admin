//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_partition_files_inner.g.dart';

/// An archived GeoParquet part
///
/// Properties:
/// * [name] - part-{fromSeq}-{toSeq}.parquet
/// * [fromSeq]
/// * [toSeq]
/// * [rows]
/// * [bytes]
/// * [sha256]
/// * [local]
/// * [uploadedAt]
/// * [s3Key]
@BuiltValue()
abstract class ArchivePartitionFilesInner
    implements
        Built<ArchivePartitionFilesInner, ArchivePartitionFilesInnerBuilder> {
  /// part-{fromSeq}-{toSeq}.parquet
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'fromSeq')
  int get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int get toSeq;

  @BuiltValueField(wireName: r'rows')
  int get rows;

  @BuiltValueField(wireName: r'bytes')
  int get bytes;

  @BuiltValueField(wireName: r'sha256')
  String get sha256;

  @BuiltValueField(wireName: r'local')
  bool? get local;

  @BuiltValueField(wireName: r'uploadedAt')
  DateTime? get uploadedAt;

  @BuiltValueField(wireName: r's3Key')
  String? get s3Key;

  ArchivePartitionFilesInner._();

  factory ArchivePartitionFilesInner([
    void updates(ArchivePartitionFilesInnerBuilder b),
  ]) = _$ArchivePartitionFilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchivePartitionFilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchivePartitionFilesInner> get serializer =>
      _$ArchivePartitionFilesInnerSerializer();
}

class _$ArchivePartitionFilesInnerSerializer
    implements PrimitiveSerializer<ArchivePartitionFilesInner> {
  @override
  final Iterable<Type> types = const [
    ArchivePartitionFilesInner,
    _$ArchivePartitionFilesInner,
  ];

  @override
  final String wireName = r'ArchivePartitionFilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchivePartitionFilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'fromSeq';
    yield serializers.serialize(
      object.fromSeq,
      specifiedType: const FullType(int),
    );
    yield r'toSeq';
    yield serializers.serialize(
      object.toSeq,
      specifiedType: const FullType(int),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(int),
    );
    yield r'bytes';
    yield serializers.serialize(
      object.bytes,
      specifiedType: const FullType(int),
    );
    yield r'sha256';
    yield serializers.serialize(
      object.sha256,
      specifiedType: const FullType(String),
    );
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType(bool),
      );
    }
    if (object.uploadedAt != null) {
      yield r'uploadedAt';
      yield serializers.serialize(
        object.uploadedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.s3Key != null) {
      yield r's3Key';
      yield serializers.serialize(
        object.s3Key,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchivePartitionFilesInner object, {
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
    required ArchivePartitionFilesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.toSeq = valueDes;
          break;
        case r'rows':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.rows = valueDes;
          break;
        case r'bytes':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.bytes = valueDes;
          break;
        case r'sha256':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.sha256 = valueDes;
          break;
        case r'local':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.local = valueDes;
          break;
        case r'uploadedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.uploadedAt = valueDes;
          break;
        case r's3Key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.s3Key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchivePartitionFilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchivePartitionFilesInnerBuilder();
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
