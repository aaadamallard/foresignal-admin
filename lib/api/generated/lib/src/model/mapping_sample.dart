//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mapping_sample.g.dart';

/// A raw inbound sample for preview or suggestion; form and query inputs are converted to a flat JSON object of strings before mapping (059)
///
/// Properties:
/// * [contentType]
/// * [body] - Raw body as a string, or a JSON value for JSON samples
/// * [query] - Raw query string or name→value map (GET protocols such as WU)
@BuiltValue()
abstract class MappingSample
    implements Built<MappingSample, MappingSampleBuilder> {
  @BuiltValueField(wireName: r'contentType')
  String get contentType;

  /// Raw body as a string, or a JSON value for JSON samples
  @BuiltValueField(wireName: r'body')
  JsonObject? get body;

  /// Raw query string or name→value map (GET protocols such as WU)
  @BuiltValueField(wireName: r'query')
  BuiltMap<String, String>? get query;

  MappingSample._();

  factory MappingSample([void updates(MappingSampleBuilder b)]) =
      _$MappingSample;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MappingSampleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MappingSample> get serializer =>
      _$MappingSampleSerializer();
}

class _$MappingSampleSerializer implements PrimitiveSerializer<MappingSample> {
  @override
  final Iterable<Type> types = const [MappingSample, _$MappingSample];

  @override
  final String wireName = r'MappingSample';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MappingSample object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contentType';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
        specifiedType: const FullType.nullable(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MappingSample object, {
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
    required MappingSampleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contentType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.contentType = valueDes;
          break;
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'query':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.query.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MappingSample deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MappingSampleBuilder();
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
