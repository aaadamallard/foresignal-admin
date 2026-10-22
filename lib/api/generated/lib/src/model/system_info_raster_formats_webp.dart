//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_info_raster_formats_webp.g.dart';

/// SystemInfoRasterFormatsWebp
///
/// Properties:
/// * [available]
/// * [reason]
@BuiltValue()
abstract class SystemInfoRasterFormatsWebp
    implements
        Built<SystemInfoRasterFormatsWebp, SystemInfoRasterFormatsWebpBuilder> {
  @BuiltValueField(wireName: r'available')
  bool? get available;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  SystemInfoRasterFormatsWebp._();

  factory SystemInfoRasterFormatsWebp([
    void updates(SystemInfoRasterFormatsWebpBuilder b),
  ]) = _$SystemInfoRasterFormatsWebp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemInfoRasterFormatsWebpBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemInfoRasterFormatsWebp> get serializer =>
      _$SystemInfoRasterFormatsWebpSerializer();
}

class _$SystemInfoRasterFormatsWebpSerializer
    implements PrimitiveSerializer<SystemInfoRasterFormatsWebp> {
  @override
  final Iterable<Type> types = const [
    SystemInfoRasterFormatsWebp,
    _$SystemInfoRasterFormatsWebp,
  ];

  @override
  final String wireName = r'SystemInfoRasterFormatsWebp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemInfoRasterFormatsWebp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.available != null) {
      yield r'available';
      yield serializers.serialize(
        object.available,
        specifiedType: const FullType(bool),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemInfoRasterFormatsWebp object, {
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
    required SystemInfoRasterFormatsWebpBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'available':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.available = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemInfoRasterFormatsWebp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemInfoRasterFormatsWebpBuilder();
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
