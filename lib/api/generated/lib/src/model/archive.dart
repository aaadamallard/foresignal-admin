//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/archive_files_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive.g.dart';

/// A cold-storage archive segment: data phased out of the hot DB, verified, then purged locally (B3/179). Restored rows go to the restore area `record_version_restored`, not back into record_version.
///
/// Properties:
/// * [id]
/// * [status] - pending (accepted), running (exporting), verifying (offloading and checking each file on the tier), complete (verified and recorded), purged (and gone from the hot store), failed (nothing was purged), restoring, restored
/// * [createdAt]
/// * [cutoff] - Data older than this was archived; null when the run took only what retention removed anyway
/// * [target] - Archive tier target
/// * [location] - The segment's directory (`local`) or `s3://bucket/prefix/segments/{id}`
/// * [sizeBytes] - Compressed size of every file
/// * [itemCount] - Rows archived (for a dry run: rows that would be)
/// * [checksum] - SHA-256 over each file's `key:sha256` line, in key order; every file's own SHA-256 is in `files`
/// * [purgedFromHot] - True once the archived data was purged from the hot store
/// * [restoredAt]
/// * [trigger] - What started the run: runArchive, `archive.schedule`, or the retention size cap (R2-015)
/// * [domain] - What was archived: `record_version`
/// * [sources] - Sources in the segment
/// * [fromSeq]
/// * [toSeq]
/// * [fromTime] - Earliest ingested_at archived
/// * [toTime] - Latest ingested_at archived
/// * [files] - One gzip-compressed NDJSON file per source, one record_version row per line
/// * [error] - Why it failed, or a note (rows the purge kept back, a pending Glacier thaw, rows restored)
/// * [updatedAt]
/// * [completedAt]
/// * [purgedAt]
@BuiltValue()
abstract class Archive implements Built<Archive, ArchiveBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// pending (accepted), running (exporting), verifying (offloading and checking each file on the tier), complete (verified and recorded), purged (and gone from the hot store), failed (nothing was purged), restoring, restored
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Data older than this was archived; null when the run took only what retention removed anyway
  @BuiltValueField(wireName: r'cutoff')
  DateTime? get cutoff;

  /// Archive tier target
  @BuiltValueField(wireName: r'target')
  String get target;

  /// The segment's directory (`local`) or `s3://bucket/prefix/segments/{id}`
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// Compressed size of every file
  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  /// Rows archived (for a dry run: rows that would be)
  @BuiltValueField(wireName: r'itemCount')
  int? get itemCount;

  /// SHA-256 over each file's `key:sha256` line, in key order; every file's own SHA-256 is in `files`
  @BuiltValueField(wireName: r'checksum')
  String? get checksum;

  /// True once the archived data was purged from the hot store
  @BuiltValueField(wireName: r'purgedFromHot')
  bool? get purgedFromHot;

  @BuiltValueField(wireName: r'restoredAt')
  DateTime? get restoredAt;

  /// What started the run: runArchive, `archive.schedule`, or the retention size cap (R2-015)
  @BuiltValueField(wireName: r'trigger')
  String? get trigger;

  /// What was archived: `record_version`
  @BuiltValueField(wireName: r'domain')
  String? get domain;

  /// Sources in the segment
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  @BuiltValueField(wireName: r'fromSeq')
  int? get fromSeq;

  @BuiltValueField(wireName: r'toSeq')
  int? get toSeq;

  /// Earliest ingested_at archived
  @BuiltValueField(wireName: r'fromTime')
  DateTime? get fromTime;

  /// Latest ingested_at archived
  @BuiltValueField(wireName: r'toTime')
  DateTime? get toTime;

  /// One gzip-compressed NDJSON file per source, one record_version row per line
  @BuiltValueField(wireName: r'files')
  BuiltList<ArchiveFilesInner>? get files;

  /// Why it failed, or a note (rows the purge kept back, a pending Glacier thaw, rows restored)
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'completedAt')
  DateTime? get completedAt;

  @BuiltValueField(wireName: r'purgedAt')
  DateTime? get purgedAt;

  Archive._();

  factory Archive([void updates(ArchiveBuilder b)]) = _$Archive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Archive> get serializer => _$ArchiveSerializer();
}

class _$ArchiveSerializer implements PrimitiveSerializer<Archive> {
  @override
  final Iterable<Type> types = const [Archive, _$Archive];

  @override
  final String wireName = r'Archive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Archive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.itemCount != null) {
      yield r'itemCount';
      yield serializers.serialize(
        object.itemCount,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.checksum != null) {
      yield r'checksum';
      yield serializers.serialize(
        object.checksum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.purgedFromHot != null) {
      yield r'purgedFromHot';
      yield serializers.serialize(
        object.purgedFromHot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.restoredAt != null) {
      yield r'restoredAt';
      yield serializers.serialize(
        object.restoredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.trigger != null) {
      yield r'trigger';
      yield serializers.serialize(
        object.trigger,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(String),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.fromSeq != null) {
      yield r'fromSeq';
      yield serializers.serialize(
        object.fromSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.toSeq != null) {
      yield r'toSeq';
      yield serializers.serialize(
        object.toSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.fromTime != null) {
      yield r'fromTime';
      yield serializers.serialize(
        object.fromTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.toTime != null) {
      yield r'toTime';
      yield serializers.serialize(
        object.toTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.files != null) {
      yield r'files';
      yield serializers.serialize(
        object.files,
        specifiedType: const FullType(BuiltList, [FullType(ArchiveFilesInner)]),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.completedAt != null) {
      yield r'completedAt';
      yield serializers.serialize(
        object.completedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.purgedAt != null) {
      yield r'purgedAt';
      yield serializers.serialize(
        object.purgedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Archive object, {
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
    required ArchiveBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.createdAt = valueDes;
          break;
        case r'cutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.cutoff = valueDes;
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.target = valueDes;
          break;
        case r'location':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'sizeBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.sizeBytes = valueDes;
          break;
        case r'itemCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.itemCount = valueDes;
          break;
        case r'checksum':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.checksum = valueDes;
          break;
        case r'purgedFromHot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.purgedFromHot = valueDes;
          break;
        case r'restoredAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.restoredAt = valueDes;
          break;
        case r'trigger':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trigger = valueDes;
          break;
        case r'domain':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.domain = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'fromSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.fromSeq = valueDes;
          break;
        case r'toSeq':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.toSeq = valueDes;
          break;
        case r'fromTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.fromTime = valueDes;
          break;
        case r'toTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.toTime = valueDes;
          break;
        case r'files':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(ArchiveFilesInner),
                    ]),
                  )
                  as BuiltList<ArchiveFilesInner>?;
          if (valueDes == null) continue;
          result.files.replace(valueDes);
          break;
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'updatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'completedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.completedAt = valueDes;
          break;
        case r'purgedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.purgedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Archive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveBuilder();
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
