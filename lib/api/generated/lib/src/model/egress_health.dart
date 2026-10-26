//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'egress_health.g.dart';

/// Reachability and exit identity of an egress route (C1/181)
///
/// Properties:
/// * [reachable]
/// * [exitIp] - Public IP the route presents
/// * [latencyMs]
/// * [lastCheckedAt]
/// * [consecutiveFailures]
/// * [backoffUntil] - Skipped until this time after failures
@BuiltValue()
abstract class EgressHealth
    implements Built<EgressHealth, EgressHealthBuilder> {
  @BuiltValueField(wireName: r'reachable')
  bool get reachable;

  /// Public IP the route presents
  @BuiltValueField(wireName: r'exitIp')
  String? get exitIp;

  @BuiltValueField(wireName: r'latencyMs')
  num? get latencyMs;

  @BuiltValueField(wireName: r'lastCheckedAt')
  DateTime? get lastCheckedAt;

  @BuiltValueField(wireName: r'consecutiveFailures')
  int? get consecutiveFailures;

  /// Skipped until this time after failures
  @BuiltValueField(wireName: r'backoffUntil')
  DateTime? get backoffUntil;

  EgressHealth._();

  factory EgressHealth([void updates(EgressHealthBuilder b)]) = _$EgressHealth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EgressHealthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EgressHealth> get serializer => _$EgressHealthSerializer();
}

class _$EgressHealthSerializer implements PrimitiveSerializer<EgressHealth> {
  @override
  final Iterable<Type> types = const [EgressHealth, _$EgressHealth];

  @override
  final String wireName = r'EgressHealth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EgressHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reachable';
    yield serializers.serialize(
      object.reachable,
      specifiedType: const FullType(bool),
    );
    if (object.exitIp != null) {
      yield r'exitIp';
      yield serializers.serialize(
        object.exitIp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.latencyMs != null) {
      yield r'latencyMs';
      yield serializers.serialize(
        object.latencyMs,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lastCheckedAt != null) {
      yield r'lastCheckedAt';
      yield serializers.serialize(
        object.lastCheckedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.consecutiveFailures != null) {
      yield r'consecutiveFailures';
      yield serializers.serialize(
        object.consecutiveFailures,
        specifiedType: const FullType(int),
      );
    }
    if (object.backoffUntil != null) {
      yield r'backoffUntil';
      yield serializers.serialize(
        object.backoffUntil,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EgressHealth object, {
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
    required EgressHealthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reachable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.reachable = valueDes;
          break;
        case r'exitIp':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.exitIp = valueDes;
          break;
        case r'latencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.latencyMs = valueDes;
          break;
        case r'lastCheckedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastCheckedAt = valueDes;
          break;
        case r'consecutiveFailures':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.consecutiveFailures = valueDes;
          break;
        case r'backoffUntil':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.backoffUntil = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EgressHealth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressHealthBuilder();
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
