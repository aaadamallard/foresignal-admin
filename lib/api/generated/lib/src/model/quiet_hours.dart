//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quiet_hours.g.dart';

/// Per-channel quiet hours in the channel timezone; deferred deliveries are released as one digest at window end
///
/// Properties:
/// * [start]
/// * [end]
/// * [days] - Days the window starts on; empty or omitted = every day
/// * [bypassSeverity] - Severity at or above which messages are sent anyway
@BuiltValue()
abstract class QuietHours implements Built<QuietHours, QuietHoursBuilder> {
  @BuiltValueField(wireName: r'start')
  String get start;

  @BuiltValueField(wireName: r'end')
  String get end;

  /// Days the window starts on; empty or omitted = every day
  @BuiltValueField(wireName: r'days')
  BuiltList<QuietHoursDaysEnum>? get days;
  // enum daysEnum {  MON,  TUE,  WED,  THU,  FRI,  SAT,  SUN,  };

  /// Severity at or above which messages are sent anyway
  @BuiltValueField(wireName: r'bypassSeverity')
  QuietHoursBypassSeverityEnum? get bypassSeverity;
  // enum bypassSeverityEnum {  info,  warning,  critical,  };

  QuietHours._();

  factory QuietHours([void updates(QuietHoursBuilder b)]) = _$QuietHours;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuietHoursBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuietHours> get serializer => _$QuietHoursSerializer();
}

class _$QuietHoursSerializer implements PrimitiveSerializer<QuietHours> {
  @override
  final Iterable<Type> types = const [QuietHours, _$QuietHours];

  @override
  final String wireName = r'QuietHours';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuietHours object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start';
    yield serializers.serialize(
      object.start,
      specifiedType: const FullType(String),
    );
    yield r'end';
    yield serializers.serialize(
      object.end,
      specifiedType: const FullType(String),
    );
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType: const FullType(BuiltList, [
          FullType(QuietHoursDaysEnum),
        ]),
      );
    }
    if (object.bypassSeverity != null) {
      yield r'bypassSeverity';
      yield serializers.serialize(
        object.bypassSeverity,
        specifiedType: const FullType.nullable(QuietHoursBypassSeverityEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuietHours object, {
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
    required QuietHoursBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.start = valueDes;
          break;
        case r'end':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.end = valueDes;
          break;
        case r'days':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(QuietHoursDaysEnum),
                    ]),
                  )
                  as BuiltList<QuietHoursDaysEnum>?;
          if (valueDes == null) continue;
          result.days.replace(valueDes);
          break;
        case r'bypassSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      QuietHoursBypassSeverityEnum,
                    ),
                  )
                  as QuietHoursBypassSeverityEnum?;
          if (valueDes == null) continue;
          result.bypassSeverity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuietHours deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuietHoursBuilder();
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

class QuietHoursDaysEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MON')
  static const QuietHoursDaysEnum MON = _$quietHoursDaysEnum_MON;
  @BuiltValueEnumConst(wireName: r'TUE')
  static const QuietHoursDaysEnum TUE = _$quietHoursDaysEnum_TUE;
  @BuiltValueEnumConst(wireName: r'WED')
  static const QuietHoursDaysEnum WED = _$quietHoursDaysEnum_WED;
  @BuiltValueEnumConst(wireName: r'THU')
  static const QuietHoursDaysEnum THU = _$quietHoursDaysEnum_THU;
  @BuiltValueEnumConst(wireName: r'FRI')
  static const QuietHoursDaysEnum FRI = _$quietHoursDaysEnum_FRI;
  @BuiltValueEnumConst(wireName: r'SAT')
  static const QuietHoursDaysEnum SAT = _$quietHoursDaysEnum_SAT;
  @BuiltValueEnumConst(wireName: r'SUN')
  static const QuietHoursDaysEnum SUN = _$quietHoursDaysEnum_SUN;

  static Serializer<QuietHoursDaysEnum> get serializer =>
      _$quietHoursDaysEnumSerializer;

  const QuietHoursDaysEnum._(String name) : super(name);

  static BuiltSet<QuietHoursDaysEnum> get values => _$quietHoursDaysEnumValues;
  static QuietHoursDaysEnum valueOf(String name) =>
      _$quietHoursDaysEnumValueOf(name);
}

/// Severity at or above which messages are sent anyway
class QuietHoursBypassSeverityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'info')
  static const QuietHoursBypassSeverityEnum info =
      _$quietHoursBypassSeverityEnum_info;
  @BuiltValueEnumConst(wireName: r'warning')
  static const QuietHoursBypassSeverityEnum warning =
      _$quietHoursBypassSeverityEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const QuietHoursBypassSeverityEnum critical =
      _$quietHoursBypassSeverityEnum_critical;

  static Serializer<QuietHoursBypassSeverityEnum> get serializer =>
      _$quietHoursBypassSeverityEnumSerializer;

  const QuietHoursBypassSeverityEnum._(String name) : super(name);

  static BuiltSet<QuietHoursBypassSeverityEnum> get values =>
      _$quietHoursBypassSeverityEnumValues;
  static QuietHoursBypassSeverityEnum valueOf(String name) =>
      _$quietHoursBypassSeverityEnumValueOf(name);
}
