//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/stat_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scorecard_entry_skill.g.dart';

/// Skill 1 − S / S_ref against an out-of-sample reference on the same questions
///
/// Properties:
/// * [value]
/// * [reference] - Reference forecaster (`base-rate` or `climatology`)
/// * [nShared]
/// * [interval]
@BuiltValue()
abstract class ScorecardEntrySkill
    implements Built<ScorecardEntrySkill, ScorecardEntrySkillBuilder> {
  @BuiltValueField(wireName: r'value')
  num get value;

  /// Reference forecaster (`base-rate` or `climatology`)
  @BuiltValueField(wireName: r'reference')
  String get reference;

  @BuiltValueField(wireName: r'nShared')
  int get nShared;

  @BuiltValueField(wireName: r'interval')
  StatInterval? get interval;

  ScorecardEntrySkill._();

  factory ScorecardEntrySkill([void updates(ScorecardEntrySkillBuilder b)]) =
      _$ScorecardEntrySkill;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScorecardEntrySkillBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScorecardEntrySkill> get serializer =>
      _$ScorecardEntrySkillSerializer();
}

class _$ScorecardEntrySkillSerializer
    implements PrimitiveSerializer<ScorecardEntrySkill> {
  @override
  final Iterable<Type> types = const [
    ScorecardEntrySkill,
    _$ScorecardEntrySkill,
  ];

  @override
  final String wireName = r'ScorecardEntrySkill';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScorecardEntrySkill object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(num),
    );
    yield r'reference';
    yield serializers.serialize(
      object.reference,
      specifiedType: const FullType(String),
    );
    yield r'nShared';
    yield serializers.serialize(
      object.nShared,
      specifiedType: const FullType(int),
    );
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType.nullable(StatInterval),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScorecardEntrySkill object, {
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
    required ScorecardEntrySkillBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.value = valueDes;
          break;
        case r'reference':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reference = valueDes;
          break;
        case r'nShared':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nShared = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StatInterval),
                  )
                  as StatInterval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScorecardEntrySkill deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScorecardEntrySkillBuilder();
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
