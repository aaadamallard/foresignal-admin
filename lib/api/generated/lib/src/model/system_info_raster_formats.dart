//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/system_info_raster_formats_webp.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_raster_formats.g.dart';

/// 108: optional encoder health
///
/// Properties:
/// * [webp]
@BuiltValue()
abstract class SystemInfoRasterFormats
    implements Built<SystemInfoRasterFormats, SystemInfoRasterFormatsBuilder> {
  @BuiltValueField(wireName: r'webp')
  SystemInfoRasterFormatsWebp? get webp;

  SystemInfoRasterFormats._();

  factory SystemInfoRasterFormats(
          [void updates(SystemInfoRasterFormatsBuilder b)]) =
      _$SystemInfoRasterFormats;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoRasterFormatsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoRasterFormats> get serializer =>
      _$SystemInfoRasterFormatsSerializer();
}

class _$SystemInfoRasterFormatsSerializer
    implements PrimitiveSerializer<SystemInfoRasterFormats> {
  @override
  final Iterable<Type> types = const [
    SystemInfoRasterFormats,
    _$SystemInfoRasterFormats
  ];

  @override
  final String wireName = r'SystemInfoRasterFormats';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoRasterFormats object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.webp != null) {
      yield r'webp';
      yield serializers.serialize(
        object.webp,
        specifiedType: const FullType(SystemInfoRasterFormatsWebp),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoRasterFormats object, {
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
    required SystemInfoRasterFormatsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'webp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SystemInfoRasterFormatsWebp),
          ) as SystemInfoRasterFormatsWebp?;
          if (valueDes == null) continue;
          result.webp.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoRasterFormats deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoRasterFormatsBuilder();
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
