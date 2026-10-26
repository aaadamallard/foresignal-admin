//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 's3_target.g.dart';

/// S3-compatible target (SigV4; endpoint checked by the outbound URL policy)
///
/// Properties:
/// * [endpoint]
/// * [bucket]
/// * [prefix]
/// * [region]
/// * [pathStyle]
@BuiltValue()
abstract class S3Target implements Built<S3Target, S3TargetBuilder> {
  @BuiltValueField(wireName: r'endpoint')
  String get endpoint;

  @BuiltValueField(wireName: r'bucket')
  String get bucket;

  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'region')
  String? get region;

  @BuiltValueField(wireName: r'pathStyle')
  bool? get pathStyle;

  S3Target._();

  factory S3Target([void updates(S3TargetBuilder b)]) = _$S3Target;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(S3TargetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<S3Target> get serializer => _$S3TargetSerializer();
}

class _$S3TargetSerializer implements PrimitiveSerializer<S3Target> {
  @override
  final Iterable<Type> types = const [S3Target, _$S3Target];

  @override
  final String wireName = r'S3Target';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    S3Target object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoint';
    yield serializers.serialize(
      object.endpoint,
      specifiedType: const FullType(String),
    );
    yield r'bucket';
    yield serializers.serialize(
      object.bucket,
      specifiedType: const FullType(String),
    );
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType(String),
      );
    }
    if (object.pathStyle != null) {
      yield r'pathStyle';
      yield serializers.serialize(
        object.pathStyle,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    S3Target object, {
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
    required S3TargetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.endpoint = valueDes;
          break;
        case r'bucket':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.bucket = valueDes;
          break;
        case r'prefix':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.prefix = valueDes;
          break;
        case r'region':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'pathStyle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.pathStyle = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  S3Target deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3TargetBuilder();
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
