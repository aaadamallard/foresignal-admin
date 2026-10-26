//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_settings_s3.g.dart';

/// S3-compatible target (SigV4; endpoint checked by the outbound URL policy)
///
/// Properties:
/// * [endpoint]
/// * [bucket]
/// * [prefix]
/// * [region]
/// * [pathStyle]
/// * [storageClass] - `x-amz-storage-class` of uploads (R2-016); null uses the bucket default. With target `glacier` it must be GLACIER (the default) or DEEP_ARCHIVE; with target `s3` it may not be either, since those objects cannot be read until thawed.
@BuiltValue()
abstract class ArchiveSettingsS3
    implements Built<ArchiveSettingsS3, ArchiveSettingsS3Builder> {
  @BuiltValueField(wireName: r'endpoint')
  String get endpoint;

  @BuiltValueField(wireName: r'bucket')
  String get bucket;

  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'region')
  String? get region;

  @BuiltValueField(wireName: r'pathStyle')
  bool? get pathStyle;

  /// `x-amz-storage-class` of uploads (R2-016); null uses the bucket default. With target `glacier` it must be GLACIER (the default) or DEEP_ARCHIVE; with target `s3` it may not be either, since those objects cannot be read until thawed.
  @BuiltValueField(wireName: r'storageClass')
  ArchiveSettingsS3StorageClassEnum? get storageClass;
  // enum storageClassEnum {  STANDARD,  REDUCED_REDUNDANCY,  STANDARD_IA,  ONEZONE_IA,  INTELLIGENT_TIERING,  GLACIER_IR,  GLACIER,  DEEP_ARCHIVE,  };

  ArchiveSettingsS3._();

  factory ArchiveSettingsS3([void updates(ArchiveSettingsS3Builder b)]) =
      _$ArchiveSettingsS3;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveSettingsS3Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveSettingsS3> get serializer =>
      _$ArchiveSettingsS3Serializer();
}

class _$ArchiveSettingsS3Serializer
    implements PrimitiveSerializer<ArchiveSettingsS3> {
  @override
  final Iterable<Type> types = const [ArchiveSettingsS3, _$ArchiveSettingsS3];

  @override
  final String wireName = r'ArchiveSettingsS3';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveSettingsS3 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoint';
    yield serializers.serialize(
      object.endpoint,
      specifiedType: const FullType(String),
    );
    yield r'bucket';
    yield serializers.serialize(
      object.bucket,
      specifiedType: const FullType(String),
    );
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType(String),
      );
    }
    if (object.pathStyle != null) {
      yield r'pathStyle';
      yield serializers.serialize(
        object.pathStyle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storageClass != null) {
      yield r'storageClass';
      yield serializers.serialize(
        object.storageClass,
        specifiedType: const FullType.nullable(
          ArchiveSettingsS3StorageClassEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettingsS3 object, {
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
    required ArchiveSettingsS3Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.endpoint = valueDes;
          break;
        case r'bucket':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.bucket = valueDes;
          break;
        case r'prefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.prefix = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'pathStyle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.pathStyle = valueDes;
          break;
        case r'storageClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ArchiveSettingsS3StorageClassEnum,
                    ),
                  )
                  as ArchiveSettingsS3StorageClassEnum?;
          if (valueDes == null) continue;
          result.storageClass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveSettingsS3 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveSettingsS3Builder();
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

/// `x-amz-storage-class` of uploads (R2-016); null uses the bucket default. With target `glacier` it must be GLACIER (the default) or DEEP_ARCHIVE; with target `s3` it may not be either, since those objects cannot be read until thawed.
class ArchiveSettingsS3StorageClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STANDARD')
  static const ArchiveSettingsS3StorageClassEnum STANDARD =
      _$archiveSettingsS3StorageClassEnum_STANDARD;
  @BuiltValueEnumConst(wireName: r'REDUCED_REDUNDANCY')
  static const ArchiveSettingsS3StorageClassEnum REDUCED_REDUNDANCY =
      _$archiveSettingsS3StorageClassEnum_REDUCED_REDUNDANCY;
  @BuiltValueEnumConst(wireName: r'STANDARD_IA')
  static const ArchiveSettingsS3StorageClassEnum STANDARD_IA =
      _$archiveSettingsS3StorageClassEnum_STANDARD_IA;
  @BuiltValueEnumConst(wireName: r'ONEZONE_IA')
  static const ArchiveSettingsS3StorageClassEnum ONEZONE_IA =
      _$archiveSettingsS3StorageClassEnum_ONEZONE_IA;
  @BuiltValueEnumConst(wireName: r'INTELLIGENT_TIERING')
  static const ArchiveSettingsS3StorageClassEnum INTELLIGENT_TIERING =
      _$archiveSettingsS3StorageClassEnum_INTELLIGENT_TIERING;
  @BuiltValueEnumConst(wireName: r'GLACIER_IR')
  static const ArchiveSettingsS3StorageClassEnum GLACIER_IR =
      _$archiveSettingsS3StorageClassEnum_GLACIER_IR;
  @BuiltValueEnumConst(wireName: r'GLACIER')
  static const ArchiveSettingsS3StorageClassEnum GLACIER =
      _$archiveSettingsS3StorageClassEnum_GLACIER;
  @BuiltValueEnumConst(wireName: r'DEEP_ARCHIVE')
  static const ArchiveSettingsS3StorageClassEnum DEEP_ARCHIVE =
      _$archiveSettingsS3StorageClassEnum_DEEP_ARCHIVE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ArchiveSettingsS3StorageClassEnum unknownDefaultOpenApi =
      _$archiveSettingsS3StorageClassEnum_unknownDefaultOpenApi;

  static Serializer<ArchiveSettingsS3StorageClassEnum> get serializer =>
      _$archiveSettingsS3StorageClassEnumSerializer;

  const ArchiveSettingsS3StorageClassEnum._(String name) : super(name);

  static BuiltSet<ArchiveSettingsS3StorageClassEnum> get values =>
      _$archiveSettingsS3StorageClassEnumValues;
  static ArchiveSettingsS3StorageClassEnum valueOf(String name) =>
      _$archiveSettingsS3StorageClassEnumValueOf(name);
}
