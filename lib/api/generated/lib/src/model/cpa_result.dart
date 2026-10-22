//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/kinematic_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cpa_result.g.dart';

/// Closest point of approach under constant velocity (114)
///
/// Properties:
/// * [a]
/// * [b]
/// * [t0] - Common time max(observedAt)
/// * [tcpaSeconds] - Clamped to [0, horizon]
/// * [cpaAt]
/// * [dcpaMeters]
/// * [verticalSeparationM] - When both states have altitude
/// * [horizon] - Search horizon. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
/// * [asOf]
/// * [stale]
@BuiltValue()
abstract class CpaResult implements Built<CpaResult, CpaResultBuilder> {
  @BuiltValueField(wireName: r'a')
  KinematicState get a;

  @BuiltValueField(wireName: r'b')
  KinematicState get b;

  /// Common time max(observedAt)
  @BuiltValueField(wireName: r't0')
  DateTime get t0;

  /// Clamped to [0, horizon]
  @BuiltValueField(wireName: r'tcpaSeconds')
  num get tcpaSeconds;

  @BuiltValueField(wireName: r'cpaAt')
  DateTime get cpaAt;

  @BuiltValueField(wireName: r'dcpaMeters')
  num get dcpaMeters;

  /// When both states have altitude
  @BuiltValueField(wireName: r'verticalSeparationM')
  num? get verticalSeparationM;

  /// Search horizon. ISO-8601 duration (P7D, PT15M) or shorthand (7d, 15m, 12h).
  @BuiltValueField(wireName: r'horizon')
  String? get horizon;

  @BuiltValueField(wireName: r'asOf')
  DateTime get asOf;

  @BuiltValueField(wireName: r'stale')
  bool get stale;

  CpaResult._();

  factory CpaResult([void updates(CpaResultBuilder b)]) = _$CpaResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CpaResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CpaResult> get serializer => _$CpaResultSerializer();
}

class _$CpaResultSerializer implements PrimitiveSerializer<CpaResult> {
  @override
  final Iterable<Type> types = const [CpaResult, _$CpaResult];

  @override
  final String wireName = r'CpaResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CpaResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'a';
    yield serializers.serialize(
      object.a,
      specifiedType: const FullType(KinematicState),
    );
    yield r'b';
    yield serializers.serialize(
      object.b,
      specifiedType: const FullType(KinematicState),
    );
    yield r't0';
    yield serializers.serialize(
      object.t0,
      specifiedType: const FullType(DateTime),
    );
    yield r'tcpaSeconds';
    yield serializers.serialize(
      object.tcpaSeconds,
      specifiedType: const FullType(num),
    );
    yield r'cpaAt';
    yield serializers.serialize(
      object.cpaAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'dcpaMeters';
    yield serializers.serialize(
      object.dcpaMeters,
      specifiedType: const FullType(num),
    );
    if (object.verticalSeparationM != null) {
      yield r'verticalSeparationM';
      yield serializers.serialize(
        object.verticalSeparationM,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.horizon != null) {
      yield r'horizon';
      yield serializers.serialize(
        object.horizon,
        specifiedType: const FullType(String),
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
    CpaResult object, {
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
    required CpaResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'a':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(KinematicState),
                  )
                  as KinematicState;
          result.a.replace(valueDes);
          break;
        case r'b':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(KinematicState),
                  )
                  as KinematicState;
          result.b.replace(valueDes);
          break;
        case r't0':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.t0 = valueDes;
          break;
        case r'tcpaSeconds':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.tcpaSeconds = valueDes;
          break;
        case r'cpaAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.cpaAt = valueDes;
          break;
        case r'dcpaMeters':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.dcpaMeters = valueDes;
          break;
        case r'verticalSeparationM':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.verticalSeparationM = valueDes;
          break;
        case r'horizon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.horizon = valueDes;
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
  CpaResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CpaResultBuilder();
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
