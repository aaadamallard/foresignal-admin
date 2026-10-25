//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'confidence_level.g.dart';

/// Analytic confidence in the evidence (separate from probability)
class ConfidenceLevel extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const ConfidenceLevel low = _$low;
  @BuiltValueEnumConst(wireName: r'moderate')
  static const ConfidenceLevel moderate = _$moderate;
  @BuiltValueEnumConst(wireName: r'high')
  static const ConfidenceLevel high = _$high;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ConfidenceLevel unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ConfidenceLevel> get serializer =>
      _$confidenceLevelSerializer;

  const ConfidenceLevel._(String name) : super(name);

  static BuiltSet<ConfidenceLevel> get values => _$values;
  static ConfidenceLevel valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ConfidenceLevelMixin = Object with _$ConfidenceLevelMixin;
