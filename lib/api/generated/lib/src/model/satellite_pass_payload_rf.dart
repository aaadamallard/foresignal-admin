//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/satellite_pass_payload_rf_snr_by_elevation_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'satellite_pass_payload_rf.g.dart';

/// RF session aggregate at LOS
///
/// Properties:
/// * [snrMaxDb]
/// * [snrMeanDb]
/// * [berMin]
/// * [berMean]
/// * [syncedFraction]
/// * [firstLockAt]
/// * [lastLockAt]
/// * [firstLockElevationDeg]
/// * [lastLockElevationDeg]
/// * [snrByElevation] - About 60 points
@BuiltValue()
abstract class SatellitePassPayloadRf
    implements Built<SatellitePassPayloadRf, SatellitePassPayloadRfBuilder> {
  @BuiltValueField(wireName: r'snrMaxDb')
  num? get snrMaxDb;

  @BuiltValueField(wireName: r'snrMeanDb')
  num? get snrMeanDb;

  @BuiltValueField(wireName: r'berMin')
  num? get berMin;

  @BuiltValueField(wireName: r'berMean')
  num? get berMean;

  @BuiltValueField(wireName: r'syncedFraction')
  num? get syncedFraction;

  @BuiltValueField(wireName: r'firstLockAt')
  DateTime? get firstLockAt;

  @BuiltValueField(wireName: r'lastLockAt')
  DateTime? get lastLockAt;

  @BuiltValueField(wireName: r'firstLockElevationDeg')
  num? get firstLockElevationDeg;

  @BuiltValueField(wireName: r'lastLockElevationDeg')
  num? get lastLockElevationDeg;

  /// About 60 points
  @BuiltValueField(wireName: r'snrByElevation')
  BuiltList<SatellitePassPayloadRfSnrByElevationInner>? get snrByElevation;

  SatellitePassPayloadRf._();

  factory SatellitePassPayloadRf(
          [void updates(SatellitePassPayloadRfBuilder b)]) =
      _$SatellitePassPayloadRf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SatellitePassPayloadRfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SatellitePassPayloadRf> get serializer =>
      _$SatellitePassPayloadRfSerializer();
}

class _$SatellitePassPayloadRfSerializer
    implements PrimitiveSerializer<SatellitePassPayloadRf> {
  @override
  final Iterable<Type> types = const [
    SatellitePassPayloadRf,
    _$SatellitePassPayloadRf
  ];

  @override
  final String wireName = r'SatellitePassPayloadRf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SatellitePassPayloadRf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.snrMaxDb != null) {
      yield r'snrMaxDb';
      yield serializers.serialize(
        object.snrMaxDb,
        specifiedType: const FullType(num),
      );
    }
    if (object.snrMeanDb != null) {
      yield r'snrMeanDb';
      yield serializers.serialize(
        object.snrMeanDb,
        specifiedType: const FullType(num),
      );
    }
    if (object.berMin != null) {
      yield r'berMin';
      yield serializers.serialize(
        object.berMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.berMean != null) {
      yield r'berMean';
      yield serializers.serialize(
        object.berMean,
        specifiedType: const FullType(num),
      );
    }
    if (object.syncedFraction != null) {
      yield r'syncedFraction';
      yield serializers.serialize(
        object.syncedFraction,
        specifiedType: const FullType(num),
      );
    }
    if (object.firstLockAt != null) {
      yield r'firstLockAt';
      yield serializers.serialize(
        object.firstLockAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastLockAt != null) {
      yield r'lastLockAt';
      yield serializers.serialize(
        object.lastLockAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.firstLockElevationDeg != null) {
      yield r'firstLockElevationDeg';
      yield serializers.serialize(
        object.firstLockElevationDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.lastLockElevationDeg != null) {
      yield r'lastLockElevationDeg';
      yield serializers.serialize(
        object.lastLockElevationDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.snrByElevation != null) {
      yield r'snrByElevation';
      yield serializers.serialize(
        object.snrByElevation,
        specifiedType: const FullType(
            BuiltList, [FullType(SatellitePassPayloadRfSnrByElevationInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SatellitePassPayloadRf object, {
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
    required SatellitePassPayloadRfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'snrMaxDb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.snrMaxDb = valueDes;
          break;
        case r'snrMeanDb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.snrMeanDb = valueDes;
          break;
        case r'berMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.berMin = valueDes;
          break;
        case r'berMean':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.berMean = valueDes;
          break;
        case r'syncedFraction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.syncedFraction = valueDes;
          break;
        case r'firstLockAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.firstLockAt = valueDes;
          break;
        case r'lastLockAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastLockAt = valueDes;
          break;
        case r'firstLockElevationDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.firstLockElevationDeg = valueDes;
          break;
        case r'lastLockElevationDeg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lastLockElevationDeg = valueDes;
          break;
        case r'snrByElevation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList,
                [FullType(SatellitePassPayloadRfSnrByElevationInner)]),
          ) as BuiltList<SatellitePassPayloadRfSnrByElevationInner>?;
          if (valueDes == null) continue;
          result.snrByElevation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SatellitePassPayloadRf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SatellitePassPayloadRfBuilder();
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
