//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'history_tier.g.dart';

/// History tier: STANDARD (per-source windows, chunked deletes) or TRACK (one `trackWindow`, partition drops)
class HistoryTier extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STANDARD')
  static const HistoryTier STANDARD = _$STANDARD;
  @BuiltValueEnumConst(wireName: r'TRACK')
  static const HistoryTier TRACK = _$TRACK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HistoryTier unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<HistoryTier> get serializer => _$historyTierSerializer;

  const HistoryTier._(String name) : super(name);

  static BuiltSet<HistoryTier> get values => _$values;
  static HistoryTier valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class HistoryTierMixin = Object with _$HistoryTierMixin;
