//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'watchdog_settings_canary.g.dart';

/// WatchdogSettingsCanary
///
/// Properties:
/// * [enabled] - Submit a synthetic `system-canary` record and require its change within 30 s
/// * [interval] - ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
@BuiltValue()
abstract class WatchdogSettingsCanary
    implements Built<WatchdogSettingsCanary, WatchdogSettingsCanaryBuilder> {
  /// Submit a synthetic `system-canary` record and require its change within 30 s
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h)
  @BuiltValueField(wireName: r'interval')
  String? get interval;

  WatchdogSettingsCanary._();

  factory WatchdogSettingsCanary(
          [void updates(WatchdogSettingsCanaryBuilder b)]) =
      _$WatchdogSettingsCanary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WatchdogSettingsCanaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WatchdogSettingsCanary> get serializer =>
      _$WatchdogSettingsCanarySerializer();
}

class _$WatchdogSettingsCanarySerializer
    implements PrimitiveSerializer<WatchdogSettingsCanary> {
  @override
  final Iterable<Type> types = const [
    WatchdogSettingsCanary,
    _$WatchdogSettingsCanary
  ];

  @override
  final String wireName = r'WatchdogSettingsCanary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WatchdogSettingsCanary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WatchdogSettingsCanary object, {
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
    required WatchdogSettingsCanaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'interval':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interval = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WatchdogSettingsCanary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WatchdogSettingsCanaryBuilder();
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
