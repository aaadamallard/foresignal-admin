//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_platform_id.g.dart';

/// Social platform adapter (a 004 source with descriptor, budget, health and credentials). Only `bluesky-jetstream` is on by default (135)
class SocialPlatformId extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bluesky-jetstream')
  static const SocialPlatformId blueskyJetstream = _$blueskyJetstream;
  @BuiltValueEnumConst(wireName: r'bluesky-search')
  static const SocialPlatformId blueskySearch = _$blueskySearch;
  @BuiltValueEnumConst(wireName: r'mastodon')
  static const SocialPlatformId mastodon = _$mastodon;
  @BuiltValueEnumConst(wireName: r'reddit')
  static const SocialPlatformId reddit = _$reddit;
  @BuiltValueEnumConst(wireName: r'youtube')
  static const SocialPlatformId youtube = _$youtube;
  @BuiltValueEnumConst(wireName: r'x')
  static const SocialPlatformId x = _$x;
  @BuiltValueEnumConst(wireName: r'threads')
  static const SocialPlatformId threads = _$threads;
  @BuiltValueEnumConst(wireName: r'instagram-hashtags')
  static const SocialPlatformId instagramHashtags = _$instagramHashtags;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialPlatformId unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SocialPlatformId> get serializer =>
      _$socialPlatformIdSerializer;

  const SocialPlatformId._(String name) : super(name);

  static BuiltSet<SocialPlatformId> get values => _$values;
  static SocialPlatformId valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SocialPlatformIdMixin = Object with _$SocialPlatformIdMixin;
