//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anomaly_window.g.dart';

/// Anomaly rule window: per-bucket counts against a coverage-aware Poisson or negative-binomial baseline
///
/// Properties:
/// * [window] - Window length, 1m to 7d. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [step] - Evaluation period; default min(window/4, 5m), minimum 30s. ISO-8601 duration or shorthand (30m, 6h, 7d).
/// * [distinctBy] - `entity` (098 entity, else descriptor entityKeys, else source+externalId), `externalId`, or a payload path. Versions are never counted.
/// * [groupBy] - null | `source` | `place` | `h3:<res 3..8>` | `admin1` | `country` | a payload path
/// * [maxGroups]
/// * [bucket]
/// * [slotMode]
/// * [direction]
/// * [sensitivity] - α 1e-4 / 1e-3 / 1e-2
/// * [minAbsoluteDelta]
/// * [minWeeks]
/// * [coverageMin]
@BuiltValue()
abstract class AnomalyWindow
    implements Built<AnomalyWindow, AnomalyWindowBuilder> {
  /// Window length, 1m to 7d. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'window')
  String get window;

  /// Evaluation period; default min(window/4, 5m), minimum 30s. ISO-8601 duration or shorthand (30m, 6h, 7d).
  @BuiltValueField(wireName: r'step')
  String? get step;

  /// `entity` (098 entity, else descriptor entityKeys, else source+externalId), `externalId`, or a payload path. Versions are never counted.
  @BuiltValueField(wireName: r'distinctBy')
  String? get distinctBy;

  /// null | `source` | `place` | `h3:<res 3..8>` | `admin1` | `country` | a payload path
  @BuiltValueField(wireName: r'groupBy')
  String? get groupBy;

  @BuiltValueField(wireName: r'maxGroups')
  int? get maxGroups;

  @BuiltValueField(wireName: r'bucket')
  AnomalyWindowBucketEnum? get bucket;
  // enum bucketEnum {  15m,  1h,  };

  @BuiltValueField(wireName: r'slotMode')
  AnomalyWindowSlotModeEnum? get slotMode;
  // enum slotModeEnum {  hour-of-week,  hour-of-day,  };

  @BuiltValueField(wireName: r'direction')
  AnomalyWindowDirectionEnum? get direction;
  // enum directionEnum {  up,  down,  both,  };

  /// α 1e-4 / 1e-3 / 1e-2
  @BuiltValueField(wireName: r'sensitivity')
  AnomalyWindowSensitivityEnum? get sensitivity;
  // enum sensitivityEnum {  low,  medium,  high,  };

  @BuiltValueField(wireName: r'minAbsoluteDelta')
  num? get minAbsoluteDelta;

  @BuiltValueField(wireName: r'minWeeks')
  int? get minWeeks;

  @BuiltValueField(wireName: r'coverageMin')
  num? get coverageMin;

  AnomalyWindow._();

  factory AnomalyWindow([void updates(AnomalyWindowBuilder b)]) =
      _$AnomalyWindow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnomalyWindowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnomalyWindow> get serializer =>
      _$AnomalyWindowSerializer();
}

class _$AnomalyWindowSerializer implements PrimitiveSerializer<AnomalyWindow> {
  @override
  final Iterable<Type> types = const [AnomalyWindow, _$AnomalyWindow];

  @override
  final String wireName = r'AnomalyWindow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnomalyWindow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'window';
    yield serializers.serialize(
      object.window,
      specifiedType: const FullType(String),
    );
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(String),
      );
    }
    if (object.distinctBy != null) {
      yield r'distinctBy';
      yield serializers.serialize(
        object.distinctBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupBy != null) {
      yield r'groupBy';
      yield serializers.serialize(
        object.groupBy,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxGroups != null) {
      yield r'maxGroups';
      yield serializers.serialize(
        object.maxGroups,
        specifiedType: const FullType(int),
      );
    }
    if (object.bucket != null) {
      yield r'bucket';
      yield serializers.serialize(
        object.bucket,
        specifiedType: const FullType(AnomalyWindowBucketEnum),
      );
    }
    if (object.slotMode != null) {
      yield r'slotMode';
      yield serializers.serialize(
        object.slotMode,
        specifiedType: const FullType(AnomalyWindowSlotModeEnum),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(AnomalyWindowDirectionEnum),
      );
    }
    if (object.sensitivity != null) {
      yield r'sensitivity';
      yield serializers.serialize(
        object.sensitivity,
        specifiedType: const FullType(AnomalyWindowSensitivityEnum),
      );
    }
    if (object.minAbsoluteDelta != null) {
      yield r'minAbsoluteDelta';
      yield serializers.serialize(
        object.minAbsoluteDelta,
        specifiedType: const FullType(num),
      );
    }
    if (object.minWeeks != null) {
      yield r'minWeeks';
      yield serializers.serialize(
        object.minWeeks,
        specifiedType: const FullType(int),
      );
    }
    if (object.coverageMin != null) {
      yield r'coverageMin';
      yield serializers.serialize(
        object.coverageMin,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnomalyWindow object, {
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
    required AnomalyWindowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'window':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.window = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.step = valueDes;
          break;
        case r'distinctBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.distinctBy = valueDes;
          break;
        case r'groupBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.groupBy = valueDes;
          break;
        case r'maxGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxGroups = valueDes;
          break;
        case r'bucket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnomalyWindowBucketEnum),
          ) as AnomalyWindowBucketEnum?;
          if (valueDes == null) continue;
          result.bucket = valueDes;
          break;
        case r'slotMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnomalyWindowSlotModeEnum),
          ) as AnomalyWindowSlotModeEnum?;
          if (valueDes == null) continue;
          result.slotMode = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AnomalyWindowDirectionEnum),
          ) as AnomalyWindowDirectionEnum?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        case r'sensitivity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(AnomalyWindowSensitivityEnum),
          ) as AnomalyWindowSensitivityEnum?;
          if (valueDes == null) continue;
          result.sensitivity = valueDes;
          break;
        case r'minAbsoluteDelta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minAbsoluteDelta = valueDes;
          break;
        case r'minWeeks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.minWeeks = valueDes;
          break;
        case r'coverageMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.coverageMin = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnomalyWindow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnomalyWindowBuilder();
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

class AnomalyWindowBucketEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'15m')
  static const AnomalyWindowBucketEnum n15m = _$anomalyWindowBucketEnum_n15m;
  @BuiltValueEnumConst(wireName: r'1h')
  static const AnomalyWindowBucketEnum n1h = _$anomalyWindowBucketEnum_n1h;

  static Serializer<AnomalyWindowBucketEnum> get serializer =>
      _$anomalyWindowBucketEnumSerializer;

  const AnomalyWindowBucketEnum._(String name) : super(name);

  static BuiltSet<AnomalyWindowBucketEnum> get values =>
      _$anomalyWindowBucketEnumValues;
  static AnomalyWindowBucketEnum valueOf(String name) =>
      _$anomalyWindowBucketEnumValueOf(name);
}

class AnomalyWindowSlotModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hour-of-week')
  static const AnomalyWindowSlotModeEnum hourOfWeek =
      _$anomalyWindowSlotModeEnum_hourOfWeek;
  @BuiltValueEnumConst(wireName: r'hour-of-day')
  static const AnomalyWindowSlotModeEnum hourOfDay =
      _$anomalyWindowSlotModeEnum_hourOfDay;

  static Serializer<AnomalyWindowSlotModeEnum> get serializer =>
      _$anomalyWindowSlotModeEnumSerializer;

  const AnomalyWindowSlotModeEnum._(String name) : super(name);

  static BuiltSet<AnomalyWindowSlotModeEnum> get values =>
      _$anomalyWindowSlotModeEnumValues;
  static AnomalyWindowSlotModeEnum valueOf(String name) =>
      _$anomalyWindowSlotModeEnumValueOf(name);
}

class AnomalyWindowDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'up')
  static const AnomalyWindowDirectionEnum up = _$anomalyWindowDirectionEnum_up;
  @BuiltValueEnumConst(wireName: r'down')
  static const AnomalyWindowDirectionEnum down =
      _$anomalyWindowDirectionEnum_down;
  @BuiltValueEnumConst(wireName: r'both')
  static const AnomalyWindowDirectionEnum both =
      _$anomalyWindowDirectionEnum_both;

  static Serializer<AnomalyWindowDirectionEnum> get serializer =>
      _$anomalyWindowDirectionEnumSerializer;

  const AnomalyWindowDirectionEnum._(String name) : super(name);

  static BuiltSet<AnomalyWindowDirectionEnum> get values =>
      _$anomalyWindowDirectionEnumValues;
  static AnomalyWindowDirectionEnum valueOf(String name) =>
      _$anomalyWindowDirectionEnumValueOf(name);
}

/// α 1e-4 / 1e-3 / 1e-2
class AnomalyWindowSensitivityEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const AnomalyWindowSensitivityEnum low =
      _$anomalyWindowSensitivityEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const AnomalyWindowSensitivityEnum medium =
      _$anomalyWindowSensitivityEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const AnomalyWindowSensitivityEnum high =
      _$anomalyWindowSensitivityEnum_high;

  static Serializer<AnomalyWindowSensitivityEnum> get serializer =>
      _$anomalyWindowSensitivityEnumSerializer;

  const AnomalyWindowSensitivityEnum._(String name) : super(name);

  static BuiltSet<AnomalyWindowSensitivityEnum> get values =>
      _$anomalyWindowSensitivityEnumValues;
  static AnomalyWindowSensitivityEnum valueOf(String name) =>
      _$anomalyWindowSensitivityEnumValueOf(name);
}
