//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_section_status.g.dart';

/// Status of a derived weather section; anything but ok means unknown, never clear
class WeatherSectionStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const WeatherSectionStatus ok = _$ok;
  @BuiltValueEnumConst(wireName: r'stale')
  static const WeatherSectionStatus stale = _$stale;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const WeatherSectionStatus noCoverage = _$noCoverage;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const WeatherSectionStatus unavailable = _$unavailable;

  static Serializer<WeatherSectionStatus> get serializer =>
      _$weatherSectionStatusSerializer;

  const WeatherSectionStatus._(String name) : super(name);

  static BuiltSet<WeatherSectionStatus> get values => _$values;
  static WeatherSectionStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WeatherSectionStatusMixin = Object
    with _$WeatherSectionStatusMixin;
