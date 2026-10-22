//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'visibility.g.dart';

class Visibility extends EnumClass {
  @BuiltValueEnumConst(wireName: r'private')
  static const Visibility private = _$private;
  @BuiltValueEnumConst(wireName: r'shared')
  static const Visibility shared = _$shared;
  @BuiltValueEnumConst(wireName: r'instance')
  static const Visibility instance = _$instance;

  static Serializer<Visibility> get serializer => _$visibilitySerializer;

  const Visibility._(String name) : super(name);

  static BuiltSet<Visibility> get values => _$values;
  static Visibility valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VisibilityMixin = Object with _$VisibilityMixin;
