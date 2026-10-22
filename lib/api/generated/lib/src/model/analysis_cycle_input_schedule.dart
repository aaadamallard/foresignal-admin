//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analysis_cycle_input_schedule.g.dart';

/// 5-field cron and IANA timezone
///
/// Properties:
/// * [cron]
/// * [timezone]
@BuiltValue()
abstract class AnalysisCycleInputSchedule
    implements
        Built<AnalysisCycleInputSchedule, AnalysisCycleInputScheduleBuilder> {
  @BuiltValueField(wireName: r'cron')
  String get cron;

  @BuiltValueField(wireName: r'timezone')
  String get timezone;

  AnalysisCycleInputSchedule._();

  factory AnalysisCycleInputSchedule([
    void updates(AnalysisCycleInputScheduleBuilder b),
  ]) = _$AnalysisCycleInputSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalysisCycleInputScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalysisCycleInputSchedule> get serializer =>
      _$AnalysisCycleInputScheduleSerializer();
}

class _$AnalysisCycleInputScheduleSerializer
    implements PrimitiveSerializer<AnalysisCycleInputSchedule> {
  @override
  final Iterable<Type> types = const [
    AnalysisCycleInputSchedule,
    _$AnalysisCycleInputSchedule,
  ];

  @override
  final String wireName = r'AnalysisCycleInputSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalysisCycleInputSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'cron';
    yield serializers.serialize(
      object.cron,
      specifiedType: const FullType(String),
    );
    yield r'timezone';
    yield serializers.serialize(
      object.timezone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalysisCycleInputSchedule object, {
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
    required AnalysisCycleInputScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cron':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.cron = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalysisCycleInputSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisCycleInputScheduleBuilder();
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
