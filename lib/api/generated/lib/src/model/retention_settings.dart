//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/retention_settings_stats.dart';
import 'package:foresignal_api/src/model/retention_settings_social.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'retention_settings.g.dart';

/// Retention windows (Core-Data-Model §13). PUT replaces the whole object; every duration ≥ 1h. STANDARD windows resolve in order: kinds.{kind}, sources.{id} (a view over source_settings.retention), the descriptor's kindRetention, its defaultRetention, then default; TRACK always uses trackWindow. Members owned by later prompts (see x-foresignal-property-prompts) are accepted and not stored until those prompts.
///
/// Properties:
/// * [default_] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [alerts] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [usage] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [briefings] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [ask] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [sources] - Per-source overrides (view over source_settings.retention); TRACK sources → 400 RETENTION_TIER_FIXED
/// * [trackWindow] - Single window of the TRACK tier. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [provenance] - fetch_log rows with versions. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [notifications] - notification rows. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [kinds] - Per-kind windows (STANDARD only), first in the resolution order
/// * [audit] - Audit log retention (default 90d)
/// * [stats]
/// * [inbox] - Notification inbox retention (033). Separate from `notifications` (delivery rows, 019).
/// * [trackRawWindow] - TRACK history older than this is downsampled; null disables (must be < trackWindow). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [trackDownsampleInterval] - One sample per entity per interval in downsampled leaves (30s ≤ interval ≤ trackRawWindow). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [entityLinks] - How long closed entity links are kept (098; default 365d). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [social]
@BuiltValue()
abstract class RetentionSettings
    implements Built<RetentionSettings, RetentionSettingsBuilder> {
  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'default')
  String get default_;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'alerts')
  String? get alerts;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'usage')
  String? get usage;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'briefings')
  String? get briefings;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'ask')
  String? get ask;

  /// Per-source overrides (view over source_settings.retention); TRACK sources → 400 RETENTION_TIER_FIXED
  @BuiltValueField(wireName: r'sources')
  BuiltMap<String, String>? get sources;

  /// Single window of the TRACK tier. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'trackWindow')
  String? get trackWindow;

  /// fetch_log rows with versions. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'provenance')
  String? get provenance;

  /// notification rows. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'notifications')
  String? get notifications;

  /// Per-kind windows (STANDARD only), first in the resolution order
  @BuiltValueField(wireName: r'kinds')
  BuiltMap<String, String>? get kinds;

  /// Audit log retention (default 90d)
  @BuiltValueField(wireName: r'audit')
  String? get audit;

  @BuiltValueField(wireName: r'stats')
  RetentionSettingsStats? get stats;

  /// Notification inbox retention (033). Separate from `notifications` (delivery rows, 019).
  @BuiltValueField(wireName: r'inbox')
  String? get inbox;

  /// TRACK history older than this is downsampled; null disables (must be < trackWindow). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'trackRawWindow')
  String? get trackRawWindow;

  /// One sample per entity per interval in downsampled leaves (30s ≤ interval ≤ trackRawWindow). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'trackDownsampleInterval')
  String? get trackDownsampleInterval;

  /// How long closed entity links are kept (098; default 365d). ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'entityLinks')
  String? get entityLinks;

  @BuiltValueField(wireName: r'social')
  RetentionSettingsSocial? get social;

  RetentionSettings._();

  factory RetentionSettings([void updates(RetentionSettingsBuilder b)]) =
      _$RetentionSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RetentionSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RetentionSettings> get serializer =>
      _$RetentionSettingsSerializer();
}

class _$RetentionSettingsSerializer
    implements PrimitiveSerializer<RetentionSettings> {
  @override
  final Iterable<Type> types = const [RetentionSettings, _$RetentionSettings];

  @override
  final String wireName = r'RetentionSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RetentionSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'default';
    yield serializers.serialize(
      object.default_,
      specifiedType: const FullType(String),
    );
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(String),
      );
    }
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(String),
      );
    }
    if (object.briefings != null) {
      yield r'briefings';
      yield serializers.serialize(
        object.briefings,
        specifiedType: const FullType(String),
      );
    }
    if (object.ask != null) {
      yield r'ask';
      yield serializers.serialize(
        object.ask,
        specifiedType: const FullType(String),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.trackWindow != null) {
      yield r'trackWindow';
      yield serializers.serialize(
        object.trackWindow,
        specifiedType: const FullType(String),
      );
    }
    if (object.provenance != null) {
      yield r'provenance';
      yield serializers.serialize(
        object.provenance,
        specifiedType: const FullType(String),
      );
    }
    if (object.notifications != null) {
      yield r'notifications';
      yield serializers.serialize(
        object.notifications,
        specifiedType: const FullType(String),
      );
    }
    if (object.kinds != null) {
      yield r'kinds';
      yield serializers.serialize(
        object.kinds,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.audit != null) {
      yield r'audit';
      yield serializers.serialize(
        object.audit,
        specifiedType: const FullType(String),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(RetentionSettingsStats),
      );
    }
    if (object.inbox != null) {
      yield r'inbox';
      yield serializers.serialize(
        object.inbox,
        specifiedType: const FullType(String),
      );
    }
    if (object.trackRawWindow != null) {
      yield r'trackRawWindow';
      yield serializers.serialize(
        object.trackRawWindow,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.trackDownsampleInterval != null) {
      yield r'trackDownsampleInterval';
      yield serializers.serialize(
        object.trackDownsampleInterval,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityLinks != null) {
      yield r'entityLinks';
      yield serializers.serialize(
        object.entityLinks,
        specifiedType: const FullType(String),
      );
    }
    if (object.social != null) {
      yield r'social';
      yield serializers.serialize(
        object.social,
        specifiedType: const FullType(RetentionSettingsSocial),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RetentionSettings object, {
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
    required RetentionSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'default':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.default_ = valueDes;
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alerts = valueDes;
          break;
        case r'usage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.usage = valueDes;
          break;
        case r'briefings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.briefings = valueDes;
          break;
        case r'ask':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.ask = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'trackWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trackWindow = valueDes;
          break;
        case r'provenance':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provenance = valueDes;
          break;
        case r'notifications':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.notifications = valueDes;
          break;
        case r'kinds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.kinds.replace(valueDes);
          break;
        case r'audit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.audit = valueDes;
          break;
        case r'stats':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RetentionSettingsStats,
                    ),
                  )
                  as RetentionSettingsStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        case r'inbox':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.inbox = valueDes;
          break;
        case r'trackRawWindow':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trackRawWindow = valueDes;
          break;
        case r'trackDownsampleInterval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.trackDownsampleInterval = valueDes;
          break;
        case r'entityLinks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityLinks = valueDes;
          break;
        case r'social':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      RetentionSettingsSocial,
                    ),
                  )
                  as RetentionSettingsSocial?;
          if (valueDes == null) continue;
          result.social.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RetentionSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetentionSettingsBuilder();
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
