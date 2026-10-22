//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'satellite_pass_payload_products_inner.g.dart';

/// Decoded product
///
/// Properties:
/// * [productId] - The polar overlay product `satdump-{station}-{composite}` (054); present when the composite has a GeoTIFF overlay
/// * [frameKey] - The overlay frame's content-addressed key (054)
/// * [composite]
/// * [thumbMediaId] - ULID identifier
/// * [tilesTemplate] - Content-addressed tile template (054 polar overlays)
/// * [instrument]
/// * [mediaId] - ULID identifier
@BuiltValue()
abstract class SatellitePassPayloadProductsInner
    implements
        Built<
          SatellitePassPayloadProductsInner,
          SatellitePassPayloadProductsInnerBuilder
        > {
  /// The polar overlay product `satdump-{station}-{composite}` (054); present when the composite has a GeoTIFF overlay
  @BuiltValueField(wireName: r'productId')
  String? get productId;

  /// The overlay frame's content-addressed key (054)
  @BuiltValueField(wireName: r'frameKey')
  String? get frameKey;

  @BuiltValueField(wireName: r'composite')
  String get composite;

  /// ULID identifier
  @BuiltValueField(wireName: r'thumbMediaId')
  String? get thumbMediaId;

  /// Content-addressed tile template (054 polar overlays)
  @BuiltValueField(wireName: r'tilesTemplate')
  String? get tilesTemplate;

  @BuiltValueField(wireName: r'instrument')
  String? get instrument;

  /// ULID identifier
  @BuiltValueField(wireName: r'mediaId')
  String? get mediaId;

  SatellitePassPayloadProductsInner._();

  factory SatellitePassPayloadProductsInner([
    void updates(SatellitePassPayloadProductsInnerBuilder b),
  ]) = _$SatellitePassPayloadProductsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SatellitePassPayloadProductsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SatellitePassPayloadProductsInner> get serializer =>
      _$SatellitePassPayloadProductsInnerSerializer();
}

class _$SatellitePassPayloadProductsInnerSerializer
    implements PrimitiveSerializer<SatellitePassPayloadProductsInner> {
  @override
  final Iterable<Type> types = const [
    SatellitePassPayloadProductsInner,
    _$SatellitePassPayloadProductsInner,
  ];

  @override
  final String wireName = r'SatellitePassPayloadProductsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SatellitePassPayloadProductsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    if (object.frameKey != null) {
      yield r'frameKey';
      yield serializers.serialize(
        object.frameKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'composite';
    yield serializers.serialize(
      object.composite,
      specifiedType: const FullType(String),
    );
    if (object.thumbMediaId != null) {
      yield r'thumbMediaId';
      yield serializers.serialize(
        object.thumbMediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tilesTemplate != null) {
      yield r'tilesTemplate';
      yield serializers.serialize(
        object.tilesTemplate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.instrument != null) {
      yield r'instrument';
      yield serializers.serialize(
        object.instrument,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaId != null) {
      yield r'mediaId';
      yield serializers.serialize(
        object.mediaId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayloadProductsInner object, {
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
    required SatellitePassPayloadProductsInnerBuilder result,
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'frameKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.frameKey = valueDes;
          break;
        case r'composite':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.composite = valueDes;
          break;
        case r'thumbMediaId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.thumbMediaId = valueDes;
          break;
        case r'tilesTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tilesTemplate = valueDes;
          break;
        case r'instrument':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instrument = valueDes;
          break;
        case r'mediaId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.mediaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SatellitePassPayloadProductsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SatellitePassPayloadProductsInnerBuilder();
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
