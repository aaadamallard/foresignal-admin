//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_settings_cues_xai_x_search.g.dart';

/// Optional xai-x-search backend
///
/// Properties:
/// * [enabled]
/// * [maxResults]
@BuiltValue()
abstract class SocialSettingsCuesXaiXSearch
    implements
        Built<SocialSettingsCuesXaiXSearch,
            SocialSettingsCuesXaiXSearchBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'maxResults')
  int? get maxResults;

  SocialSettingsCuesXaiXSearch._();

  factory SocialSettingsCuesXaiXSearch(
          [void updates(SocialSettingsCuesXaiXSearchBuilder b)]) =
      _$SocialSettingsCuesXaiXSearch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialSettingsCuesXaiXSearchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialSettingsCuesXaiXSearch> get serializer =>
      _$SocialSettingsCuesXaiXSearchSerializer();
}

class _$SocialSettingsCuesXaiXSearchSerializer
    implements PrimitiveSerializer<SocialSettingsCuesXaiXSearch> {
  @override
  final Iterable<Type> types = const [
    SocialSettingsCuesXaiXSearch,
    _$SocialSettingsCuesXaiXSearch
  ];

  @override
  final String wireName = r'SocialSettingsCuesXaiXSearch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialSettingsCuesXaiXSearch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxResults != null) {
      yield r'maxResults';
      yield serializers.serialize(
        object.maxResults,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialSettingsCuesXaiXSearch object, {
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
    required SocialSettingsCuesXaiXSearchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'maxResults':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxResults = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialSettingsCuesXaiXSearch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialSettingsCuesXaiXSearchBuilder();
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
