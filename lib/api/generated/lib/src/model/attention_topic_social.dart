//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/attention_topic_social_channel.dart';
import 'package:foresignal_api/src/model/attention_topic_social_accounts_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attention_topic_social.g.dart';

/// Social tracking block of an attention topic (135). A post matches when it matches a term, hashtag, account or channel and no exclude term (case- and diacritic-folded, word-boundary aware)
///
/// Properties:
/// * [terms] - Terms per language (BCP 47 → phrases); at most 50 in total
/// * [hashtags]
/// * [accounts]
/// * [channels]
/// * [exclude] - Exclude terms
/// * [platforms] - Subset of networks; empty = all enabled
/// * [placeIds] - 036 places whose names and aliases are added as terms
/// * [regionCodes] - 040 regions whose names and aliases are added as terms
/// * [entityRefs] - 098 entities whose names and identifiers are terms
/// * [mode] - `standing` collects continuously; `cue-only` only on cues (137)
@BuiltValue()
abstract class AttentionTopicSocial
    implements Built<AttentionTopicSocial, AttentionTopicSocialBuilder> {
  /// Terms per language (BCP 47 → phrases); at most 50 in total
  @BuiltValueField(wireName: r'terms')
  BuiltMap<String, BuiltList<String>>? get terms;

  @BuiltValueField(wireName: r'hashtags')
  BuiltList<String>? get hashtags;

  @BuiltValueField(wireName: r'accounts')
  BuiltList<AttentionTopicSocialAccountsInner>? get accounts;

  @BuiltValueField(wireName: r'channels')
  BuiltList<AttentionTopicSocialChannel>? get channels;

  /// Exclude terms
  @BuiltValueField(wireName: r'exclude')
  BuiltList<String>? get exclude;

  /// Subset of networks; empty = all enabled
  @BuiltValueField(wireName: r'platforms')
  BuiltList<String>? get platforms;

  /// 036 places whose names and aliases are added as terms
  @BuiltValueField(wireName: r'placeIds')
  BuiltList<String>? get placeIds;

  /// 040 regions whose names and aliases are added as terms
  @BuiltValueField(wireName: r'regionCodes')
  BuiltList<String>? get regionCodes;

  /// 098 entities whose names and identifiers are terms
  @BuiltValueField(wireName: r'entityRefs')
  BuiltList<String>? get entityRefs;

  /// `standing` collects continuously; `cue-only` only on cues (137)
  @BuiltValueField(wireName: r'mode')
  AttentionTopicSocialModeEnum? get mode;
  // enum modeEnum {  standing,  cue-only,  };

  AttentionTopicSocial._();

  factory AttentionTopicSocial([void updates(AttentionTopicSocialBuilder b)]) =
      _$AttentionTopicSocial;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttentionTopicSocialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttentionTopicSocial> get serializer =>
      _$AttentionTopicSocialSerializer();
}

class _$AttentionTopicSocialSerializer
    implements PrimitiveSerializer<AttentionTopicSocial> {
  @override
  final Iterable<Type> types = const [
    AttentionTopicSocial,
    _$AttentionTopicSocial,
  ];

  @override
  final String wireName = r'AttentionTopicSocial';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttentionTopicSocial object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [FullType(String)]),
        ]),
      );
    }
    if (object.hashtags != null) {
      yield r'hashtags';
      yield serializers.serialize(
        object.hashtags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.accounts != null) {
      yield r'accounts';
      yield serializers.serialize(
        object.accounts,
        specifiedType: const FullType(BuiltList, [
          FullType(AttentionTopicSocialAccountsInner),
        ]),
      );
    }
    if (object.channels != null) {
      yield r'channels';
      yield serializers.serialize(
        object.channels,
        specifiedType: const FullType(BuiltList, [
          FullType(AttentionTopicSocialChannel),
        ]),
      );
    }
    if (object.exclude != null) {
      yield r'exclude';
      yield serializers.serialize(
        object.exclude,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.placeIds != null) {
      yield r'placeIds';
      yield serializers.serialize(
        object.placeIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.regionCodes != null) {
      yield r'regionCodes';
      yield serializers.serialize(
        object.regionCodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.entityRefs != null) {
      yield r'entityRefs';
      yield serializers.serialize(
        object.entityRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(AttentionTopicSocialModeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AttentionTopicSocial object, {
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
    required AttentionTopicSocialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'terms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(BuiltList, [FullType(String)]),
                    ]),
                  )
                  as BuiltMap<String, BuiltList<String>>?;
          if (valueDes == null) continue;
          result.terms.replace(valueDes);
          break;
        case r'hashtags':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.hashtags.replace(valueDes);
          break;
        case r'accounts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AttentionTopicSocialAccountsInner),
                    ]),
                  )
                  as BuiltList<AttentionTopicSocialAccountsInner>?;
          if (valueDes == null) continue;
          result.accounts.replace(valueDes);
          break;
        case r'channels':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(AttentionTopicSocialChannel),
                    ]),
                  )
                  as BuiltList<AttentionTopicSocialChannel>?;
          if (valueDes == null) continue;
          result.channels.replace(valueDes);
          break;
        case r'exclude':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.exclude.replace(valueDes);
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
        case r'placeIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.placeIds.replace(valueDes);
          break;
        case r'regionCodes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.regionCodes.replace(valueDes);
          break;
        case r'entityRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.entityRefs.replace(valueDes);
          break;
        case r'mode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AttentionTopicSocialModeEnum,
                    ),
                  )
                  as AttentionTopicSocialModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttentionTopicSocial deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttentionTopicSocialBuilder();
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

/// `standing` collects continuously; `cue-only` only on cues (137)
class AttentionTopicSocialModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'standing')
  static const AttentionTopicSocialModeEnum standing =
      _$attentionTopicSocialModeEnum_standing;
  @BuiltValueEnumConst(wireName: r'cue-only')
  static const AttentionTopicSocialModeEnum cueOnly =
      _$attentionTopicSocialModeEnum_cueOnly;

  static Serializer<AttentionTopicSocialModeEnum> get serializer =>
      _$attentionTopicSocialModeEnumSerializer;

  const AttentionTopicSocialModeEnum._(String name) : super(name);

  static BuiltSet<AttentionTopicSocialModeEnum> get values =>
      _$attentionTopicSocialModeEnumValues;
  static AttentionTopicSocialModeEnum valueOf(String name) =>
      _$attentionTopicSocialModeEnumValueOf(name);
}
