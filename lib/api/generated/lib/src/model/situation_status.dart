//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_status.g.dart';

/// Situation lifecycle status; `closed` is final
class SituationStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emerging')
  static const SituationStatus emerging = _$emerging;
  @BuiltValueEnumConst(wireName: r'active')
  static const SituationStatus active = _$active;
  @BuiltValueEnumConst(wireName: r'dormant')
  static const SituationStatus dormant = _$dormant;
  @BuiltValueEnumConst(wireName: r'closed')
  static const SituationStatus closed = _$closed;

  static Serializer<SituationStatus> get serializer =>
      _$situationStatusSerializer;

  const SituationStatus._(String name) : super(name);

  static BuiltSet<SituationStatus> get values => _$values;
  static SituationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SituationStatusMixin = Object with _$SituationStatusMixin;
