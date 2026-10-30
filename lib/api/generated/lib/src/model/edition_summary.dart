//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edition_summary.g.dart';

/// One of the caller's editions: a briefing the caller owns (NP-003)
///
/// Properties:
/// * [briefingId]
/// * [name]
/// * [enabled]
/// * [outputLanguage] - The language the edition is written and spoken in
/// * [schedule] - 5-field cron
/// * [timezone]
/// * [nextRunAt]
/// * [lastRunAt]
/// * [lastRunStatus]
/// * [latestRunId] - The latest completed run, or null before the first
/// * [siteUrl] - The edition site (`getEditionSite`), or null when hosting is off
@BuiltValue()
abstract class EditionSummary
    implements Built<EditionSummary, EditionSummaryBuilder> {
  @BuiltValueField(wireName: r'briefingId')
  String get briefingId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// The language the edition is written and spoken in
  @BuiltValueField(wireName: r'outputLanguage')
  String? get outputLanguage;

  /// 5-field cron
  @BuiltValueField(wireName: r'schedule')
  String get schedule;

  @BuiltValueField(wireName: r'timezone')
  String get timezone;

  @BuiltValueField(wireName: r'nextRunAt')
  DateTime? get nextRunAt;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'lastRunStatus')
  String? get lastRunStatus;

  /// The latest completed run, or null before the first
  @BuiltValueField(wireName: r'latestRunId')
  String? get latestRunId;

  /// The edition site (`getEditionSite`), or null when hosting is off
  @BuiltValueField(wireName: r'siteUrl')
  String? get siteUrl;

  EditionSummary._();

  factory EditionSummary([void updates(EditionSummaryBuilder b)]) =
      _$EditionSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EditionSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EditionSummary> get serializer =>
      _$EditionSummarySerializer();
}

class _$EditionSummarySerializer
    implements PrimitiveSerializer<EditionSummary> {
  @override
  final Iterable<Type> types = const [EditionSummary, _$EditionSummary];

  @override
  final String wireName = r'EditionSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EditionSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'briefingId';
    yield serializers.serialize(
      object.briefingId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.outputLanguage != null) {
      yield r'outputLanguage';
      yield serializers.serialize(
        object.outputLanguage,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(String),
    );
    yield r'timezone';
    yield serializers.serialize(
      object.timezone,
      specifiedType: const FullType(String),
    );
    if (object.nextRunAt != null) {
      yield r'nextRunAt';
      yield serializers.serialize(
        object.nextRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastRunAt != null) {
      yield r'lastRunAt';
      yield serializers.serialize(
        object.lastRunAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastRunStatus != null) {
      yield r'lastRunStatus';
      yield serializers.serialize(
        object.lastRunStatus,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latestRunId != null) {
      yield r'latestRunId';
      yield serializers.serialize(
        object.latestRunId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.siteUrl != null) {
      yield r'siteUrl';
      yield serializers.serialize(
        object.siteUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EditionSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EditionSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'briefingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.briefingId = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'outputLanguage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.outputLanguage = valueDes;
          break;
        case r'schedule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.schedule = valueDes;
          break;
        case r'timezone':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.timezone = valueDes;
          break;
        case r'nextRunAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.nextRunAt = valueDes;
          break;
        case r'lastRunAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'lastRunStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.lastRunStatus = valueDes;
          break;
        case r'latestRunId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.latestRunId = valueDes;
          break;
        case r'siteUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.siteUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EditionSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EditionSummaryBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
