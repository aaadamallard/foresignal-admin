//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry_bias.g.dart';

/// Bias monitor
///
/// Properties:
/// * [meanForecastMinusObserved]
/// * [hedgedShare] - Share of forecasts in [0.4, 0.6]
/// * [meanForecastOnNo] - Mean forecast on questions that resolved no
@BuiltValue()
abstract class ScorecardEntryBias
    implements Built<ScorecardEntryBias, ScorecardEntryBiasBuilder> {
  @BuiltValueField(wireName: r'meanForecastMinusObserved')
  num get meanForecastMinusObserved;

  /// Share of forecasts in [0.4, 0.6]
  @BuiltValueField(wireName: r'hedgedShare')
  num get hedgedShare;

  /// Mean forecast on questions that resolved no
  @BuiltValueField(wireName: r'meanForecastOnNo')
  num? get meanForecastOnNo;

  ScorecardEntryBias._();

  factory ScorecardEntryBias([void updates(ScorecardEntryBiasBuilder b)]) =
      _$ScorecardEntryBias;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntryBiasBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntryBias> get serializer =>
      _$ScorecardEntryBiasSerializer();
}

class _$ScorecardEntryBiasSerializer
    implements PrimitiveSerializer<ScorecardEntryBias> {
  @override
  final Iterable<Type> types = const [ScorecardEntryBias, _$ScorecardEntryBias];

  @override
  final String wireName = r'ScorecardEntryBias';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntryBias object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'meanForecastMinusObserved';
    yield serializers.serialize(
      object.meanForecastMinusObserved,
      specifiedType: const FullType(num),
    );
    yield r'hedgedShare';
    yield serializers.serialize(
      object.hedgedShare,
      specifiedType: const FullType(num),
    );
    if (object.meanForecastOnNo != null) {
      yield r'meanForecastOnNo';
      yield serializers.serialize(
        object.meanForecastOnNo,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntryBias object, {
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
    required ScorecardEntryBiasBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meanForecastMinusObserved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.meanForecastMinusObserved = valueDes;
          break;
        case r'hedgedShare':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.hedgedShare = valueDes;
          break;
        case r'meanForecastOnNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.meanForecastOnNo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntryBias deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntryBiasBuilder();
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
