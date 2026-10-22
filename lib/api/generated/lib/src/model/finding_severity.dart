//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'finding_severity.g.dart';

class FindingSeverity extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const FindingSeverity info = _$info;
  @BuiltValueEnumConst(wireName: r'notable')
  static const FindingSeverity notable = _$notable;
  @BuiltValueEnumConst(wireName: r'significant')
  static const FindingSeverity significant = _$significant;

  static Serializer<FindingSeverity> get serializer =>
      _$findingSeveritySerializer;

  const FindingSeverity._(String name) : super(name);

  static BuiltSet<FindingSeverity> get values => _$values;
  static FindingSeverity valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FindingSeverityMixin = Object with _$FindingSeverityMixin;
