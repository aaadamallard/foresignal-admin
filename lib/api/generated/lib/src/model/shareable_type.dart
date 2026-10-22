//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shareable_type.g.dart';

/// Object types that carry an owner, visibility, access list and TLP (Client-Contract §10)
class ShareableType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'investigation')
  static const ShareableType investigation = _$investigation;
  @BuiltValueEnumConst(wireName: r'workspace')
  static const ShareableType workspace = _$workspace;
  @BuiltValueEnumConst(wireName: r'chronicle')
  static const ShareableType chronicle = _$chronicle;
  @BuiltValueEnumConst(wireName: r'report')
  static const ShareableType report = _$report;
  @BuiltValueEnumConst(wireName: r'saved-search')
  static const ShareableType savedSearch = _$savedSearch;
  @BuiltValueEnumConst(wireName: r'annotation')
  static const ShareableType annotation = _$annotation;
  @BuiltValueEnumConst(wireName: r'attachment')
  static const ShareableType attachment = _$attachment;
  @BuiltValueEnumConst(wireName: r'evidence-item')
  static const ShareableType evidenceItem = _$evidenceItem;
  @BuiltValueEnumConst(wireName: r'tag')
  static const ShareableType tag = _$tag;

  static Serializer<ShareableType> get serializer => _$shareableTypeSerializer;

  const ShareableType._(String name) : super(name);

  static BuiltSet<ShareableType> get values => _$values;
  static ShareableType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ShareableTypeMixin = Object with _$ShareableTypeMixin;
