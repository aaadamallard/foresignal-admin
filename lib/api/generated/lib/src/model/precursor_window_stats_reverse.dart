//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_window_stats_reverse.g.dart';

/// Reverse-direction test (consequent leading)
///
/// Properties:
/// * [p]
/// * [statistic]
/// * [coMovement] - True when the reverse is as strong: co-movement, not precedence
@BuiltValue()
abstract class PrecursorWindowStatsReverse
    implements
        Built<PrecursorWindowStatsReverse, PrecursorWindowStatsReverseBuilder> {
  @BuiltValueField(wireName: r'p')
  num? get p;

  @BuiltValueField(wireName: r'statistic')
  num? get statistic;

  /// True when the reverse is as strong: co-movement, not precedence
  @BuiltValueField(wireName: r'coMovement')
  bool get coMovement;

  PrecursorWindowStatsReverse._();

  factory PrecursorWindowStatsReverse([
    void updates(PrecursorWindowStatsReverseBuilder b),
  ]) = _$PrecursorWindowStatsReverse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorWindowStatsReverseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorWindowStatsReverse> get serializer =>
      _$PrecursorWindowStatsReverseSerializer();
}

class _$PrecursorWindowStatsReverseSerializer
    implements PrimitiveSerializer<PrecursorWindowStatsReverse> {
  @override
  final Iterable<Type> types = const [
    PrecursorWindowStatsReverse,
    _$PrecursorWindowStatsReverse,
  ];

  @override
  final String wireName = r'PrecursorWindowStatsReverse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorWindowStatsReverse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.p != null) {
      yield r'p';
      yield serializers.serialize(
        object.p,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.statistic != null) {
      yield r'statistic';
      yield serializers.serialize(
        object.statistic,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'coMovement';
    yield serializers.serialize(
      object.coMovement,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorWindowStatsReverse object, {
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
    required PrecursorWindowStatsReverseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'p':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.p = valueDes;
          break;
        case r'statistic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.statistic = valueDes;
          break;
        case r'coMovement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.coMovement = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorWindowStatsReverse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorWindowStatsReverseBuilder();
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
