//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_evidence_corroboration.g.dart';

/// 116 corroboration roll-up; echoed reports never count twice
///
/// Properties:
/// * [corroborated]
/// * [uncorroborated]
/// * [unknown]
/// * [notApplicable]
/// * [share]
/// * [uncorroboratedOnly] - True when the situation rests only on uncorroborated text reports
@BuiltValue()
abstract class SituationEvidenceCorroboration
    implements
        Built<SituationEvidenceCorroboration,
            SituationEvidenceCorroborationBuilder> {
  @BuiltValueField(wireName: r'corroborated')
  int get corroborated;

  @BuiltValueField(wireName: r'uncorroborated')
  int get uncorroborated;

  @BuiltValueField(wireName: r'unknown')
  int? get unknown;

  @BuiltValueField(wireName: r'notApplicable')
  int? get notApplicable;

  @BuiltValueField(wireName: r'share')
  num? get share;

  /// True when the situation rests only on uncorroborated text reports
  @BuiltValueField(wireName: r'uncorroboratedOnly')
  bool? get uncorroboratedOnly;

  SituationEvidenceCorroboration._();

  factory SituationEvidenceCorroboration(
          [void updates(SituationEvidenceCorroborationBuilder b)]) =
      _$SituationEvidenceCorroboration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationEvidenceCorroborationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationEvidenceCorroboration> get serializer =>
      _$SituationEvidenceCorroborationSerializer();
}

class _$SituationEvidenceCorroborationSerializer
    implements PrimitiveSerializer<SituationEvidenceCorroboration> {
  @override
  final Iterable<Type> types = const [
    SituationEvidenceCorroboration,
    _$SituationEvidenceCorroboration
  ];

  @override
  final String wireName = r'SituationEvidenceCorroboration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationEvidenceCorroboration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'corroborated';
    yield serializers.serialize(
      object.corroborated,
      specifiedType: const FullType(int),
    );
    yield r'uncorroborated';
    yield serializers.serialize(
      object.uncorroborated,
      specifiedType: const FullType(int),
    );
    if (object.unknown != null) {
      yield r'unknown';
      yield serializers.serialize(
        object.unknown,
        specifiedType: const FullType(int),
      );
    }
    if (object.notApplicable != null) {
      yield r'notApplicable';
      yield serializers.serialize(
        object.notApplicable,
        specifiedType: const FullType(int),
      );
    }
    yield r'share';
    yield object.share == null
        ? null
        : serializers.serialize(
            object.share,
            specifiedType: const FullType.nullable(num),
          );
    if (object.uncorroboratedOnly != null) {
      yield r'uncorroboratedOnly';
      yield serializers.serialize(
        object.uncorroboratedOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationEvidenceCorroboration object, {
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
    required SituationEvidenceCorroborationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corroborated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.corroborated = valueDes;
          break;
        case r'uncorroborated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.uncorroborated = valueDes;
          break;
        case r'unknown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.unknown = valueDes;
          break;
        case r'notApplicable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.notApplicable = valueDes;
          break;
        case r'share':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.share = valueDes;
          break;
        case r'uncorroboratedOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.uncorroboratedOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationEvidenceCorroboration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationEvidenceCorroborationBuilder();
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
