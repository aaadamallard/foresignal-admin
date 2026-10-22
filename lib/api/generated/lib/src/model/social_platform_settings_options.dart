//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_settings_options.g.dart';

/// Platform-specific options
///
/// Properties:
/// * [instances] - Mastodon instance hosts
/// * [replay] - Bluesky Jetstream Network Replay backfill (operator API token)
/// * [standingCounts] - X hourly counts for standing topics
/// * [fullArchive] - X full-archive endpoints (upgraded access)
/// * [comments] - YouTube comment threads
/// * [maxResults] - X: max_results of a recent search (each post returned is billed)
/// * [fieldsParam] - X: the field parameter naming, post.fields (the live OpenAPI) or tweet.fields (the data dictionary); X's documents disagree (135)
@BuiltValue()
abstract class SocialPlatformSettingsOptions
    implements
        Built<
          SocialPlatformSettingsOptions,
          SocialPlatformSettingsOptionsBuilder
        > {
  /// Mastodon instance hosts
  @BuiltValueField(wireName: r'instances')
  BuiltList<String>? get instances;

  /// Bluesky Jetstream Network Replay backfill (operator API token)
  @BuiltValueField(wireName: r'replay')
  bool? get replay;

  /// X hourly counts for standing topics
  @BuiltValueField(wireName: r'standingCounts')
  bool? get standingCounts;

  /// X full-archive endpoints (upgraded access)
  @BuiltValueField(wireName: r'fullArchive')
  bool? get fullArchive;

  /// YouTube comment threads
  @BuiltValueField(wireName: r'comments')
  bool? get comments;

  /// X: max_results of a recent search (each post returned is billed)
  @BuiltValueField(wireName: r'maxResults')
  int? get maxResults;

  /// X: the field parameter naming, post.fields (the live OpenAPI) or tweet.fields (the data dictionary); X's documents disagree (135)
  @BuiltValueField(wireName: r'fieldsParam')
  SocialPlatformSettingsOptionsFieldsParamEnum? get fieldsParam;
  // enum fieldsParamEnum {  post,  tweet,  };

  SocialPlatformSettingsOptions._();

  factory SocialPlatformSettingsOptions([
    void updates(SocialPlatformSettingsOptionsBuilder b),
  ]) = _$SocialPlatformSettingsOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialPlatformSettingsOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialPlatformSettingsOptions> get serializer =>
      _$SocialPlatformSettingsOptionsSerializer();
}

class _$SocialPlatformSettingsOptionsSerializer
    implements PrimitiveSerializer<SocialPlatformSettingsOptions> {
  @override
  final Iterable<Type> types = const [
    SocialPlatformSettingsOptions,
    _$SocialPlatformSettingsOptions,
  ];

  @override
  final String wireName = r'SocialPlatformSettingsOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialPlatformSettingsOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.instances != null) {
      yield r'instances';
      yield serializers.serialize(
        object.instances,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.replay != null) {
      yield r'replay';
      yield serializers.serialize(
        object.replay,
        specifiedType: const FullType(bool),
      );
    }
    if (object.standingCounts != null) {
      yield r'standingCounts';
      yield serializers.serialize(
        object.standingCounts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fullArchive != null) {
      yield r'fullArchive';
      yield serializers.serialize(
        object.fullArchive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.comments != null) {
      yield r'comments';
      yield serializers.serialize(
        object.comments,
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
    if (object.fieldsParam != null) {
      yield r'fieldsParam';
      yield serializers.serialize(
        object.fieldsParam,
        specifiedType: const FullType(
          SocialPlatformSettingsOptionsFieldsParamEnum,
        ),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformSettingsOptions object, {
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
    required SocialPlatformSettingsOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instances':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.instances.replace(valueDes);
          break;
        case r'replay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.replay = valueDes;
          break;
        case r'standingCounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.standingCounts = valueDes;
          break;
        case r'fullArchive':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.fullArchive = valueDes;
          break;
        case r'comments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.comments = valueDes;
          break;
        case r'maxResults':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxResults = valueDes;
          break;
        case r'fieldsParam':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialPlatformSettingsOptionsFieldsParamEnum,
                    ),
                  )
                  as SocialPlatformSettingsOptionsFieldsParamEnum?;
          if (valueDes == null) continue;
          result.fieldsParam = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialPlatformSettingsOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialPlatformSettingsOptionsBuilder();
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

/// X: the field parameter naming, post.fields (the live OpenAPI) or tweet.fields (the data dictionary); X's documents disagree (135)
class SocialPlatformSettingsOptionsFieldsParamEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'post')
  static const SocialPlatformSettingsOptionsFieldsParamEnum post =
      _$socialPlatformSettingsOptionsFieldsParamEnum_post;
  @BuiltValueEnumConst(wireName: r'tweet')
  static const SocialPlatformSettingsOptionsFieldsParamEnum tweet =
      _$socialPlatformSettingsOptionsFieldsParamEnum_tweet;

  static Serializer<SocialPlatformSettingsOptionsFieldsParamEnum>
  get serializer => _$socialPlatformSettingsOptionsFieldsParamEnumSerializer;

  const SocialPlatformSettingsOptionsFieldsParamEnum._(String name)
    : super(name);

  static BuiltSet<SocialPlatformSettingsOptionsFieldsParamEnum> get values =>
      _$socialPlatformSettingsOptionsFieldsParamEnumValues;
  static SocialPlatformSettingsOptionsFieldsParamEnum valueOf(String name) =>
      _$socialPlatformSettingsOptionsFieldsParamEnumValueOf(name);
}
