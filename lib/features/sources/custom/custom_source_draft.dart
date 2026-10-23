import 'dart:convert';

import 'package:built_value/serializer.dart';

import '../../../api/api.dart';
import '../../../core/format/duration_text.dart';

/// `CustomSourceInput.id`: `custom-` and lowercase words joined by hyphens.
final RegExp customSourceIdPattern = RegExp(r'^custom-[a-z0-9]+(-[a-z0-9]+)*$');

/// A kind name: lowercase words joined by hyphens.
final RegExp kindPattern = RegExp(r'^[a-z0-9]+(-[a-z0-9]+)*$');

/// Members of a `CustomSource` that are not part of `CustomSourceInput`, or
/// are accepted on create only.
const Set<String> _readOnlyMembers = <String>{
  'createdAt',
  'lastIngestAt',
  'ingestKeyPrefix',
  'ingestKey',
  'setup',
  'preset',
  'presetParams',
};

/// The editable form of a custom push source. On update it starts from the
/// stored definition and sends all of it back with the edits applied, so
/// members the form does not show (field specs, verifiers, formats) are kept.
class CustomSourceDraft {
  /// A blank draft for a new source.
  CustomSourceDraft.create(this.serializers) : base = const <String, Object?>{}, isNew = true;

  /// A draft of [source], for editing.
  CustomSourceDraft.edit(CustomSource source, this.serializers)
    : base = _json(serializers.serialize(source, specifiedType: const FullType(CustomSource))),
      isNew = false {
    id = source.id;
    name = source.name;
    description = source.description ?? '';
    kinds = source.kinds.join(', ');
    attribution = source.attribution ?? '';
    recordTtl = source.recordTtl ?? '';
    rateLimitPerMinute = source.rateLimitPerMinute?.toString() ?? '';
    recordsPerMinute = source.recordsPerMinute?.toString() ?? '';
    private = source.private ?? false;
    captureSamples = source.captureSamples ?? false;
    allowPathKey = source.allowPathKey ?? false;
    allowCidrs = source.ingestAllowCidrs?.join(', ') ?? '';
    final mappingJson = base['mapping'];
    mapping = mappingJson == null ? '' : const JsonEncoder.withIndent('  ').convert(mappingJson);
  }

  static Map<String, Object?> _json(Object? value) =>
      value is Map ? value.cast<String, Object?>() : <String, Object?>{};

  /// The generated client's serializers.
  final Serializers serializers;

  /// The stored definition as JSON (empty for a new source).
  final Map<String, Object?> base;

  /// Whether this creates a source.
  final bool isNew;

  /// `id`.
  String id = 'custom-';

  /// `name`.
  String name = '';

  /// `description`.
  String description = '';

  /// `kinds`, comma-separated.
  String kinds = '';

  /// `attribution`.
  String attribution = '';

  /// `recordTtl`.
  String recordTtl = '';

  /// `rateLimitPerMinute`, as typed.
  String rateLimitPerMinute = '';

  /// `recordsPerMinute`, as typed.
  String recordsPerMinute = '';

  /// `private`.
  bool private = false;

  /// `captureSamples`.
  bool captureSamples = false;

  /// `allowPathKey`.
  bool allowPathKey = false;

  /// `ingestAllowCidrs`, comma-separated.
  String allowCidrs = '';

  /// `mapping`, as JSON text.
  String mapping = '';

  static List<String> _items(String text) =>
      text.split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

  /// Field problems by field name; empty when the draft can be sent.
  Map<String, String> validate() {
    final errors = <String, String>{};
    if (isNew && (id.length > 64 || !customSourceIdPattern.hasMatch(id))) {
      errors['id'] =
          'Start with custom- and use lowercase letters, digits and hyphens (64 at most).';
    }
    if (name.trim().isEmpty || name.trim().length > 200) {
      errors['name'] = 'Enter a name of 1 to 200 characters.';
    }
    final kindList = _items(kinds);
    if (kindList.isEmpty) {
      errors['kinds'] = 'Enter at least one kind.';
    } else if (kindList.any((k) => !kindPattern.hasMatch(k))) {
      errors['kinds'] = 'Kinds use lowercase letters, digits and hyphens.';
    }
    if (recordTtl.trim().isNotEmpty && parseDurationText(recordTtl) == null) {
      errors['recordTtl'] = 'Enter a duration such as 7d or PT24H.';
    }
    void range(String key, String text, int min, int max) {
      if (text.trim().isEmpty) {
        return;
      }
      final n = int.tryParse(text.trim());
      if (n == null || n < min || n > max) {
        errors[key] = 'Enter a whole number from $min to $max.';
      }
    }

    range('rateLimitPerMinute', rateLimitPerMinute, 1, 6000);
    range('recordsPerMinute', recordsPerMinute, 1, 60000);
    if (mapping.trim().isNotEmpty) {
      try {
        if (jsonDecode(mapping) is! Map) {
          errors['mapping'] = 'The mapping is a JSON object.';
        }
      } on FormatException catch (e) {
        errors['mapping'] = 'Not valid JSON: ${e.message}';
      }
    }
    return errors;
  }

  /// The stored members the operator emptied (`recordTtl`, `mapping`), which
  /// the update carries as explicit `null`s ([explicitNulls]): the generated
  /// serializer leaves a null member out, and an absent `recordTtl` on a
  /// personal source means the 24 h default rather than none.
  List<String> get clears => <String>[
    if (!isNew && recordTtl.trim().isEmpty && base['recordTtl'] != null) 'recordTtl',
    if (!isNew && mapping.trim().isEmpty && base['mapping'] != null) 'mapping',
  ];

  /// The request body as JSON: the stored definition with the edits applied.
  /// Call [validate] first.
  Map<String, Object?> toJson() {
    final json = <String, Object?>{
      for (final entry in base.entries)
        if (!_readOnlyMembers.contains(entry.key)) entry.key: entry.value,
    };
    void put(String key, Object? value) {
      if (value == null) {
        json.remove(key);
      } else {
        json[key] = value;
      }
    }

    put('id', isNew ? id.trim() : base['id']);
    put('name', name.trim());
    put('description', description.trim().isEmpty ? null : description.trim());
    put('kinds', _items(kinds));
    put('attribution', attribution.trim().isEmpty ? null : attribution.trim());
    put('recordTtl', recordTtl.trim().isEmpty ? null : recordTtl.trim());
    put('rateLimitPerMinute', int.tryParse(rateLimitPerMinute.trim()));
    put('recordsPerMinute', int.tryParse(recordsPerMinute.trim()));
    put('private', private);
    put('captureSamples', captureSamples);
    put('allowPathKey', allowPathKey);
    final cidrs = _items(allowCidrs);
    put('ingestAllowCidrs', cidrs.isEmpty ? null : cidrs);
    put('mapping', mapping.trim().isEmpty ? null : jsonDecode(mapping));
    return json;
  }

  /// The request body as the generated model. Throws a [FormatException]
  /// naming the problem if the JSON does not fit `CustomSourceInput` (a
  /// mapping that is not a `RecordMapping`).
  CustomSourceInput toInput() {
    try {
      return serializers.deserialize(
            toJson(),
            specifiedType: const FullType(CustomSourceInput),
          )!
          as CustomSourceInput;
    } on Object catch (error) {
      throw FormatException('The definition does not fit the contract: $error');
    }
  }

  /// The mapping entered, as a `RecordMapping`, for a mapping test; `null`
  /// to test the stored one.
  RecordMapping? proposedMapping() {
    if (mapping.trim().isEmpty) {
      return null;
    }
    try {
      return serializers.deserialize(
            jsonDecode(mapping),
            specifiedType: const FullType(RecordMapping),
          )
          as RecordMapping?;
    } on Object catch (error) {
      throw FormatException('The mapping does not fit RecordMapping: $error');
    }
  }
}
