//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'metar_payload_sky_inner.g.dart';

/// Sky layer
///
/// Properties:
/// * [cover]
/// * [baseFtAgl]
@BuiltValue()
abstract class MetarPayloadSkyInner
    implements Built<MetarPayloadSkyInner, MetarPayloadSkyInnerBuilder> {
  @BuiltValueField(wireName: r'cover')
  String get cover;

  @BuiltValueField(wireName: r'baseFtAgl')
  int? get baseFtAgl;

  MetarPayloadSkyInner._();

  factory MetarPayloadSkyInner([void updates(MetarPayloadSkyInnerBuilder b)]) =
      _$MetarPayloadSkyInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MetarPayloadSkyInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MetarPayloadSkyInner> get serializer =>
      _$MetarPayloadSkyInnerSerializer();
}

class _$MetarPayloadSkyInnerSerializer
    implements PrimitiveSerializer<MetarPayloadSkyInner> {
  @override
  final Iterable<Type> types = const [
    MetarPayloadSkyInner,
    _$MetarPayloadSkyInner,
  ];

  @override
  final String wireName = r'MetarPayloadSkyInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MetarPayloadSkyInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cover';
    yield serializers.serialize(
      object.cover,
      specifiedType: const FullType(String),
    );
    if (object.baseFtAgl != null) {
      yield r'baseFtAgl';
      yield serializers.serialize(
        object.baseFtAgl,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MetarPayloadSkyInner object, {
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
    required MetarPayloadSkyInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cover':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.cover = valueDes;
          break;
        case r'baseFtAgl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.baseFtAgl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MetarPayloadSkyInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetarPayloadSkyInnerBuilder();
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
