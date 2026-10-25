import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:foresignal_api/foresignal_api.dart';

/// The Dart name of the member every generated enum falls back to when the
/// server sends a value the vendored contract does not list
/// (`enumUnknownDefaultCase` in tool/generate_api.sh).
const String unknownEnumName = 'unknownDefaultOpenApi';

/// Whether [value] is the fallback member: the server sent a value this
/// build of the app does not know.
bool isUnknownEnum(EnumClass value) => value.name == unknownEnumName;

/// Keeps the value the server sent wherever a generated enum fell back to
/// its unknown member, so the API's growing value lists degrade instead of
/// failing a whole response.
///
/// built_value deserializes depth first and runs every plugin before and
/// after each value, so a stack of the raw values being read pairs each
/// fallback with the raw JSON object that held it. The object's unknown
/// fields are kept beside the built object ([rawUnknownFields]) and are
/// written back when the object is serialized again, so a model that goes
/// through `toJsonMap` still shows the server's value.
///
/// It must come before [StandardJsonPlugin], which turns a JSON object into
/// built_value's key/value list before a serializer sees it.
class UnknownEnumPlugin implements SerializerPlugin {
  final List<_Frame> _stack = <_Frame>[];
  final List<Object?> _serializing = <Object?>[];

  static final Expando<Map<String, Object?>> _unknown = Expando<Map<String, Object?>>('unknownEnumFields');

  /// The fields of [owner], by wire name, that held values the app does not
  /// know, as the server sent them; empty when there are none.
  static Map<String, Object?> rawUnknownFields(Object? owner) {
    if (owner is! Built) {
      return const <String, Object?>{};
    }
    return _unknown[owner] ?? const <String, Object?>{};
  }

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    // A failed read leaves its frames behind; a deep stack is never a live one.
    if (_stack.length > 4096) {
      _stack.clear();
    }
    _stack.add(_Frame(object));
    return object;
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    if (_stack.isEmpty) {
      return object;
    }
    final frame = _stack.removeLast();
    final parent = _stack.isEmpty ? null : _stack.last;
    if (object is EnumClass && isUnknownEnum(object)) {
      parent?.unknown.add(frame.raw);
    } else if (frame.unknown.isNotEmpty) {
      final raw = frame.raw;
      if (raw is Map && object is Built) {
        final fields = <String, Object?>{};
        for (final entry in raw.entries) {
          final value = entry.value;
          if (frame.unknown.contains(value) ||
              (value is List && value.any(frame.unknown.contains))) {
            fields['${entry.key}'] = value;
          }
        }
        if (fields.isNotEmpty) {
          _unknown[object] = <String, Object?>{...?_unknown[object], ...fields};
        }
      } else {
        // A list of enums: the object that holds the list keeps it.
        parent?.unknown.addAll(frame.unknown);
      }
    }
    return object;
  }

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    if (_serializing.length > 4096) {
      _serializing.clear();
    }
    _serializing.add(object);
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    final owner = _serializing.isEmpty ? null : _serializing.removeLast();
    final fields = rawUnknownFields(owner);
    if (fields.isEmpty) {
      return object;
    }
    if (object is Map) {
      return <Object?, Object?>{...object, ...fields};
    }
    if (object is Iterable) {
      // built_value's structured form, before StandardJsonPlugin makes it a
      // map: key, value, key, value.
      final out = object.toList();
      for (var i = 0; i + 1 < out.length; i += 2) {
        final key = out[i];
        if (key is String && fields.containsKey(key)) {
          out[i + 1] = fields[key];
        }
      }
      return out;
    }
    return object;
  }
}

class _Frame {
  _Frame(this.raw);

  /// The value as it came off the wire.
  final Object? raw;

  /// The raw values under this one that fell back to an unknown member.
  final Set<Object?> unknown = <Object?>{};
}

/// The app's serializers: the generated ones with [UnknownEnumPlugin] ahead
/// of [StandardJsonPlugin]. Every [ForesignalApi] the app builds uses them.
final Serializers tolerantSerializers =
    (serializers.toBuilder()
          ..addPlugin(UnknownEnumPlugin())
          ..addPlugin(StandardJsonPlugin()))
        .build();

/// The value the server sent for [owner]'s [field] (its Dart name), when
/// that field fell back to the unknown member; null otherwise.
String? rawUnknownWire(Object? owner, String field) {
  final fields = UnknownEnumPlugin.rawUnknownFields(owner);
  if (fields.isEmpty) {
    return null;
  }
  // A few wire names differ from the Dart name: `source_` is `source`,
  // `type` is `_type`.
  final trimmed = field.endsWith('_') ? field.substring(0, field.length - 1) : field;
  for (final key in <String>[field, trimmed, '_$field']) {
    if (fields.containsKey(key)) {
      final value = fields[key];
      return value is List ? value.join(', ') : '$value';
    }
  }
  return null;
}
