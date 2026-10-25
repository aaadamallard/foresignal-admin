import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'tolerant_enums.dart';

/// The wire name of a generated enum value (`red-team`, `not_useful`,
/// `digest-only`), which its Dart name (`redTeam`) does not always match.
///
/// A value the app does not know falls back to the enum's unknown member
/// (lib/api/tolerant_enums.dart); given the [owner] model and the [field]
/// that holds it, the result is what the server sent instead.
String wireOf(EnumClass value, [Object? owner, String? field]) {
  if (isUnknownEnum(value) && field != null) {
    final raw = rawUnknownWire(owner, field);
    if (raw != null) {
      return raw;
    }
  }
  return tolerantSerializers.serialize(value, specifiedType: FullType(value.runtimeType))! as String;
}

/// [value]'s wire name as words for display: `digest-only` → "Digest only",
/// `not_useful` → "Not useful".
///
/// A value the app does not know is shown as the server sent it, given the
/// [owner] model and [field] that hold it, and as "Unknown value" without
/// them; it is never hidden.
String wireLabel(EnumClass value, [Object? owner, String? field]) {
  if (isUnknownEnum(value)) {
    return (field == null ? null : rawUnknownWire(owner, field)) ?? 'Unknown value';
  }
  return wireText(wireOf(value));
}

/// A wire name as words for display; an upper-case wire name
/// (`CO_ASSERTED`) reads as a sentence (`Co asserted`).
String wireText(String wire) {
  final shouted = wire.length > 1 && RegExp(r'^[A-Z][A-Z0-9_]*$').hasMatch(wire);
  final words = (shouted ? wire.toLowerCase() : wire).replaceAll(RegExp('[-_]'), ' ');
  return words.isEmpty ? words : '${words[0].toUpperCase()}${words.substring(1)}';
}
