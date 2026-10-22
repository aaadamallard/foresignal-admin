// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPlatformId _$blueskyJetstream = const SocialPlatformId._(
  'blueskyJetstream',
);
const SocialPlatformId _$blueskySearch = const SocialPlatformId._(
  'blueskySearch',
);
const SocialPlatformId _$mastodon = const SocialPlatformId._('mastodon');
const SocialPlatformId _$reddit = const SocialPlatformId._('reddit');
const SocialPlatformId _$youtube = const SocialPlatformId._('youtube');
const SocialPlatformId _$x = const SocialPlatformId._('x');
const SocialPlatformId _$threads = const SocialPlatformId._('threads');
const SocialPlatformId _$instagramHashtags = const SocialPlatformId._(
  'instagramHashtags',
);

SocialPlatformId _$valueOf(String name) {
  switch (name) {
    case 'blueskyJetstream':
      return _$blueskyJetstream;
    case 'blueskySearch':
      return _$blueskySearch;
    case 'mastodon':
      return _$mastodon;
    case 'reddit':
      return _$reddit;
    case 'youtube':
      return _$youtube;
    case 'x':
      return _$x;
    case 'threads':
      return _$threads;
    case 'instagramHashtags':
      return _$instagramHashtags;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialPlatformId> _$values =
    BuiltSet<SocialPlatformId>(const <SocialPlatformId>[
      _$blueskyJetstream,
      _$blueskySearch,
      _$mastodon,
      _$reddit,
      _$youtube,
      _$x,
      _$threads,
      _$instagramHashtags,
    ]);

class _$SocialPlatformIdMeta {
  const _$SocialPlatformIdMeta();
  SocialPlatformId get blueskyJetstream => _$blueskyJetstream;
  SocialPlatformId get blueskySearch => _$blueskySearch;
  SocialPlatformId get mastodon => _$mastodon;
  SocialPlatformId get reddit => _$reddit;
  SocialPlatformId get youtube => _$youtube;
  SocialPlatformId get x => _$x;
  SocialPlatformId get threads => _$threads;
  SocialPlatformId get instagramHashtags => _$instagramHashtags;
  SocialPlatformId valueOf(String name) => _$valueOf(name);
  BuiltSet<SocialPlatformId> get values => _$values;
}

mixin _$SocialPlatformIdMixin {
  // ignore: non_constant_identifier_names
  _$SocialPlatformIdMeta get SocialPlatformId => const _$SocialPlatformIdMeta();
}

Serializer<SocialPlatformId> _$socialPlatformIdSerializer =
    _$SocialPlatformIdSerializer();

class _$SocialPlatformIdSerializer
    implements PrimitiveSerializer<SocialPlatformId> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'blueskyJetstream': 'bluesky-jetstream',
    'blueskySearch': 'bluesky-search',
    'mastodon': 'mastodon',
    'reddit': 'reddit',
    'youtube': 'youtube',
    'x': 'x',
    'threads': 'threads',
    'instagramHashtags': 'instagram-hashtags',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bluesky-jetstream': 'blueskyJetstream',
    'bluesky-search': 'blueskySearch',
    'mastodon': 'mastodon',
    'reddit': 'reddit',
    'youtube': 'youtube',
    'x': 'x',
    'threads': 'threads',
    'instagram-hashtags': 'instagramHashtags',
  };

  @override
  final Iterable<Type> types = const <Type>[SocialPlatformId];
  @override
  final String wireName = 'SocialPlatformId';

  @override
  Object serialize(
    Serializers serializers,
    SocialPlatformId object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialPlatformId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialPlatformId.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
