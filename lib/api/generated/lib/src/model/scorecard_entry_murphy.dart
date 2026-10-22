//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry_murphy.g.dart';

/// Murphy decomposition of the Brier score
///
/// Properties:
/// * [reliability]
/// * [resolution]
/// * [uncertainty]
/// * [withinBinVariance]
/// * [withinBinCovariance]
@BuiltValue()
abstract class ScorecardEntryMurphy
    implements Built<ScorecardEntryMurphy, ScorecardEntryMurphyBuilder> {
  @BuiltValueField(wireName: r'reliability')
  num get reliability;

  @BuiltValueField(wireName: r'resolution')
  num get resolution;

  @BuiltValueField(wireName: r'uncertainty')
  num get uncertainty;

  @BuiltValueField(wireName: r'withinBinVariance')
  num? get withinBinVariance;

  @BuiltValueField(wireName: r'withinBinCovariance')
  num? get withinBinCovariance;

  ScorecardEntryMurphy._();

  factory ScorecardEntryMurphy([void updates(ScorecardEntryMurphyBuilder b)]) =
      _$ScorecardEntryMurphy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntryMurphyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntryMurphy> get serializer =>
      _$ScorecardEntryMurphySerializer();
}

class _$ScorecardEntryMurphySerializer
    implements PrimitiveSerializer<ScorecardEntryMurphy> {
  @override
  final Iterable<Type> types = const [
    ScorecardEntryMurphy,
    _$ScorecardEntryMurphy
  ];

  @override
  final String wireName = r'ScorecardEntryMurphy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntryMurphy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reliability';
    yield serializers.serialize(
      object.reliability,
      specifiedType: const FullType(num),
    );
    yield r'resolution';
    yield serializers.serialize(
      object.resolution,
      specifiedType: const FullType(num),
    );
    yield r'uncertainty';
    yield serializers.serialize(
      object.uncertainty,
      specifiedType: const FullType(num),
    );
    if (object.withinBinVariance != null) {
      yield r'withinBinVariance';
      yield serializers.serialize(
        object.withinBinVariance,
        specifiedType: const FullType(num),
      );
    }
    if (object.withinBinCovariance != null) {
      yield r'withinBinCovariance';
      yield serializers.serialize(
        object.withinBinCovariance,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntryMurphy object, {
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
    required ScorecardEntryMurphyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reliability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.reliability = valueDes;
          break;
        case r'resolution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.resolution = valueDes;
          break;
        case r'uncertainty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.uncertainty = valueDes;
          break;
        case r'withinBinVariance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.withinBinVariance = valueDes;
          break;
        case r'withinBinCovariance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.withinBinCovariance = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntryMurphy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntryMurphyBuilder();
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
