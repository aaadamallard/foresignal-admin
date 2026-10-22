//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edp_source_info_terms.g.dart';

/// EdpSourceInfoTerms
///
/// Properties:
/// * [summary]
/// * [url]
@BuiltValue()
abstract class EdpSourceInfoTerms
    implements Built<EdpSourceInfoTerms, EdpSourceInfoTermsBuilder> {
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'url')
  String? get url;

  EdpSourceInfoTerms._();

  factory EdpSourceInfoTerms([void updates(EdpSourceInfoTermsBuilder b)]) =
      _$EdpSourceInfoTerms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdpSourceInfoTermsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdpSourceInfoTerms> get serializer =>
      _$EdpSourceInfoTermsSerializer();
}

class _$EdpSourceInfoTermsSerializer
    implements PrimitiveSerializer<EdpSourceInfoTerms> {
  @override
  final Iterable<Type> types = const [EdpSourceInfoTerms, _$EdpSourceInfoTerms];

  @override
  final String wireName = r'EdpSourceInfoTerms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdpSourceInfoTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdpSourceInfoTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdpSourceInfoTermsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  EdpSourceInfoTerms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdpSourceInfoTermsBuilder();
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
