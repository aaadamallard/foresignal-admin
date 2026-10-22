//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveSettingsS3 object, {
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
    required ArchiveSettingsS3Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endpoint = valueDes;
          break;
        case r'bucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bucket = valueDes;
          break;
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prefix = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'pathStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.pathStyle = valueDes;
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
