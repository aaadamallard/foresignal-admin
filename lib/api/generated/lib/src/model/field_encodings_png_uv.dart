//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_encodings_png_uv.g.dart';

/// 8-bit RGB PNG: R = u, G = v scaled linearly; B = 0
///
/// Properties:
/// * [url]
/// * [uMin]
/// * [uMax]
/// * [vMin]
/// * [vMax]
/// * [width]
/// * [height]
/// * [bounds]
@BuiltValue()
abstract class FieldEncodingsPngUv
    implements Built<FieldEncodingsPngUv, FieldEncodingsPngUvBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'uMin')
  num? get uMin;

  @BuiltValueField(wireName: r'uMax')
  num? get uMax;

  @BuiltValueField(wireName: r'vMin')
  num? get vMin;

  @BuiltValueField(wireName: r'vMax')
  num? get vMax;

  @BuiltValueField(wireName: r'width')
  int? get width;

  @BuiltValueField(wireName: r'height')
  int? get height;

  @BuiltValueField(wireName: r'bounds')
  BuiltList<num>? get bounds;

  FieldEncodingsPngUv._();

  factory FieldEncodingsPngUv([void updates(FieldEncodingsPngUvBuilder b)]) =
      _$FieldEncodingsPngUv;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldEncodingsPngUvBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldEncodingsPngUv> get serializer =>
      _$FieldEncodingsPngUvSerializer();
}

class _$FieldEncodingsPngUvSerializer
    implements PrimitiveSerializer<FieldEncodingsPngUv> {
  @override
  final Iterable<Type> types = const [
    FieldEncodingsPngUv,
    _$FieldEncodingsPngUv,
  ];

  @override
  final String wireName = r'FieldEncodingsPngUv';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldEncodingsPngUv object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.uMin != null) {
      yield r'uMin';
      yield serializers.serialize(
        object.uMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.uMax != null) {
      yield r'uMax';
      yield serializers.serialize(
        object.uMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.vMin != null) {
      yield r'vMin';
      yield serializers.serialize(
        object.vMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.vMax != null) {
      yield r'vMax';
      yield serializers.serialize(
        object.vMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(int),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(int),
      );
    }
    if (object.bounds != null) {
      yield r'bounds';
      yield serializers.serialize(
        object.bounds,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldEncodingsPngUv object, {
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
    required FieldEncodingsPngUvBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'uMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.uMin = valueDes;
          break;
        case r'uMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.uMax = valueDes;
          break;
        case r'vMin':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vMin = valueDes;
          break;
        case r'vMax':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.vMax = valueDes;
          break;
        case r'width':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.width = valueDes;
          break;
        case r'height':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.height = valueDes;
          break;
        case r'bounds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(num),
                    ]),
                  )
                  as BuiltList<num>?;
          if (valueDes == null) continue;
          result.bounds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldEncodingsPngUv deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldEncodingsPngUvBuilder();
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
