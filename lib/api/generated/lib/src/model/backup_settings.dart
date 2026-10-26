//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/s3_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_settings.g.dart';

/// Backup settings (settings key `backup`, prompt R2-017); secrets are write-only (B4/180). Backups land through the cold-archive tiers of R2-016: `local` and `external` on the external-disk tier (copied, fsynced, SHA-256 read back), `s3` on the S3 tier (ETag and size checked), each backup under `backups/{id}/`.
///
/// Properties:
/// * [enabled] - Master switch: off, `runBackup` is 409 BACKUP_NOT_CONFIGURED and the schedule does not fire
/// * [schedule] - Cron expression for scheduled backups: six fields (second minute hour day month weekday), evaluated in UTC; null for backups only on request
/// * [target] - `local`: under `root`, or the data directory when `root` is empty; `external`: a mounted disk at the absolute `root`; `s3`: the `s3` bucket
/// * [root] - Local/external backup directory; required and absolute for `external`; a relative `local` root is under the data directory
/// * [s3]
/// * [keepBackups] - How many complete backups of each type to retain; older ones are pruned with their files, and failed ones older than the oldest kept are dropped. Null keeps every backup. 1 to 10000
/// * [includeConfig] - A scheduled backup, and a `runBackup` that names no type, also writes the config bundle (type `full`); off, they are `database` only
/// * [secretsSet] - Names of secrets that have a stored value
/// * [lastRunAt]
@BuiltValue()
abstract class BackupSettings
    implements Built<BackupSettings, BackupSettingsBuilder> {
  /// Master switch: off, `runBackup` is 409 BACKUP_NOT_CONFIGURED and the schedule does not fire
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Cron expression for scheduled backups: six fields (second minute hour day month weekday), evaluated in UTC; null for backups only on request
  @BuiltValueField(wireName: r'schedule')
  String? get schedule;

  /// `local`: under `root`, or the data directory when `root` is empty; `external`: a mounted disk at the absolute `root`; `s3`: the `s3` bucket
  @BuiltValueField(wireName: r'target')
  String get target;

  /// Local/external backup directory; required and absolute for `external`; a relative `local` root is under the data directory
  @BuiltValueField(wireName: r'root')
  String? get root;

  @BuiltValueField(wireName: r's3')
  S3Target? get s3;

  /// How many complete backups of each type to retain; older ones are pruned with their files, and failed ones older than the oldest kept are dropped. Null keeps every backup. 1 to 10000
  @BuiltValueField(wireName: r'keepBackups')
  int? get keepBackups;

  /// A scheduled backup, and a `runBackup` that names no type, also writes the config bundle (type `full`); off, they are `database` only
  @BuiltValueField(wireName: r'includeConfig')
  bool? get includeConfig;

  /// Names of secrets that have a stored value
  @BuiltValueField(wireName: r'secretsSet')
  BuiltList<String>? get secretsSet;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  BackupSettings._();

  factory BackupSettings([void updates(BackupSettingsBuilder b)]) =
      _$BackupSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupSettings> get serializer =>
      _$BackupSettingsSerializer();
}

class _$BackupSettingsSerializer
    implements PrimitiveSerializer<BackupSettings> {
  @override
  final Iterable<Type> types = const [BackupSettings, _$BackupSettings];

  @override
  final String wireName = r'BackupSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.schedule != null) {
      yield r'schedule';
      yield serializers.serialize(
        object.schedule,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(String),
    );
    if (object.root != null) {
      yield r'root';
      yield serializers.serialize(
        object.root,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.s3 != null) {
      yield r's3';
      yield serializers.serialize(
        object.s3,
        specifiedType: const FullType.nullable(S3Target),
      );
    }
    if (object.keepBackups != null) {
      yield r'keepBackups';
      yield serializers.serialize(
        object.keepBackups,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.includeConfig != null) {
      yield r'includeConfig';
      yield serializers.serialize(
        object.includeConfig,
        specifiedType: const FullType(bool),
      );
    }
    if (object.secretsSet != null) {
      yield r'secretsSet';
      yield serializers.serialize(
        object.secretsSet,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupSettings object, {
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
    required BackupSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'schedule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.schedule = valueDes;
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
        case r'root':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.root = valueDes;
          break;
        case r's3':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(S3Target),
                  )
                  as S3Target?;
          if (valueDes == null) continue;
          result.s3.replace(valueDes);
          break;
        case r'keepBackups':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.keepBackups = valueDes;
          break;
        case r'includeConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.includeConfig = valueDes;
          break;
        case r'secretsSet':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.secretsSet.replace(valueDes);
          break;
        case r'lastRunAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupSettingsBuilder();
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
