//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_run_input_counts.g.dart';

/// Inputs by type
///
/// Properties:
/// * [events]
/// * [anomalies]
/// * [alerts]
@BuiltValue()
abstract class AnalystRunInputCounts
    implements Built<AnalystRunInputCounts, AnalystRunInputCountsBuilder> {
  @BuiltValueField(wireName: r'events')
  int? get events;

  @BuiltValueField(wireName: r'anomalies')
  int? get anomalies;

  @BuiltValueField(wireName: r'alerts')
  int? get alerts;

  AnalystRunInputCounts._();

  factory AnalystRunInputCounts([
    void updates(AnalystRunInputCountsBuilder b),
  ]) = _$AnalystRunInputCounts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystRunInputCountsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystRunInputCounts> get serializer =>
      _$AnalystRunInputCountsSerializer();
}

class _$AnalystRunInputCountsSerializer
    implements PrimitiveSerializer<AnalystRunInputCounts> {
  @override
  final Iterable<Type> types = const [
    AnalystRunInputCounts,
    _$AnalystRunInputCounts,
  ];

  @override
  final String wireName = r'AnalystRunInputCounts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystRunInputCounts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.events != null) {
      yield r'events';
      yield serializers.serialize(
        object.events,
        specifiedType: const FullType(int),
      );
    }
    if (object.anomalies != null) {
      yield r'anomalies';
      yield serializers.serialize(
        object.anomalies,
        specifiedType: const FullType(int),
      );
    }
    if (object.alerts != null) {
      yield r'alerts';
      yield serializers.serialize(
        object.alerts,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystRunInputCounts object, {
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
    required AnalystRunInputCountsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'events':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.events = valueDes;
          break;
        case r'anomalies':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.anomalies = valueDes;
          break;
        case r'alerts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.alerts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystRunInputCounts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystRunInputCountsBuilder();
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
