//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/cycle_packet_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cycle_packet_forecasts.g.dart';

/// Ledger changes
///
/// Properties:
/// * [opened]
/// * [due]
/// * [resolved]
/// * [scorecardChanges]
@BuiltValue()
abstract class CyclePacketForecasts
    implements Built<CyclePacketForecasts, CyclePacketForecastsBuilder> {
  @BuiltValueField(wireName: r'opened')
  BuiltList<CyclePacketItem>? get opened;

  @BuiltValueField(wireName: r'due')
  BuiltList<CyclePacketItem>? get due;

  @BuiltValueField(wireName: r'resolved')
  BuiltList<CyclePacketItem>? get resolved;

  @BuiltValueField(wireName: r'scorecardChanges')
  BuiltList<CyclePacketItem>? get scorecardChanges;

  CyclePacketForecasts._();

  factory CyclePacketForecasts([void updates(CyclePacketForecastsBuilder b)]) =
      _$CyclePacketForecasts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CyclePacketForecastsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CyclePacketForecasts> get serializer =>
      _$CyclePacketForecastsSerializer();
}

class _$CyclePacketForecastsSerializer
    implements PrimitiveSerializer<CyclePacketForecasts> {
  @override
  final Iterable<Type> types = const [
    CyclePacketForecasts,
    _$CyclePacketForecasts,
  ];

  @override
  final String wireName = r'CyclePacketForecasts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CyclePacketForecasts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.opened != null) {
      yield r'opened';
      yield serializers.serialize(
        object.opened,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.due != null) {
      yield r'due';
      yield serializers.serialize(
        object.due,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.resolved != null) {
      yield r'resolved';
      yield serializers.serialize(
        object.resolved,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
    if (object.scorecardChanges != null) {
      yield r'scorecardChanges';
      yield serializers.serialize(
        object.scorecardChanges,
        specifiedType: const FullType(BuiltList, [FullType(CyclePacketItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CyclePacketForecasts object, {
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
    required CyclePacketForecastsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'opened':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.opened.replace(valueDes);
          break;
        case r'due':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.due.replace(valueDes);
          break;
        case r'resolved':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.resolved.replace(valueDes);
          break;
        case r'scorecardChanges':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(CyclePacketItem),
                    ]),
                  )
                  as BuiltList<CyclePacketItem>?;
          if (valueDes == null) continue;
          result.scorecardChanges.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CyclePacketForecasts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CyclePacketForecastsBuilder();
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
