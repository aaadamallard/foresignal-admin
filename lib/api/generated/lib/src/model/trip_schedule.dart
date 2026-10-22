//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trip_schedule.g.dart';

/// One-off departure or recurring commute schedule (114)
///
/// Properties:
/// * [type]
/// * [departAt] - once
/// * [days] - recurring
/// * [departTime] - recurring, local HH:mm
/// * [timezone] - IANA zone for recurring schedules
@BuiltValue()
abstract class TripSchedule
    implements Built<TripSchedule, TripScheduleBuilder> {
  @BuiltValueField(wireName: r'type')
  TripScheduleTypeEnum get type;
  // enum typeEnum {  once,  recurring,  };

  /// once
  @BuiltValueField(wireName: r'departAt')
  DateTime? get departAt;

  /// recurring
  @BuiltValueField(wireName: r'days')
  BuiltList<TripScheduleDaysEnum>? get days;
  // enum daysEnum {  MO,  TU,  WE,  TH,  FR,  SA,  SU,  };

  /// recurring, local HH:mm
  @BuiltValueField(wireName: r'departTime')
  String? get departTime;

  /// IANA zone for recurring schedules
  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  TripSchedule._();

  factory TripSchedule([void updates(TripScheduleBuilder b)]) = _$TripSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TripScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TripSchedule> get serializer => _$TripScheduleSerializer();
}

class _$TripScheduleSerializer implements PrimitiveSerializer<TripSchedule> {
  @override
  final Iterable<Type> types = const [TripSchedule, _$TripSchedule];

  @override
  final String wireName = r'TripSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TripSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(TripScheduleTypeEnum),
    );
    if (object.departAt != null) {
      yield r'departAt';
      yield serializers.serialize(
        object.departAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType:
            const FullType(BuiltList, [FullType(TripScheduleDaysEnum)]),
      );
    }
    if (object.departTime != null) {
      yield r'departTime';
      yield serializers.serialize(
        object.departTime,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TripSchedule object, {
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
    required TripScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TripScheduleTypeEnum),
          ) as TripScheduleTypeEnum;
          result.type = valueDes;
          break;
        case r'departAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.departAt = valueDes;
          break;
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltList, [FullType(TripScheduleDaysEnum)]),
          ) as BuiltList<TripScheduleDaysEnum>?;
          if (valueDes == null) continue;
          result.days.replace(valueDes);
          break;
        case r'departTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.departTime = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  TripSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TripScheduleBuilder();
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

class TripScheduleTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'once')
  static const TripScheduleTypeEnum once = _$tripScheduleTypeEnum_once;
  @BuiltValueEnumConst(wireName: r'recurring')
  static const TripScheduleTypeEnum recurring =
      _$tripScheduleTypeEnum_recurring;

  static Serializer<TripScheduleTypeEnum> get serializer =>
      _$tripScheduleTypeEnumSerializer;

  const TripScheduleTypeEnum._(String name) : super(name);

  static BuiltSet<TripScheduleTypeEnum> get values =>
      _$tripScheduleTypeEnumValues;
  static TripScheduleTypeEnum valueOf(String name) =>
      _$tripScheduleTypeEnumValueOf(name);
}

class TripScheduleDaysEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MO')
  static const TripScheduleDaysEnum MO = _$tripScheduleDaysEnum_MO;
  @BuiltValueEnumConst(wireName: r'TU')
  static const TripScheduleDaysEnum TU = _$tripScheduleDaysEnum_TU;
  @BuiltValueEnumConst(wireName: r'WE')
  static const TripScheduleDaysEnum WE = _$tripScheduleDaysEnum_WE;
  @BuiltValueEnumConst(wireName: r'TH')
  static const TripScheduleDaysEnum TH = _$tripScheduleDaysEnum_TH;
  @BuiltValueEnumConst(wireName: r'FR')
  static const TripScheduleDaysEnum FR = _$tripScheduleDaysEnum_FR;
  @BuiltValueEnumConst(wireName: r'SA')
  static const TripScheduleDaysEnum SA = _$tripScheduleDaysEnum_SA;
  @BuiltValueEnumConst(wireName: r'SU')
  static const TripScheduleDaysEnum SU = _$tripScheduleDaysEnum_SU;

  static Serializer<TripScheduleDaysEnum> get serializer =>
      _$tripScheduleDaysEnumSerializer;

  const TripScheduleDaysEnum._(String name) : super(name);

  static BuiltSet<TripScheduleDaysEnum> get values =>
      _$tripScheduleDaysEnumValues;
  static TripScheduleDaysEnum valueOf(String name) =>
      _$tripScheduleDaysEnumValueOf(name);
}
