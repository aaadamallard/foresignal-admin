//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'raster_frame_page_prefetch.g.dart';

/// Prefetch hint for animation
///
/// Properties:
/// * [recommendedFrames]
/// * [maxZoomForAnimation]
@BuiltValue()
abstract class RasterFramePagePrefetch
    implements Built<RasterFramePagePrefetch, RasterFramePagePrefetchBuilder> {
  @BuiltValueField(wireName: r'recommendedFrames')
  int get recommendedFrames;

  @BuiltValueField(wireName: r'maxZoomForAnimation')
  int? get maxZoomForAnimation;

  RasterFramePagePrefetch._();

  factory RasterFramePagePrefetch([
    void updates(RasterFramePagePrefetchBuilder b),
  ]) = _$RasterFramePagePrefetch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RasterFramePagePrefetchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RasterFramePagePrefetch> get serializer =>
      _$RasterFramePagePrefetchSerializer();
}

class _$RasterFramePagePrefetchSerializer
    implements PrimitiveSerializer<RasterFramePagePrefetch> {
  @override
  final Iterable<Type> types = const [
    RasterFramePagePrefetch,
    _$RasterFramePagePrefetch,
  ];

  @override
  final String wireName = r'RasterFramePagePrefetch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RasterFramePagePrefetch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'recommendedFrames';
    yield serializers.serialize(
      object.recommendedFrames,
      specifiedType: const FullType(int),
    );
    if (object.maxZoomForAnimation != null) {
      yield r'maxZoomForAnimation';
      yield serializers.serialize(
        object.maxZoomForAnimation,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RasterFramePagePrefetch object, {
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
    required RasterFramePagePrefetchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recommendedFrames':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.recommendedFrames = valueDes;
          break;
        case r'maxZoomForAnimation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxZoomForAnimation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RasterFramePagePrefetch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RasterFramePagePrefetchBuilder();
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
