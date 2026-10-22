//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'place_pack_request.g.dart';

/// Place offline pack: place-weather, forecast series, nearby alerts, legends, a loop GIF and one PMTiles per product (≤ 50 MB)
///
/// Properties:
/// * [products] - Default (absent or empty): radar, IR and the place's forecast products. Products of sources the caller may not read are left out.
/// * [frames]
/// * [radiusKm]
/// * [maxZoom]
@BuiltValue()
abstract class PlacePackRequest
    implements Built<PlacePackRequest, PlacePackRequestBuilder> {
  /// Default (absent or empty): radar, IR and the place's forecast products. Products of sources the caller may not read are left out.
  @BuiltValueField(wireName: r'products')
  BuiltList<String>? get products;

  @BuiltValueField(wireName: r'frames')
  int? get frames;

  @BuiltValueField(wireName: r'radiusKm')
  num? get radiusKm;

  @BuiltValueField(wireName: r'maxZoom')
  int? get maxZoom;

  PlacePackRequest._();

  factory PlacePackRequest([void updates(PlacePackRequestBuilder b)]) =
      _$PlacePackRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlacePackRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlacePackRequest> get serializer =>
      _$PlacePackRequestSerializer();
}

class _$PlacePackRequestSerializer
    implements PrimitiveSerializer<PlacePackRequest> {
  @override
  final Iterable<Type> types = const [PlacePackRequest, _$PlacePackRequest];

  @override
  final String wireName = r'PlacePackRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlacePackRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.products != null) {
      yield r'products';
      yield serializers.serialize(
        object.products,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.frames != null) {
      yield r'frames';
      yield serializers.serialize(
        object.frames,
        specifiedType: const FullType(int),
      );
    }
    if (object.radiusKm != null) {
      yield r'radiusKm';
      yield serializers.serialize(
        object.radiusKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxZoom != null) {
      yield r'maxZoom';
      yield serializers.serialize(
        object.maxZoom,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlacePackRequest object, {
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
    required PlacePackRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'products':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.products.replace(valueDes);
          break;
        case r'frames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.frames = valueDes;
          break;
        case r'radiusKm':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.radiusKm = valueDes;
          break;
        case r'maxZoom':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxZoom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlacePackRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacePackRequestBuilder();
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
