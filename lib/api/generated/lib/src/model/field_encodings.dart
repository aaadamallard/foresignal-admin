//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/field_encodings_png_tiles.dart';
import 'package:foresignal_api/src/model/field_encodings_png_uv.dart';
import 'package:foresignal_api/src/model/field_encodings_velocity_json.dart';
import 'package:foresignal_api/src/model/field_encodings_i16.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_encodings.g.dart';

/// Alternative encodings of a wind field listed in the field manifest
///
/// Properties:
/// * [velocityJson]
/// * [pngUv]
/// * [i16]
/// * [pngTiles]
/// * [tilejson] - TileJSON-style link
@BuiltValue()
abstract class FieldEncodings
    implements Built<FieldEncodings, FieldEncodingsBuilder> {
  @BuiltValueField(wireName: r'velocityJson')
  FieldEncodingsVelocityJson? get velocityJson;

  @BuiltValueField(wireName: r'pngUv')
  FieldEncodingsPngUv? get pngUv;

  @BuiltValueField(wireName: r'i16')
  FieldEncodingsI16? get i16;

  @BuiltValueField(wireName: r'pngTiles')
  FieldEncodingsPngTiles? get pngTiles;

  /// TileJSON-style link
  @BuiltValueField(wireName: r'tilejson')
  String? get tilejson;

  FieldEncodings._();

  factory FieldEncodings([void updates(FieldEncodingsBuilder b)]) =
      _$FieldEncodings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldEncodingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldEncodings> get serializer =>
      _$FieldEncodingsSerializer();
}

class _$FieldEncodingsSerializer
    implements PrimitiveSerializer<FieldEncodings> {
  @override
  final Iterable<Type> types = const [FieldEncodings, _$FieldEncodings];

  @override
  final String wireName = r'FieldEncodings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldEncodings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.velocityJson != null) {
      yield r'velocityJson';
      yield serializers.serialize(
        object.velocityJson,
        specifiedType: const FullType.nullable(FieldEncodingsVelocityJson),
      );
    }
    if (object.pngUv != null) {
      yield r'pngUv';
      yield serializers.serialize(
        object.pngUv,
        specifiedType: const FullType.nullable(FieldEncodingsPngUv),
      );
    }
    if (object.i16 != null) {
      yield r'i16';
      yield serializers.serialize(
        object.i16,
        specifiedType: const FullType.nullable(FieldEncodingsI16),
      );
    }
    if (object.pngTiles != null) {
      yield r'pngTiles';
      yield serializers.serialize(
        object.pngTiles,
        specifiedType: const FullType.nullable(FieldEncodingsPngTiles),
      );
    }
    if (object.tilejson != null) {
      yield r'tilejson';
      yield serializers.serialize(
        object.tilejson,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldEncodings object, {
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
    required FieldEncodingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'velocityJson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FieldEncodingsVelocityJson,
                    ),
                  )
                  as FieldEncodingsVelocityJson?;
          if (valueDes == null) continue;
          result.velocityJson.replace(valueDes);
          break;
        case r'pngUv':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FieldEncodingsPngUv),
                  )
                  as FieldEncodingsPngUv?;
          if (valueDes == null) continue;
          result.pngUv.replace(valueDes);
          break;
        case r'i16':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(FieldEncodingsI16),
                  )
                  as FieldEncodingsI16?;
          if (valueDes == null) continue;
          result.i16.replace(valueDes);
          break;
        case r'pngTiles':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FieldEncodingsPngTiles,
                    ),
                  )
                  as FieldEncodingsPngTiles?;
          if (valueDes == null) continue;
          result.pngTiles.replace(valueDes);
          break;
        case r'tilejson':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tilejson = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldEncodings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldEncodingsBuilder();
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
