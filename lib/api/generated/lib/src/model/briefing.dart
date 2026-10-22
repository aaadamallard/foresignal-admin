//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/briefing_scope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/briefing_input_audio.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing.g.dart';

/// Briefing
///
/// Properties:
/// * [name]
/// * [enabled]
/// * [schedule] - 5-field cron
/// * [timezone]
/// * [scope]
/// * [lookback] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
/// * [mode]
/// * [instructions]
/// * [channelIds]
/// * [maxItemsPerKind]
/// * [audio]
/// * [id]
/// * [createdAt]
/// * [updatedAt]
/// * [nextRunAt]
/// * [lastRunAt]
/// * [lastRunStatus]
/// * [warnings] - Non-fatal validation warnings, e.g. a channel not subscribed to `briefing`
@BuiltValue()
abstract class Briefing implements Built<Briefing, BriefingBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// 5-field cron
  @BuiltValueField(wireName: r'schedule')
  String get schedule;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'scope')
  BriefingScope? get scope;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'lookback')
  String? get lookback;

  @BuiltValueField(wireName: r'mode')
  BriefingModeEnum? get mode;
  // enum modeEnum {  digest,  llm,  };

  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'maxItemsPerKind')
  int? get maxItemsPerKind;

  @BuiltValueField(wireName: r'audio')
  BriefingInputAudio? get audio;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'nextRunAt')
  DateTime? get nextRunAt;

  @BuiltValueField(wireName: r'lastRunAt')
  DateTime? get lastRunAt;

  @BuiltValueField(wireName: r'lastRunStatus')
  String? get lastRunStatus;

  /// Non-fatal validation warnings, e.g. a channel not subscribed to `briefing`
  @BuiltValueField(wireName: r'warnings')
  BuiltList<String>? get warnings;

  Briefing._();

  factory Briefing([void updates(BriefingBuilder b)]) = _$Briefing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Briefing> get serializer => _$BriefingSerializer();
}

class _$BriefingSerializer implements PrimitiveSerializer<Briefing> {
  @override
  final Iterable<Type> types = const [Briefing, _$Briefing];

  @override
  final String wireName = r'Briefing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Briefing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'schedule';
    yield serializers.serialize(
      object.schedule,
      specifiedType: const FullType(String),
    );
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(BriefingScope),
      );
    }
    if (object.lookback != null) {
      yield r'lookback';
      yield serializers.serialize(
        object.lookback,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(BriefingModeEnum),
      );
    }
    if (object.instructions != null) {
      yield r'instructions';
      yield serializers.serialize(
        object.instructions,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.channelIds != null) {
      yield r'channelIds';
      yield serializers.serialize(
        object.channelIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.maxItemsPerKind != null) {
      yield r'maxItemsPerKind';
      yield serializers.serialize(
        object.maxItemsPerKind,
        specifiedType: const FullType(int),
      );
    }
    if (object.audio != null) {
      yield r'audio';
      yield serializers.serialize(
        object.audio,
        specifiedType: const FullType.nullable(BriefingInputAudio),
      );
    }
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
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
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Briefing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BriefingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schedule = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BriefingScope),
          ) as BriefingScope?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'lookback':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lookback = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BriefingModeEnum),
          ) as BriefingModeEnum?;
          if (valueDes == null) continue;
          result.mode = valueDes;
          break;
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        case r'channelIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.channelIds.replace(valueDes);
          break;
        case r'maxItemsPerKind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxItemsPerKind = valueDes;
          break;
        case r'audio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BriefingInputAudio),
          ) as BriefingInputAudio?;
          if (valueDes == null) continue;
          result.audio.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'nextRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.nextRunAt = valueDes;
          break;
        case r'lastRunAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastRunAt = valueDes;
          break;
        case r'lastRunStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lastRunStatus = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Briefing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingBuilder();
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

class BriefingModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'digest')
  static const BriefingModeEnum digest = _$briefingModeEnum_digest;
  @BuiltValueEnumConst(wireName: r'llm')
  static const BriefingModeEnum llm = _$briefingModeEnum_llm;

  static Serializer<BriefingModeEnum> get serializer =>
      _$briefingModeEnumSerializer;

  const BriefingModeEnum._(String name) : super(name);

  static BuiltSet<BriefingModeEnum> get values => _$briefingModeEnumValues;
  static BriefingModeEnum valueOf(String name) =>
      _$briefingModeEnumValueOf(name);
}
