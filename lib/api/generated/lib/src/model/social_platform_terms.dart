//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_terms.g.dart';

/// Terms and cost summary from docs/Source-Catalog.md (the operator decides)
///
/// Properties:
/// * [summary]
/// * [url]
/// * [costs]
@BuiltValue()
abstract class SocialPlatformTerms
    implements Built<SocialPlatformTerms, SocialPlatformTermsBuilder> {
  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'costs')
  String? get costs;

  SocialPlatformTerms._();

  factory SocialPlatformTerms([void updates(SocialPlatformTermsBuilder b)]) =
      _$SocialPlatformTerms;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformTermsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformTerms> get serializer =>
      _$SocialPlatformTermsSerializer();
}

class _$SocialPlatformTermsSerializer
    implements PrimitiveSerializer<SocialPlatformTerms> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformTerms,
    _$SocialPlatformTerms,
  ];

  @override
  final String wireName = r'SocialPlatformTerms';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformTerms object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.costs != null) {
      yield r'costs';
      yield serializers.serialize(
        object.costs,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformTerms object, {
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
    required SocialPlatformTermsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'summary':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.summary = valueDes;
          break;
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
        case r'costs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.costs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformTerms deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformTermsBuilder();
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
