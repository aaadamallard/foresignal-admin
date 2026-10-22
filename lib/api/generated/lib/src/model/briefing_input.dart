//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/briefing_scope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/briefing_input_audio.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'briefing_input.g.dart';

/// BriefingInput
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
@BuiltValue()
abstract class BriefingInput
    implements Built<BriefingInput, BriefingInputBuilder> {
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
  BriefingInputModeEnum? get mode;
  // enum modeEnum {  digest,  llm,  };

  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  @BuiltValueField(wireName: r'channelIds')
  BuiltList<String>? get channelIds;

  @BuiltValueField(wireName: r'maxItemsPerKind')
  int? get maxItemsPerKind;

  @BuiltValueField(wireName: r'audio')
  BriefingInputAudio? get audio;

  BriefingInput._();

  factory BriefingInput([void updates(BriefingInputBuilder b)]) =
      _$BriefingInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BriefingInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BriefingInput> get serializer =>
      _$BriefingInputSerializer();
}

class _$BriefingInputSerializer implements PrimitiveSerializer<BriefingInput> {
  @override
  final Iterable<Type> types = const [BriefingInput, _$BriefingInput];

  @override
  final String wireName = r'BriefingInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BriefingInput object, {
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
        specifiedType: const FullType(BriefingInputModeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BriefingInput object, {
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
    required BriefingInputBuilder result,
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
            specifiedType: const FullType.nullable(BriefingInputModeEnum),
          ) as BriefingInputModeEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BriefingInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BriefingInputBuilder();
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

class BriefingInputModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'digest')
  static const BriefingInputModeEnum digest = _$briefingInputModeEnum_digest;
  @BuiltValueEnumConst(wireName: r'llm')
  static const BriefingInputModeEnum llm = _$briefingInputModeEnum_llm;

  static Serializer<BriefingInputModeEnum> get serializer =>
      _$briefingInputModeEnumSerializer;

  const BriefingInputModeEnum._(String name) : super(name);

  static BuiltSet<BriefingInputModeEnum> get values =>
      _$briefingInputModeEnumValues;
  static BriefingInputModeEnum valueOf(String name) =>
      _$briefingInputModeEnumValueOf(name);
}
