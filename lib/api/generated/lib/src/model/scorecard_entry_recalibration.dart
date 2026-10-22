//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry_recalibration.g.dart';

/// Platt recalibration p' = σ(a · logit p + b)
///
/// Properties:
/// * [a]
/// * [b]
/// * [n]
/// * [fittedAt]
@BuiltValue()
abstract class ScorecardEntryRecalibration
    implements
        Built<ScorecardEntryRecalibration, ScorecardEntryRecalibrationBuilder> {
  @BuiltValueField(wireName: r'a')
  num get a;

  @BuiltValueField(wireName: r'b')
  num get b;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'fittedAt')
  DateTime? get fittedAt;

  ScorecardEntryRecalibration._();

  factory ScorecardEntryRecalibration(
          [void updates(ScorecardEntryRecalibrationBuilder b)]) =
      _$ScorecardEntryRecalibration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntryRecalibrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntryRecalibration> get serializer =>
      _$ScorecardEntryRecalibrationSerializer();
}

class _$ScorecardEntryRecalibrationSerializer
    implements PrimitiveSerializer<ScorecardEntryRecalibration> {
  @override
  final Iterable<Type> types = const [
    ScorecardEntryRecalibration,
    _$ScorecardEntryRecalibration
  ];

  @override
  final String wireName = r'ScorecardEntryRecalibration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntryRecalibration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'a';
    yield serializers.serialize(
      object.a,
      specifiedType: const FullType(num),
    );
    yield r'b';
    yield serializers.serialize(
      object.b,
      specifiedType: const FullType(num),
    );
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
    );
    if (object.fittedAt != null) {
      yield r'fittedAt';
      yield serializers.serialize(
        object.fittedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntryRecalibration object, {
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
    required ScorecardEntryRecalibrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'a':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.a = valueDes;
          break;
        case r'b':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.b = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n = valueDes;
          break;
        case r'fittedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.fittedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntryRecalibration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntryRecalibrationBuilder();
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
