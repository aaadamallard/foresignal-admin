//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'window_state.g.dart';

/// Per-group state of a windowed rule
///
/// Properties:
/// * [groupKey] - Group key; `*` when the rule has no groupBy
/// * [state]
/// * [since]
/// * [lastValue] - Distinct count (count/absence) or bucket count (anomaly)
/// * [threshold] - Count threshold, or the expected value for anomaly rules
/// * [lastEvaluatedAt]
/// * [lastWatermarkSeq]
/// * [reason] - Why the state is unknown or learning (coverage gate reason, warm-up)
/// * [lastAlertId]
@BuiltValue()
abstract class WindowState implements Built<WindowState, WindowStateBuilder> {
  /// Group key; `*` when the rule has no groupBy
  @BuiltValueField(wireName: r'groupKey')
  String get groupKey;

  @BuiltValueField(wireName: r'state')
  WindowStateStateEnum get state;
  // enum stateEnum {  active,  clear,  unknown,  learning,  };

  @BuiltValueField(wireName: r'since')
  DateTime get since;

  /// Distinct count (count/absence) or bucket count (anomaly)
  @BuiltValueField(wireName: r'lastValue')
  num? get lastValue;

  /// Count threshold, or the expected value for anomaly rules
  @BuiltValueField(wireName: r'threshold')
  num? get threshold;

  @BuiltValueField(wireName: r'lastEvaluatedAt')
  DateTime? get lastEvaluatedAt;

  @BuiltValueField(wireName: r'lastWatermarkSeq')
  int? get lastWatermarkSeq;

  /// Why the state is unknown or learning (coverage gate reason, warm-up)
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'lastAlertId')
  int? get lastAlertId;

  WindowState._();

  factory WindowState([void updates(WindowStateBuilder b)]) = _$WindowState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WindowStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WindowState> get serializer => _$WindowStateSerializer();
}

class _$WindowStateSerializer implements PrimitiveSerializer<WindowState> {
  @override
  final Iterable<Type> types = const [WindowState, _$WindowState];

  @override
  final String wireName = r'WindowState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WindowState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupKey';
    yield serializers.serialize(
      object.groupKey,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(WindowStateStateEnum),
    );
    yield r'since';
    yield serializers.serialize(
      object.since,
      specifiedType: const FullType(DateTime),
    );
    if (object.lastValue != null) {
      yield r'lastValue';
      yield serializers.serialize(
        object.lastValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.threshold != null) {
      yield r'threshold';
      yield serializers.serialize(
        object.threshold,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lastEvaluatedAt != null) {
      yield r'lastEvaluatedAt';
      yield serializers.serialize(
        object.lastEvaluatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastWatermarkSeq != null) {
      yield r'lastWatermarkSeq';
      yield serializers.serialize(
        object.lastWatermarkSeq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lastAlertId != null) {
      yield r'lastAlertId';
      yield serializers.serialize(
        object.lastAlertId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WindowState object, {
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
    required WindowStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupKey = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WindowStateStateEnum),
          ) as WindowStateStateEnum;
          result.state = valueDes;
          break;
        case r'since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.since = valueDes;
          break;
        case r'lastValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lastValue = valueDes;
          break;
        case r'threshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.threshold = valueDes;
          break;
        case r'lastEvaluatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastEvaluatedAt = valueDes;
          break;
        case r'lastWatermarkSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastWatermarkSeq = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'lastAlertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastAlertId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WindowState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WindowStateBuilder();
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

class WindowStateStateEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const WindowStateStateEnum active = _$windowStateStateEnum_active;
  @BuiltValueEnumConst(wireName: r'clear')
  static const WindowStateStateEnum clear = _$windowStateStateEnum_clear;
  @BuiltValueEnumConst(wireName: r'unknown')
  static const WindowStateStateEnum unknown = _$windowStateStateEnum_unknown;
  @BuiltValueEnumConst(wireName: r'learning')
  static const WindowStateStateEnum learning = _$windowStateStateEnum_learning;

  static Serializer<WindowStateStateEnum> get serializer =>
      _$windowStateStateEnumSerializer;

  const WindowStateStateEnum._(String name) : super(name);

  static BuiltSet<WindowStateStateEnum> get values =>
      _$windowStateStateEnumValues;
  static WindowStateStateEnum valueOf(String name) =>
      _$windowStateStateEnumValueOf(name);
}
