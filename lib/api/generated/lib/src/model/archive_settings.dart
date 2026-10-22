//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/archive_settings_secrets.dart';
import 'package:foresignal_api/src/model/archive_settings_s3.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_settings.g.dart';

/// Cold archive settings (settings key `archive`); secrets are write-only (111)
///
/// Properties:
/// * [enabled] - Default false
/// * [sources] - Allowlist; empty = all non-private STANDARD and TRACK sources
/// * [root] - Default ${FORESIGNAL_DATA_DIR}/archive; an absolute path, or a path relative to the data directory
/// * [target]
/// * [s3]
/// * [secrets]
/// * [secretsSet] - Names of secrets that have a stored value
/// * [keepLocal] - Keep the local copy after a verified upload
@BuiltValue()
abstract class ArchiveSettings
    implements Built<ArchiveSettings, ArchiveSettingsBuilder> {
  /// Default false
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Allowlist; empty = all non-private STANDARD and TRACK sources
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// Default ${FORESIGNAL_DATA_DIR}/archive; an absolute path, or a path relative to the data directory
  @BuiltValueField(wireName: r'root')
  String? get root;

  @BuiltValueField(wireName: r'target')
  ArchiveSettingsTargetEnum get target;
  // enum targetEnum {  local,  s3,  };

  @BuiltValueField(wireName: r's3')
  ArchiveSettingsS3? get s3;

  @BuiltValueField(wireName: r'secrets')
  ArchiveSettingsSecrets? get secrets;

  /// Names of secrets that have a stored value
  @BuiltValueField(wireName: r'secretsSet')
  BuiltList<String>? get secretsSet;

  /// Keep the local copy after a verified upload
  @BuiltValueField(wireName: r'keepLocal')
  bool? get keepLocal;

  ArchiveSettings._();

  factory ArchiveSettings([void updates(ArchiveSettingsBuilder b)]) =
      _$ArchiveSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveSettings> get serializer =>
      _$ArchiveSettingsSerializer();
}

class _$ArchiveSettingsSerializer
    implements PrimitiveSerializer<ArchiveSettings> {
  @override
  final Iterable<Type> types = const [ArchiveSettings, _$ArchiveSettings];

  @override
  final String wireName = r'ArchiveSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.root != null) {
      yield r'root';
      yield serializers.serialize(
        object.root,
        specifiedType: const FullType(String),
      );
    }
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(ArchiveSettingsTargetEnum),
    );
    if (object.s3 != null) {
      yield r's3';
      yield serializers.serialize(
        object.s3,
        specifiedType: const FullType.nullable(ArchiveSettingsS3),
      );
    }
    if (object.secrets != null) {
      yield r'secrets';
      yield serializers.serialize(
        object.secrets,
        specifiedType: const FullType(ArchiveSettingsSecrets),
      );
    }
    if (object.secretsSet != null) {
      yield r'secretsSet';
      yield serializers.serialize(
        object.secretsSet,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.keepLocal != null) {
      yield r'keepLocal';
      yield serializers.serialize(
        object.keepLocal,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettings object, {
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
    required ArchiveSettingsBuilder result,
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
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ArchiveSettingsTargetEnum),
                  )
                  as ArchiveSettingsTargetEnum;
          result.target = valueDes;
          break;
        case r's3':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ArchiveSettingsS3),
                  )
                  as ArchiveSettingsS3?;
          if (valueDes == null) continue;
          result.s3.replace(valueDes);
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
        case r'keepLocal':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.keepLocal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveSettingsBuilder();
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

class ArchiveSettingsTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'local')
  static const ArchiveSettingsTargetEnum local =
      _$archiveSettingsTargetEnum_local;
  @BuiltValueEnumConst(wireName: r's3')
  static const ArchiveSettingsTargetEnum s3 = _$archiveSettingsTargetEnum_s3;

  static Serializer<ArchiveSettingsTargetEnum> get serializer =>
      _$archiveSettingsTargetEnumSerializer;

  const ArchiveSettingsTargetEnum._(String name) : super(name);

  static BuiltSet<ArchiveSettingsTargetEnum> get values =>
      _$archiveSettingsTargetEnumValues;
  static ArchiveSettingsTargetEnum valueOf(String name) =>
      _$archiveSettingsTargetEnumValueOf(name);
}
