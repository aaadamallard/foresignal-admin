//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_profile_schedule.g.dart';

/// 5-field cron with an IANA timezone, or `every` (≥ 10m); default every 30m
///
/// Properties:
/// * [cron]
/// * [timezone]
/// * [every] - Duration ≥ 10m
@BuiltValue()
abstract class AnalystProfileSchedule
    implements Built<AnalystProfileSchedule, AnalystProfileScheduleBuilder> {
  @BuiltValueField(wireName: r'cron')
  String? get cron;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  /// Duration ≥ 10m
  @BuiltValueField(wireName: r'every')
  String? get every;

  AnalystProfileSchedule._();

  factory AnalystProfileSchedule(
          [void updates(AnalystProfileScheduleBuilder b)]) =
      _$AnalystProfileSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProfileScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProfileSchedule> get serializer =>
      _$AnalystProfileScheduleSerializer();
}

class _$AnalystProfileScheduleSerializer
    implements PrimitiveSerializer<AnalystProfileSchedule> {
  @override
  final Iterable<Type> types = const [
    AnalystProfileSchedule,
    _$AnalystProfileSchedule
  ];

  @override
  final String wireName = r'AnalystProfileSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProfileSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cron != null) {
      yield r'cron';
      yield serializers.serialize(
        object.cron,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.every != null) {
      yield r'every';
      yield serializers.serialize(
        object.every,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProfileSchedule object, {
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
    required AnalystProfileScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cron':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cron = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'every':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.every = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProfileSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProfileScheduleBuilder();
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
