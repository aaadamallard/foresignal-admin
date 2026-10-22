//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regional_index_def_skill.g.dart';

/// Latest out-of-sample skill of the index's implied count forecast
///
/// Properties:
/// * [evaluatedAt]
/// * [n]
/// * [pinballLoss]
/// * [logScore]
/// * [baselinePinballLoss]
/// * [baselineLogScore]
/// * [skillPinball]
/// * [skillLog]
/// * [baseline]
@BuiltValue()
abstract class RegionalIndexDefSkill
    implements Built<RegionalIndexDefSkill, RegionalIndexDefSkillBuilder> {
  @BuiltValueField(wireName: r'evaluatedAt')
  DateTime get evaluatedAt;

  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'pinballLoss')
  num? get pinballLoss;

  @BuiltValueField(wireName: r'logScore')
  num? get logScore;

  @BuiltValueField(wireName: r'baselinePinballLoss')
  num? get baselinePinballLoss;

  @BuiltValueField(wireName: r'baselineLogScore')
  num? get baselineLogScore;

  @BuiltValueField(wireName: r'skillPinball')
  num? get skillPinball;

  @BuiltValueField(wireName: r'skillLog')
  num? get skillLog;

  @BuiltValueField(wireName: r'baseline')
  String? get baseline;

  RegionalIndexDefSkill._();

  factory RegionalIndexDefSkill(
      [void updates(RegionalIndexDefSkillBuilder b)]) = _$RegionalIndexDefSkill;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionalIndexDefSkillBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionalIndexDefSkill> get serializer =>
      _$RegionalIndexDefSkillSerializer();
}

class _$RegionalIndexDefSkillSerializer
    implements PrimitiveSerializer<RegionalIndexDefSkill> {
  @override
  final Iterable<Type> types = const [
    RegionalIndexDefSkill,
    _$RegionalIndexDefSkill
  ];

  @override
  final String wireName = r'RegionalIndexDefSkill';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionalIndexDefSkill object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'evaluatedAt';
    yield serializers.serialize(
      object.evaluatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'n';
    yield serializers.serialize(
      object.n,
      specifiedType: const FullType(int),
    );
    if (object.pinballLoss != null) {
      yield r'pinballLoss';
      yield serializers.serialize(
        object.pinballLoss,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.logScore != null) {
      yield r'logScore';
      yield serializers.serialize(
        object.logScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baselinePinballLoss != null) {
      yield r'baselinePinballLoss';
      yield serializers.serialize(
        object.baselinePinballLoss,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baselineLogScore != null) {
      yield r'baselineLogScore';
      yield serializers.serialize(
        object.baselineLogScore,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.skillPinball != null) {
      yield r'skillPinball';
      yield serializers.serialize(
        object.skillPinball,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.skillLog != null) {
      yield r'skillLog';
      yield serializers.serialize(
        object.skillLog,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.baseline != null) {
      yield r'baseline';
      yield serializers.serialize(
        object.baseline,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionalIndexDefSkill object, {
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
    required RegionalIndexDefSkillBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evaluatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.evaluatedAt = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.n = valueDes;
          break;
        case r'pinballLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pinballLoss = valueDes;
          break;
        case r'logScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.logScore = valueDes;
          break;
        case r'baselinePinballLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baselinePinballLoss = valueDes;
          break;
        case r'baselineLogScore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.baselineLogScore = valueDes;
          break;
        case r'skillPinball':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.skillPinball = valueDes;
          break;
        case r'skillLog':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.skillLog = valueDes;
          break;
        case r'baseline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseline = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionalIndexDefSkill deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionalIndexDefSkillBuilder();
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
