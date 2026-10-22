//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'icd_term.g.dart';

/// ICD 203 likelihood term, derived from the numeric probability
class IcdTerm extends EnumClass {
  @BuiltValueEnumConst(wireName: r'almost no chance')
  static const IcdTerm almostNoChance = _$almostNoChance;
  @BuiltValueEnumConst(wireName: r'very unlikely')
  static const IcdTerm veryUnlikely = _$veryUnlikely;
  @BuiltValueEnumConst(wireName: r'unlikely')
  static const IcdTerm unlikely = _$unlikely;
  @BuiltValueEnumConst(wireName: r'roughly even chance')
  static const IcdTerm roughlyEvenChance = _$roughlyEvenChance;
  @BuiltValueEnumConst(wireName: r'likely')
  static const IcdTerm likely = _$likely;
  @BuiltValueEnumConst(wireName: r'very likely')
  static const IcdTerm veryLikely = _$veryLikely;
  @BuiltValueEnumConst(wireName: r'almost certain')
  static const IcdTerm almostCertain = _$almostCertain;

  static Serializer<IcdTerm> get serializer => _$icdTermSerializer;

  const IcdTerm._(String name) : super(name);

  static BuiltSet<IcdTerm> get values => _$values;
  static IcdTerm valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class IcdTermMixin = Object with _$IcdTermMixin;
