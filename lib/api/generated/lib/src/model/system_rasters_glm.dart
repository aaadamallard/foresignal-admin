//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_rasters_glm.g.dart';

/// GLM flash ring and archive (048): flashes in the places-AOI ring (last 60 minutes), archive bytes on disk (counted toward the disk quota) and the coverage end of the newest processed GLM file (null before the first one since startup)
///
/// Properties:
/// * [ringFlashes]
/// * [archiveBytes]
/// * [newestFileAt]
@BuiltValue()
abstract class SystemRastersGlm
    implements Built<SystemRastersGlm, SystemRastersGlmBuilder> {
  @BuiltValueField(wireName: r'ringFlashes')
  int? get ringFlashes;

  @BuiltValueField(wireName: r'archiveBytes')
  int? get archiveBytes;

  @BuiltValueField(wireName: r'newestFileAt')
  DateTime? get newestFileAt;

  SystemRastersGlm._();

  factory SystemRastersGlm([void updates(SystemRastersGlmBuilder b)]) =
      _$SystemRastersGlm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemRastersGlmBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemRastersGlm> get serializer =>
      _$SystemRastersGlmSerializer();
}

class _$SystemRastersGlmSerializer
    implements PrimitiveSerializer<SystemRastersGlm> {
  @override
  final Iterable<Type> types = const [SystemRastersGlm, _$SystemRastersGlm];

  @override
  final String wireName = r'SystemRastersGlm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemRastersGlm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ringFlashes != null) {
      yield r'ringFlashes';
      yield serializers.serialize(
        object.ringFlashes,
        specifiedType: const FullType(int),
      );
    }
    if (object.archiveBytes != null) {
      yield r'archiveBytes';
      yield serializers.serialize(
        object.archiveBytes,
        specifiedType: const FullType(int),
      );
    }
    if (object.newestFileAt != null) {
      yield r'newestFileAt';
      yield serializers.serialize(
        object.newestFileAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemRastersGlm object, {
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
    required SystemRastersGlmBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ringFlashes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.ringFlashes = valueDes;
          break;
        case r'archiveBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.archiveBytes = valueDes;
          break;
        case r'newestFileAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.newestFileAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemRastersGlm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemRastersGlmBuilder();
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
