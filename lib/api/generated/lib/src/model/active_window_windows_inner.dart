//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_window_windows_inner.g.dart';

/// ActiveWindowWindowsInner
///
/// Properties:
/// * [days]
/// * [start]
/// * [end] - end < start spans midnight
@BuiltValue()
abstract class ActiveWindowWindowsInner
    implements
        Built<ActiveWindowWindowsInner, ActiveWindowWindowsInnerBuilder> {
  @BuiltValueField(wireName: r'days')
  BuiltList<ActiveWindowWindowsInnerDaysEnum> get days;
  // enum daysEnum {  MON,  TUE,  WED,  THU,  FRI,  SAT,  SUN,  };

  @BuiltValueField(wireName: r'start')
  String get start;

  /// end < start spans midnight
  @BuiltValueField(wireName: r'end')
  String get end;

  ActiveWindowWindowsInner._();

  factory ActiveWindowWindowsInner([
    void updates(ActiveWindowWindowsInnerBuilder b),
  ]) = _$ActiveWindowWindowsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActiveWindowWindowsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActiveWindowWindowsInner> get serializer =>
      _$ActiveWindowWindowsInnerSerializer();
}

class _$ActiveWindowWindowsInnerSerializer
    implements PrimitiveSerializer<ActiveWindowWindowsInner> {
  @override
  final Iterable<Type> types = const [
    ActiveWindowWindowsInner,
    _$ActiveWindowWindowsInner,
  ];

  @override
  final String wireName = r'ActiveWindowWindowsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActiveWindowWindowsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'days';
    yield serializers.serialize(
      object.days,
      specifiedType: const FullType(BuiltList, [
        FullType(ActiveWindowWindowsInnerDaysEnum),
      ]),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ActiveWindowWindowsInner object, {
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
    required ActiveWindowWindowsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'days':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(ActiveWindowWindowsInnerDaysEnum),
                    ]),
                  )
                  as BuiltList<ActiveWindowWindowsInnerDaysEnum>;
          result.days.replace(valueDes);
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActiveWindowWindowsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActiveWindowWindowsInnerBuilder();
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

class ActiveWindowWindowsInnerDaysEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MON')
  static const ActiveWindowWindowsInnerDaysEnum MON =
      _$activeWindowWindowsInnerDaysEnum_MON;
  @BuiltValueEnumConst(wireName: r'TUE')
  static const ActiveWindowWindowsInnerDaysEnum TUE =
      _$activeWindowWindowsInnerDaysEnum_TUE;
  @BuiltValueEnumConst(wireName: r'WED')
  static const ActiveWindowWindowsInnerDaysEnum WED =
      _$activeWindowWindowsInnerDaysEnum_WED;
  @BuiltValueEnumConst(wireName: r'THU')
  static const ActiveWindowWindowsInnerDaysEnum THU =
      _$activeWindowWindowsInnerDaysEnum_THU;
  @BuiltValueEnumConst(wireName: r'FRI')
  static const ActiveWindowWindowsInnerDaysEnum FRI =
      _$activeWindowWindowsInnerDaysEnum_FRI;
  @BuiltValueEnumConst(wireName: r'SAT')
  static const ActiveWindowWindowsInnerDaysEnum SAT =
      _$activeWindowWindowsInnerDaysEnum_SAT;
  @BuiltValueEnumConst(wireName: r'SUN')
  static const ActiveWindowWindowsInnerDaysEnum SUN =
      _$activeWindowWindowsInnerDaysEnum_SUN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ActiveWindowWindowsInnerDaysEnum unknownDefaultOpenApi =
      _$activeWindowWindowsInnerDaysEnum_unknownDefaultOpenApi;

  static Serializer<ActiveWindowWindowsInnerDaysEnum> get serializer =>
      _$activeWindowWindowsInnerDaysEnumSerializer;

  const ActiveWindowWindowsInnerDaysEnum._(String name) : super(name);

  static BuiltSet<ActiveWindowWindowsInnerDaysEnum> get values =>
      _$activeWindowWindowsInnerDaysEnumValues;
  static ActiveWindowWindowsInnerDaysEnum valueOf(String name) =>
      _$activeWindowWindowsInnerDaysEnumValueOf(name);
}
