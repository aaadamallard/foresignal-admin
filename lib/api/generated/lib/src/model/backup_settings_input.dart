//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/archive_settings_secrets.dart';
import 'package:foresignal_api/src/model/s3_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_settings_input.g.dart';

/// Backup settings with write-only S3 credentials. Replaces the settings: an omitted member takes its default, except `secrets`, where an omitted member keeps the stored value and an empty string or null clears it. Unknown members are a 400; the read-only `secretsSet` and `lastRunAt` of a GET may be sent back and are ignored.
///
/// Properties:
/// * [enabled]
/// * [schedule]
/// * [target]
/// * [root]
/// * [s3]
/// * [keepBackups]
/// * [includeConfig]
/// * [secrets]
@BuiltValue()
abstract class BackupSettingsInput
    implements Built<BackupSettingsInput, BackupSettingsInputBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  @BuiltValueField(wireName: r'schedule')
  String? get schedule;

  @BuiltValueField(wireName: r'target')
  String get target;

  @BuiltValueField(wireName: r'root')
  String? get root;

  @BuiltValueField(wireName: r's3')
  S3Target? get s3;

  @BuiltValueField(wireName: r'keepBackups')
  int? get keepBackups;

  @BuiltValueField(wireName: r'includeConfig')
  bool? get includeConfig;

  @BuiltValueField(wireName: r'secrets')
  ArchiveSettingsSecrets? get secrets;

  BackupSettingsInput._();

  factory BackupSettingsInput([void updates(BackupSettingsInputBuilder b)]) =
      _$BackupSettingsInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupSettingsInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupSettingsInput> get serializer =>
      _$BackupSettingsInputSerializer();
}

class _$BackupSettingsInputSerializer
    implements PrimitiveSerializer<BackupSettingsInput> {
  @override
  final Iterable<Type> types = const [
    BackupSettingsInput,
    _$BackupSettingsInput,
  ];

  @override
  final String wireName = r'BackupSettingsInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupSettingsInput object, {
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
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(ArchiveSettingsSecrets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupSettingsInput object, {
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
    required BackupSettingsInputBuilder result,
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
        case r'secrets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ArchiveSettingsSecrets,
                    ),
                  )
                  as ArchiveSettingsSecrets?;
          if (valueDes == null) continue;
          result.secrets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupSettingsInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupSettingsInputBuilder();
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
