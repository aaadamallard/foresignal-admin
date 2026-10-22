//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/eta_result_target.dart';
import 'package:foresignal_api/src/model/kinematic_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eta_result.g.dart';

/// ETA of a record to a target point or place (114)
///
/// Properties:
/// * [record]
/// * [target]
/// * [distanceMeters]
/// * [bearingDeg]
/// * [bearingDiffDeg]
/// * [approaching] - bearingDiff ≤ 45° and speed ≥ 0.5 m/s
/// * [etaSeconds]
/// * [etaAt]
/// * [asOf]
/// * [stale]
@BuiltValue()
abstract class EtaResult implements Built<EtaResult, EtaResultBuilder> {
  @BuiltValueField(wireName: r'record')
  KinematicState get record;

  @BuiltValueField(wireName: r'target')
  EtaResultTarget get target;

  @BuiltValueField(wireName: r'distanceMeters')
  num get distanceMeters;

  @BuiltValueField(wireName: r'bearingDeg')
  num? get bearingDeg;

  @BuiltValueField(wireName: r'bearingDiffDeg')
  num? get bearingDiffDeg;

  /// bearingDiff ≤ 45° and speed ≥ 0.5 m/s
  @BuiltValueField(wireName: r'approaching')
  bool get approaching;

  @BuiltValueField(wireName: r'etaSeconds')
  num? get etaSeconds;

  @BuiltValueField(wireName: r'etaAt')
  DateTime? get etaAt;

  @BuiltValueField(wireName: r'asOf')
  DateTime get asOf;

  @BuiltValueField(wireName: r'stale')
  bool get stale;

  EtaResult._();

  factory EtaResult([void updates(EtaResultBuilder b)]) = _$EtaResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EtaResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EtaResult> get serializer => _$EtaResultSerializer();
}

class _$EtaResultSerializer implements PrimitiveSerializer<EtaResult> {
  @override
  final Iterable<Type> types = const [EtaResult, _$EtaResult];

  @override
  final String wireName = r'EtaResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EtaResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'record';
    yield serializers.serialize(
      object.record,
      specifiedType: const FullType(KinematicState),
    );
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(EtaResultTarget),
    );
    yield r'distanceMeters';
    yield serializers.serialize(
      object.distanceMeters,
      specifiedType: const FullType(num),
    );
    if (object.bearingDeg != null) {
      yield r'bearingDeg';
      yield serializers.serialize(
        object.bearingDeg,
        specifiedType: const FullType(num),
      );
    }
    if (object.bearingDiffDeg != null) {
      yield r'bearingDiffDeg';
      yield serializers.serialize(
        object.bearingDiffDeg,
        specifiedType: const FullType(num),
      );
    }
    yield r'approaching';
    yield serializers.serialize(
      object.approaching,
      specifiedType: const FullType(bool),
    );
    if (object.etaSeconds != null) {
      yield r'etaSeconds';
      yield serializers.serialize(
        object.etaSeconds,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.etaAt != null) {
      yield r'etaAt';
      yield serializers.serialize(
        object.etaAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'asOf';
    yield serializers.serialize(
      object.asOf,
      specifiedType: const FullType(DateTime),
    );
    yield r'stale';
    yield serializers.serialize(
      object.stale,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EtaResult object, {
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
    required EtaResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'record':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(KinematicState),
                  )
                  as KinematicState;
          result.record.replace(valueDes);
          break;
        case r'target':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EtaResultTarget),
                  )
                  as EtaResultTarget;
          result.target.replace(valueDes);
          break;
        case r'distanceMeters':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.distanceMeters = valueDes;
          break;
        case r'bearingDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bearingDeg = valueDes;
          break;
        case r'bearingDiffDeg':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bearingDiffDeg = valueDes;
          break;
        case r'approaching':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.approaching = valueDes;
          break;
        case r'etaSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.etaSeconds = valueDes;
          break;
        case r'etaAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.etaAt = valueDes;
          break;
        case r'asOf':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.asOf = valueDes;
          break;
        case r'stale':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool;
          result.stale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EtaResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EtaResultBuilder();
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
