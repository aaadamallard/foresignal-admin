//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'intel_corroboration_auto_corroborate.g.dart';

/// Automatic corroboration of a lone agent/analyst/operator event on creation: it searches for independent observations near it in space and time and attaches them, so it surfaces already corroborated and can auto-activate
///
/// Properties:
/// * [enabled] - Whether a lone event searches for corroboration on creation (default true)
/// * [withinKm] - The search radius around the event's members, in kilometers (default 50)
/// * [window] - The time window before and after the members' observation span, an ISO-8601 or shorthand duration (default PT24H)
/// * [maxMembers] - The most corroborating members one search attaches, one per independent originator root (default 10)
@BuiltValue()
abstract class IntelCorroborationAutoCorroborate
    implements
        Built<IntelCorroborationAutoCorroborate,
            IntelCorroborationAutoCorroborateBuilder> {
  /// Whether a lone event searches for corroboration on creation (default true)
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// The search radius around the event's members, in kilometers (default 50)
  @BuiltValueField(wireName: r'withinKm')
  num? get withinKm;

  /// The time window before and after the members' observation span, an ISO-8601 or shorthand duration (default PT24H)
  @BuiltValueField(wireName: r'window')
  String? get window;

  /// The most corroborating members one search attaches, one per independent originator root (default 10)
  @BuiltValueField(wireName: r'maxMembers')
  int? get maxMembers;

  IntelCorroborationAutoCorroborate._();

  factory IntelCorroborationAutoCorroborate(
          [void updates(IntelCorroborationAutoCorroborateBuilder b)]) =
      _$IntelCorroborationAutoCorroborate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntelCorroborationAutoCorroborateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntelCorroborationAutoCorroborate> get serializer =>
      _$IntelCorroborationAutoCorroborateSerializer();
}

class _$IntelCorroborationAutoCorroborateSerializer
    implements PrimitiveSerializer<IntelCorroborationAutoCorroborate> {
  @override
  final Iterable<Type> types = const [
    IntelCorroborationAutoCorroborate,
    _$IntelCorroborationAutoCorroborate
  ];

  @override
  final String wireName = r'IntelCorroborationAutoCorroborate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntelCorroborationAutoCorroborate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.withinKm != null) {
      yield r'withinKm';
      yield serializers.serialize(
        object.withinKm,
        specifiedType: const FullType(num),
      );
    }
    if (object.window != null) {
      yield r'window';
      yield serializers.serialize(
        object.window,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxMembers != null) {
      yield r'maxMembers';
      yield serializers.serialize(
        object.maxMembers,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntelCorroborationAutoCorroborate object, {
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
    required IntelCorroborationAutoCorroborateBuilder result,
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
        case r'withinKm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.withinKm = valueDes;
          break;
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.window = valueDes;
          break;
        case r'maxMembers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxMembers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntelCorroborationAutoCorroborate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelCorroborationAutoCorroborateBuilder();
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
