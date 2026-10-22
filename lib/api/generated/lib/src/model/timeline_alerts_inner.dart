//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_alerts_inner.g.dart';

/// Alert counts per bucket
///
/// Properties:
/// * [t]
/// * [info]
/// * [warning]
/// * [critical]
@BuiltValue()
abstract class TimelineAlertsInner
    implements Built<TimelineAlertsInner, TimelineAlertsInnerBuilder> {
  @BuiltValueField(wireName: r't')
  DateTime get t;

  @BuiltValueField(wireName: r'info')
  int? get info;

  @BuiltValueField(wireName: r'warning')
  int? get warning;

  @BuiltValueField(wireName: r'critical')
  int? get critical;

  TimelineAlertsInner._();

  factory TimelineAlertsInner([void updates(TimelineAlertsInnerBuilder b)]) =
      _$TimelineAlertsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineAlertsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineAlertsInner> get serializer =>
      _$TimelineAlertsInnerSerializer();
}

class _$TimelineAlertsInnerSerializer
    implements PrimitiveSerializer<TimelineAlertsInner> {
  @override
  final Iterable<Type> types = const [
    TimelineAlertsInner,
    _$TimelineAlertsInner
  ];

  @override
  final String wireName = r'TimelineAlertsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineAlertsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r't';
    yield serializers.serialize(
      object.t,
      specifiedType: const FullType(DateTime),
    );
    if (object.info != null) {
      yield r'info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(int),
      );
    }
    if (object.warning != null) {
      yield r'warning';
      yield serializers.serialize(
        object.warning,
        specifiedType: const FullType(int),
      );
    }
    if (object.critical != null) {
      yield r'critical';
      yield serializers.serialize(
        object.critical,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimelineAlertsInner object, {
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
    required TimelineAlertsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r't':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.t = valueDes;
          break;
        case r'info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.info = valueDes;
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.warning = valueDes;
          break;
        case r'critical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.critical = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimelineAlertsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineAlertsInnerBuilder();
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
