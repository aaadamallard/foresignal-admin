//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'breaking_news_config.g.dart';

/// Off-schedule breaking-news editions (NP-006): an alert of one of `ruleIds` at or above `minSeverity` runs the edition at once, besides its schedule, at most once per `cooldownMinutes` (a burst coalesces into one run).
///
/// Properties:
/// * [enabled]
/// * [ruleIds] - Trigger rules whose alerts fire a breaking edition
/// * [minSeverity]
/// * [cooldownMinutes] - The least time between two breaking runs of the edition
@BuiltValue()
abstract class BreakingNewsConfig
    implements Built<BreakingNewsConfig, BreakingNewsConfigBuilder> {
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Trigger rules whose alerts fire a breaking edition
  @BuiltValueField(wireName: r'ruleIds')
  BuiltList<String>? get ruleIds;

  @BuiltValueField(wireName: r'minSeverity')
  Severity? get minSeverity;
  // enum minSeverityEnum {  info,  warning,  critical,  };

  /// The least time between two breaking runs of the edition
  @BuiltValueField(wireName: r'cooldownMinutes')
  int? get cooldownMinutes;

  BreakingNewsConfig._();

  factory BreakingNewsConfig([void updates(BreakingNewsConfigBuilder b)]) =
      _$BreakingNewsConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BreakingNewsConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BreakingNewsConfig> get serializer =>
      _$BreakingNewsConfigSerializer();
}

class _$BreakingNewsConfigSerializer
    implements PrimitiveSerializer<BreakingNewsConfig> {
  @override
  final Iterable<Type> types = const [BreakingNewsConfig, _$BreakingNewsConfig];

  @override
  final String wireName = r'BreakingNewsConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BreakingNewsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    if (object.ruleIds != null) {
      yield r'ruleIds';
      yield serializers.serialize(
        object.ruleIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.minSeverity != null) {
      yield r'minSeverity';
      yield serializers.serialize(
        object.minSeverity,
        specifiedType: const FullType(Severity),
      );
    }
    if (object.cooldownMinutes != null) {
      yield r'cooldownMinutes';
      yield serializers.serialize(
        object.cooldownMinutes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BreakingNewsConfig object, {
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
    required BreakingNewsConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.enabled = valueDes;
          break;
        case r'ruleIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.ruleIds.replace(valueDes);
          break;
        case r'minSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Severity),
                  )
                  as Severity?;
          if (valueDes == null) continue;
          result.minSeverity = valueDes;
          break;
        case r'cooldownMinutes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.cooldownMinutes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BreakingNewsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BreakingNewsConfigBuilder();
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
