//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_cursor.g.dart';

/// Change-detection cursor of a profile
///
/// Properties:
/// * [seq]
/// * [alertId]
/// * [eventUpdatedAt]
/// * [anomalyId]
@BuiltValue()
abstract class AnalystCursor
    implements Built<AnalystCursor, AnalystCursorBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'alertId')
  int? get alertId;

  @BuiltValueField(wireName: r'eventUpdatedAt')
  DateTime? get eventUpdatedAt;

  @BuiltValueField(wireName: r'anomalyId')
  int? get anomalyId;

  AnalystCursor._();

  factory AnalystCursor([void updates(AnalystCursorBuilder b)]) =
      _$AnalystCursor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystCursorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystCursor> get serializer =>
      _$AnalystCursorSerializer();
}

class _$AnalystCursorSerializer implements PrimitiveSerializer<AnalystCursor> {
  @override
  final Iterable<Type> types = const [AnalystCursor, _$AnalystCursor];

  @override
  final String wireName = r'AnalystCursor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystCursor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.alertId != null) {
      yield r'alertId';
      yield serializers.serialize(
        object.alertId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.eventUpdatedAt != null) {
      yield r'eventUpdatedAt';
      yield serializers.serialize(
        object.eventUpdatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.anomalyId != null) {
      yield r'anomalyId';
      yield serializers.serialize(
        object.anomalyId,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystCursor object, {
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
    required AnalystCursorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seq = valueDes;
          break;
        case r'alertId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.alertId = valueDes;
          break;
        case r'eventUpdatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.eventUpdatedAt = valueDes;
          break;
        case r'anomalyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.anomalyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystCursor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystCursorBuilder();
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
