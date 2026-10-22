//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_archive.g.dart';

/// Cold archive
///
/// Properties:
/// * [enabled]
/// * [lastRunAt]
/// * [bytes]
/// * [failures]
/// * [target]
/// * [lastRunBytes]
/// * [lastRunFailures]
/// * [lastFailureAt]
@BuiltValue()
abstract class SystemInfoArchive
    implements Built<SystemInfoArchive, SystemInfoArchiveBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  @BuiltValueField(wireName: r'failures')
  int? get failures;

  @BuiltValueField(wireName: r'target')
  SystemInfoArchiveTargetEnum? get target;
  // enum targetEnum {  local,  s3,  };

  @BuiltValueField(wireName: r'lastRunBytes')
  int? get lastRunBytes;

  @BuiltValueField(wireName: r'lastRunFailures')
  int? get lastRunFailures;

  @BuiltValueField(wireName: r'lastFailureAt')
  DateTime? get lastFailureAt;

  SystemInfoArchive._();

  factory SystemInfoArchive([void updates(SystemInfoArchiveBuilder b)]) =
      _$SystemInfoArchive;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoArchiveBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoArchive> get serializer =>
      _$SystemInfoArchiveSerializer();
}

class _$SystemInfoArchiveSerializer
    implements PrimitiveSerializer<SystemInfoArchive> {
  @override
  final Iterable<Type> types = const [SystemInfoArchive, _$SystemInfoArchive];

  @override
  final String wireName = r'SystemInfoArchive';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoArchive object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.failures != null) {
      yield r'failures';
      yield serializers.serialize(
        object.failures,
        specifiedType: const FullType(int),
      );
    }
    if (object.target != null) {
      yield r'target';
      yield serializers.serialize(
        object.target,
        specifiedType: const FullType(SystemInfoArchiveTargetEnum),
      );
    }
    if (object.lastRunBytes != null) {
      yield r'lastRunBytes';
      yield serializers.serialize(
        object.lastRunBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastRunFailures != null) {
      yield r'lastRunFailures';
      yield serializers.serialize(
        object.lastRunFailures,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastFailureAt != null) {
      yield r'lastFailureAt';
      yield serializers.serialize(
        object.lastFailureAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoArchive object, {
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
    required SystemInfoArchiveBuilder result,
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
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
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
        case r'bytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.bytes = valueDes;
          break;
        case r'failures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.failures = valueDes;
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SystemInfoArchiveTargetEnum,
                    ),
                  )
                  as SystemInfoArchiveTargetEnum?;
          if (valueDes == null) continue;
          result.target = valueDes;
          break;
        case r'lastRunBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastRunBytes = valueDes;
          break;
        case r'lastRunFailures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lastRunFailures = valueDes;
          break;
        case r'lastFailureAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastFailureAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoArchive deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoArchiveBuilder();
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

class SystemInfoArchiveTargetEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'local')
  static const SystemInfoArchiveTargetEnum local =
      _$systemInfoArchiveTargetEnum_local;
  @BuiltValueEnumConst(wireName: r's3')
  static const SystemInfoArchiveTargetEnum s3 =
      _$systemInfoArchiveTargetEnum_s3;

  static Serializer<SystemInfoArchiveTargetEnum> get serializer =>
      _$systemInfoArchiveTargetEnumSerializer;

  const SystemInfoArchiveTargetEnum._(String name) : super(name);

  static BuiltSet<SystemInfoArchiveTargetEnum> get values =>
      _$systemInfoArchiveTargetEnumValues;
  static SystemInfoArchiveTargetEnum valueOf(String name) =>
      _$systemInfoArchiveTargetEnumValueOf(name);
}
