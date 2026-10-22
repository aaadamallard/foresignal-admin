//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_encodings_velocity_json.g.dart';

/// FieldEncodingsVelocityJson
///
/// Properties:
/// * [url]
@BuiltValue()
abstract class FieldEncodingsVelocityJson
    implements
        Built<FieldEncodingsVelocityJson, FieldEncodingsVelocityJsonBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  FieldEncodingsVelocityJson._();

  factory FieldEncodingsVelocityJson([
    void updates(FieldEncodingsVelocityJsonBuilder b),
  ]) = _$FieldEncodingsVelocityJson;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldEncodingsVelocityJsonBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldEncodingsVelocityJson> get serializer =>
      _$FieldEncodingsVelocityJsonSerializer();
}

class _$FieldEncodingsVelocityJsonSerializer
    implements PrimitiveSerializer<FieldEncodingsVelocityJson> {
  @override
  final Iterable<Type> types = const [
    FieldEncodingsVelocityJson,
    _$FieldEncodingsVelocityJson,
  ];

  @override
  final String wireName = r'FieldEncodingsVelocityJson';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldEncodingsVelocityJson object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldEncodingsVelocityJson object, {
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
    required FieldEncodingsVelocityJsonBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldEncodingsVelocityJson deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldEncodingsVelocityJsonBuilder();
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
