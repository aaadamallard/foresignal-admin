//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pack_spec_raster.g.dart';

/// Raster (PNG) product frame
///
/// Properties:
/// * [productId]
/// * [frame] - `latest` or a frame id
@BuiltValue()
abstract class PackSpecRaster
    implements Built<PackSpecRaster, PackSpecRasterBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  /// `latest` or a frame id
  @BuiltValueField(wireName: r'frame')
  String? get frame;

  PackSpecRaster._();

  factory PackSpecRaster([void updates(PackSpecRasterBuilder b)]) =
      _$PackSpecRaster;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PackSpecRasterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PackSpecRaster> get serializer =>
      _$PackSpecRasterSerializer();
}

class _$PackSpecRasterSerializer
    implements PrimitiveSerializer<PackSpecRaster> {
  @override
  final Iterable<Type> types = const [PackSpecRaster, _$PackSpecRaster];

  @override
  final String wireName = r'PackSpecRaster';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PackSpecRaster object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    if (object.frame != null) {
      yield r'frame';
      yield serializers.serialize(
        object.frame,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PackSpecRaster object, {
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
    required PackSpecRasterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.productId = valueDes;
          break;
        case r'frame':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.frame = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PackSpecRaster deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PackSpecRasterBuilder();
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
