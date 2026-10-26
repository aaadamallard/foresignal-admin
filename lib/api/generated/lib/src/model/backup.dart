//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/backup_files_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/import_report.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup.g.dart';

/// A single backup artifact (180; prompt R2-017): one `backup_run` row and its files on the target
///
/// Properties:
/// * [id]
/// * [type] - `database`: a `pg_dump --format=custom` archive; `config`: the `exportSettings` bundle (no secrets); `full`: both
/// * [status] - pending → running → complete or failed; a restore goes restoring → restored (a failed restore puts the previous status back with `error`)
/// * [createdAt]
/// * [sizeBytes]
/// * [target]
/// * [location] - The directory or `s3://` prefix holding the files
/// * [checksum] - SHA-256 of the one file, or of the `key:sha256` lines of both files sorted by key
/// * [label]
/// * [trigger] - `manual` (runBackup) or `scheduled` (backup.schedule)
/// * [files] - The stored files
/// * [error] - Why the backup, or its last restore, failed
/// * [startedAt]
/// * [finishedAt]
/// * [restoredAt] - When it was last restored
/// * [importReport] - Present on the answer of `restoreBackup` for a `config` backup: what the import applied
@BuiltValue()
abstract class Backup implements Built<Backup, BackupBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// `database`: a `pg_dump --format=custom` archive; `config`: the `exportSettings` bundle (no secrets); `full`: both
  @BuiltValueField(wireName: r'type')
  String get type;

  /// pending → running → complete or failed; a restore goes restoring → restored (a failed restore puts the previous status back with `error`)
  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  @BuiltValueField(wireName: r'target')
  String? get target;

  /// The directory or `s3://` prefix holding the files
  @BuiltValueField(wireName: r'location')
  String? get location;

  /// SHA-256 of the one file, or of the `key:sha256` lines of both files sorted by key
  @BuiltValueField(wireName: r'checksum')
  String? get checksum;

  @BuiltValueField(wireName: r'label')
  String? get label;

  /// `manual` (runBackup) or `scheduled` (backup.schedule)
  @BuiltValueField(wireName: r'trigger')
  String? get trigger;

  /// The stored files
  @BuiltValueField(wireName: r'files')
  BuiltList<BackupFilesInner>? get files;

  /// Why the backup, or its last restore, failed
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'startedAt')
  DateTime? get startedAt;

  @BuiltValueField(wireName: r'finishedAt')
  DateTime? get finishedAt;

  /// When it was last restored
  @BuiltValueField(wireName: r'restoredAt')
  DateTime? get restoredAt;

  /// Present on the answer of `restoreBackup` for a `config` backup: what the import applied
  @BuiltValueField(wireName: r'importReport')
  ImportReport? get importReport;

  Backup._();

  factory Backup([void updates(BackupBuilder b)]) = _$Backup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Backup> get serializer => _$BackupSerializer();
}

class _$BackupSerializer implements PrimitiveSerializer<Backup> {
  @override
  final Iterable<Type> types = const [Backup, _$Backup];

  @override
  final String wireName = r'Backup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Backup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
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
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.target != null) {
      yield r'target';
      yield serializers.serialize(
        object.target,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.checksum != null) {
      yield r'checksum';
      yield serializers.serialize(
        object.checksum,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trigger != null) {
      yield r'trigger';
      yield serializers.serialize(
        object.trigger,
        specifiedType: const FullType(String),
      );
    }
    if (object.files != null) {
      yield r'files';
      yield serializers.serialize(
        object.files,
        specifiedType: const FullType(BuiltList, [FullType(BackupFilesInner)]),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.startedAt != null) {
      yield r'startedAt';
      yield serializers.serialize(
        object.startedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.finishedAt != null) {
      yield r'finishedAt';
      yield serializers.serialize(
        object.finishedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.restoredAt != null) {
      yield r'restoredAt';
      yield serializers.serialize(
        object.restoredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.importReport != null) {
      yield r'importReport';
      yield serializers.serialize(
        object.importReport,
        specifiedType: const FullType.nullable(ImportReport),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Backup object, {
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
    required BackupBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
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
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
        case r'label':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
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
        case r'files':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(BackupFilesInner),
                    ]),
                  )
                  as BuiltList<BackupFilesInner>?;
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
        case r'startedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.startedAt = valueDes;
          break;
        case r'finishedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.finishedAt = valueDes;
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
        case r'importReport':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImportReport),
                  )
                  as ImportReport?;
          if (valueDes == null) continue;
          result.importReport.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Backup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupBuilder();
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
