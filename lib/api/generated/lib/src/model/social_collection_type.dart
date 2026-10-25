//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_collection_type.g.dart';

/// Measured versus sampled (135): `complete` stream for its filter (Jetstream, Mastodon hashtag stream, X counts), `paged` search (complete within the API's window and limits), `sampled` ranked or targeted sample (top-post search, model-mediated search, cues). Only complete and paged paths feed baselines and velocity
class SocialCollectionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'complete')
  static const SocialCollectionType complete = _$complete;
  @BuiltValueEnumConst(wireName: r'paged')
  static const SocialCollectionType paged = _$paged;
  @BuiltValueEnumConst(wireName: r'sampled')
  static const SocialCollectionType sampled = _$sampled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialCollectionType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<SocialCollectionType> get serializer =>
      _$socialCollectionTypeSerializer;

  const SocialCollectionType._(String name) : super(name);

  static BuiltSet<SocialCollectionType> get values => _$values;
  static SocialCollectionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SocialCollectionTypeMixin = Object
    with _$SocialCollectionTypeMixin;
