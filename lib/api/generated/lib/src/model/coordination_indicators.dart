//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/time_range.dart';
import 'package:foresignal_api/src/model/coordination_indicator.dart';
import 'package:foresignal_api/src/model/detector_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coordination_indicators.g.dart';

/// Coordinated-amplification indicators of a narrative (`CoordinationDetector` 1.1.0): statistics, never labels on accounts
///
/// Properties:
/// * [narrativeId] - ULID identifier
/// * [window]
/// * [synchrony]
/// * [textDuplication]
/// * [accountAgeSkew]
/// * [coRepostBursts]
/// * [significantCount] - Indicators with q < 0.01
/// * [findingId] - `social-coordination` finding when ≥ 2 indicators are significant
/// * [statement]
/// * [detector]
/// * [computedAt]
@BuiltValue()
abstract class CoordinationIndicators
    implements Built<CoordinationIndicators, CoordinationIndicatorsBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'window')
  TimeRange get window;

  @BuiltValueField(wireName: r'synchrony')
  CoordinationIndicator get synchrony;

  @BuiltValueField(wireName: r'textDuplication')
  CoordinationIndicator get textDuplication;

  @BuiltValueField(wireName: r'accountAgeSkew')
  CoordinationIndicator get accountAgeSkew;

  @BuiltValueField(wireName: r'coRepostBursts')
  CoordinationIndicator get coRepostBursts;

  /// Indicators with q < 0.01
  @BuiltValueField(wireName: r'significantCount')
  int get significantCount;

  /// `social-coordination` finding when ≥ 2 indicators are significant
  @BuiltValueField(wireName: r'findingId')
  String? get findingId;

  @BuiltValueField(wireName: r'statement')
  String? get statement;

  @BuiltValueField(wireName: r'detector')
  DetectorRef get detector;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  CoordinationIndicators._();

  factory CoordinationIndicators([
    void updates(CoordinationIndicatorsBuilder b),
  ]) = _$CoordinationIndicators;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoordinationIndicatorsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoordinationIndicators> get serializer =>
      _$CoordinationIndicatorsSerializer();
}

class _$CoordinationIndicatorsSerializer
    implements PrimitiveSerializer<CoordinationIndicators> {
  @override
  final Iterable<Type> types = const [
    CoordinationIndicators,
    _$CoordinationIndicators,
  ];

  @override
  final String wireName = r'CoordinationIndicators';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoordinationIndicators object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(TimeRange),
    );
    yield r'synchrony';
    yield serializers.serialize(
      object.synchrony,
      specifiedType: const FullType(CoordinationIndicator),
    );
    yield r'textDuplication';
    yield serializers.serialize(
      object.textDuplication,
      specifiedType: const FullType(CoordinationIndicator),
    );
    yield r'accountAgeSkew';
    yield serializers.serialize(
      object.accountAgeSkew,
      specifiedType: const FullType(CoordinationIndicator),
    );
    yield r'coRepostBursts';
    yield serializers.serialize(
      object.coRepostBursts,
      specifiedType: const FullType(CoordinationIndicator),
    );
    yield r'significantCount';
    yield serializers.serialize(
      object.significantCount,
      specifiedType: const FullType(int),
    );
    if (object.findingId != null) {
      yield r'findingId';
      yield serializers.serialize(
        object.findingId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.statement != null) {
      yield r'statement';
      yield serializers.serialize(
        object.statement,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'detector';
    yield serializers.serialize(
      object.detector,
      specifiedType: const FullType(DetectorRef),
    );
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoordinationIndicators object, {
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
    required CoordinationIndicatorsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'window':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TimeRange),
                  )
                  as TimeRange;
          result.window.replace(valueDes);
          break;
        case r'synchrony':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoordinationIndicator),
                  )
                  as CoordinationIndicator;
          result.synchrony.replace(valueDes);
          break;
        case r'textDuplication':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoordinationIndicator),
                  )
                  as CoordinationIndicator;
          result.textDuplication.replace(valueDes);
          break;
        case r'accountAgeSkew':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoordinationIndicator),
                  )
                  as CoordinationIndicator;
          result.accountAgeSkew.replace(valueDes);
          break;
        case r'coRepostBursts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(CoordinationIndicator),
                  )
                  as CoordinationIndicator;
          result.coRepostBursts.replace(valueDes);
          break;
        case r'significantCount':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.significantCount = valueDes;
          break;
        case r'findingId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.findingId = valueDes;
          break;
        case r'statement':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.statement = valueDes;
          break;
        case r'detector':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DetectorRef),
                  )
                  as DetectorRef;
          result.detector.replace(valueDes);
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoordinationIndicators deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoordinationIndicatorsBuilder();
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
