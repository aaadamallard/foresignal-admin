//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_exports.g.dart';

/// Export jobs
///
/// Properties:
/// * [queued]
/// * [running]
/// * [bytes]
/// * [quotaBytes] - exports.diskQuotaGb in bytes
/// * [maxConcurrent] - exports.maxConcurrent
@BuiltValue()
abstract class SystemInfoExports
    implements Built<SystemInfoExports, SystemInfoExportsBuilder> {
  @BuiltValueField(wireName: r'queued')
  int? get queued;

  @BuiltValueField(wireName: r'running')
  int? get running;

  @BuiltValueField(wireName: r'bytes')
  int? get bytes;

  /// exports.diskQuotaGb in bytes
  @BuiltValueField(wireName: r'quotaBytes')
  int? get quotaBytes;

  /// exports.maxConcurrent
  @BuiltValueField(wireName: r'maxConcurrent')
  int? get maxConcurrent;

  SystemInfoExports._();

  factory SystemInfoExports([void updates(SystemInfoExportsBuilder b)]) =
      _$SystemInfoExports;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoExportsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoExports> get serializer =>
      _$SystemInfoExportsSerializer();
}

class _$SystemInfoExportsSerializer
    implements PrimitiveSerializer<SystemInfoExports> {
  @override
  final Iterable<Type> types = const [SystemInfoExports, _$SystemInfoExports];

  @override
  final String wireName = r'SystemInfoExports';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoExports object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queued != null) {
      yield r'queued';
      yield serializers.serialize(
        object.queued,
        specifiedType: const FullType(int),
      );
    }
    if (object.running != null) {
      yield r'running';
      yield serializers.serialize(
        object.running,
        specifiedType: const FullType(int),
      );
    }
    if (object.bytes != null) {
      yield r'bytes';
      yield serializers.serialize(
        object.bytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.quotaBytes != null) {
      yield r'quotaBytes';
      yield serializers.serialize(
        object.quotaBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxConcurrent != null) {
      yield r'maxConcurrent';
      yield serializers.serialize(
        object.maxConcurrent,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoExports object, {
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
    required SystemInfoExportsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queued':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.queued = valueDes;
          break;
        case r'running':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.running = valueDes;
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
        case r'quotaBytes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.quotaBytes = valueDes;
          break;
        case r'maxConcurrent':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxConcurrent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoExports deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoExportsBuilder();
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
