//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_theme.g.dart';

/// Situation theme (118 `ThemeTable`)
class SituationTheme extends EnumClass {
  @BuiltValueEnumConst(wireName: r'maritime')
  static const SituationTheme maritime = _$maritime;
  @BuiltValueEnumConst(wireName: r'aviation')
  static const SituationTheme aviation = _$aviation;
  @BuiltValueEnumConst(wireName: r'conflict')
  static const SituationTheme conflict = _$conflict;
  @BuiltValueEnumConst(wireName: r'infrastructure')
  static const SituationTheme infrastructure = _$infrastructure;
  @BuiltValueEnumConst(wireName: r'weather')
  static const SituationTheme weather = _$weather;
  @BuiltValueEnumConst(wireName: r'cyber')
  static const SituationTheme cyber = _$cyber;
  @BuiltValueEnumConst(wireName: r'markets')
  static const SituationTheme markets = _$markets;
  @BuiltValueEnumConst(wireName: r'health')
  static const SituationTheme health = _$health;
  @BuiltValueEnumConst(wireName: r'space')
  static const SituationTheme space = _$space;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const SituationTheme mixed = _$mixed;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SituationTheme unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SituationTheme> get serializer =>
      _$situationThemeSerializer;

  const SituationTheme._(String name) : super(name);

  static BuiltSet<SituationTheme> get values => _$values;
  static SituationTheme valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SituationThemeMixin = Object with _$SituationThemeMixin;
