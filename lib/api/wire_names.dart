import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:foresignal_api/foresignal_api.dart';

/// The wire name of a generated enum value (`red-team`, `not_useful`,
/// `digest-only`), which its Dart name (`redTeam`) does not always match.
String wireOf(EnumClass value) =>
    standardSerializers.serialize(value, specifiedType: FullType(value.runtimeType))! as String;

/// [value]'s wire name as words for display: `digest-only` → "Digest only",
/// `not_useful` → "Not useful".
String wireLabel(EnumClass value) => wireText(wireOf(value));

/// A wire name as words for display; an upper-case wire name
/// (`CO_ASSERTED`) reads as a sentence (`Co asserted`).
String wireText(String wire) {
  final shouted = wire.length > 1 && RegExp(r'^[A-Z][A-Z0-9_]*$').hasMatch(wire);
  final words = (shouted ? wire.toLowerCase() : wire).replaceAll(RegExp('[-_]'), ' ');
  return words.isEmpty ? words : '${words[0].toUpperCase()}${words.substring(1)}';
}
