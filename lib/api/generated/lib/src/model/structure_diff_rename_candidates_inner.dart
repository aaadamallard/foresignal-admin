//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'structure_diff_rename_candidates_inner.g.dart';

/// Removed/added path pair under the same parent
///
/// Properties:
/// * [from]
/// * [to]
/// * [score]
/// * [reason]
/// * [readByParser]
@BuiltValue()
abstract class StructureDiffRenameCandidatesInner
    implements
        Built<
          StructureDiffRenameCandidatesInner,
          StructureDiffRenameCandidatesInnerBuilder
        > {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'score')
  num get score;

  @BuiltValueField(wireName: r'reason')
  StructureDiffRenameCandidatesInnerReasonEnum get reason;
  // enum reasonEnum {  name-similarity,  snake-camel,  value-distribution,  };

  @BuiltValueField(wireName: r'readByParser')
  bool? get readByParser;

  StructureDiffRenameCandidatesInner._();

  factory StructureDiffRenameCandidatesInner([
    void updates(StructureDiffRenameCandidatesInnerBuilder b),
  ]) = _$StructureDiffRenameCandidatesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StructureDiffRenameCandidatesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StructureDiffRenameCandidatesInner> get serializer =>
      _$StructureDiffRenameCandidatesInnerSerializer();
}

class _$StructureDiffRenameCandidatesInnerSerializer
    implements PrimitiveSerializer<StructureDiffRenameCandidatesInner> {
  @override
  final Iterable<Type> types = const [
    StructureDiffRenameCandidatesInner,
    _$StructureDiffRenameCandidatesInner,
  ];

  @override
  final String wireName = r'StructureDiffRenameCandidatesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StructureDiffRenameCandidatesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(num),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(
        StructureDiffRenameCandidatesInnerReasonEnum,
      ),
    );
    if (object.readByParser != null) {
      yield r'readByParser';
      yield serializers.serialize(
        object.readByParser,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StructureDiffRenameCandidatesInner object, {
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
    required StructureDiffRenameCandidatesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.to = valueDes;
          break;
        case r'score':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.score = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      StructureDiffRenameCandidatesInnerReasonEnum,
                    ),
                  )
                  as StructureDiffRenameCandidatesInnerReasonEnum;
          result.reason = valueDes;
          break;
        case r'readByParser':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.readByParser = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StructureDiffRenameCandidatesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructureDiffRenameCandidatesInnerBuilder();
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

class StructureDiffRenameCandidatesInnerReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'name-similarity')
  static const StructureDiffRenameCandidatesInnerReasonEnum nameSimilarity =
      _$structureDiffRenameCandidatesInnerReasonEnum_nameSimilarity;
  @BuiltValueEnumConst(wireName: r'snake-camel')
  static const StructureDiffRenameCandidatesInnerReasonEnum snakeCamel =
      _$structureDiffRenameCandidatesInnerReasonEnum_snakeCamel;
  @BuiltValueEnumConst(wireName: r'value-distribution')
  static const StructureDiffRenameCandidatesInnerReasonEnum valueDistribution =
      _$structureDiffRenameCandidatesInnerReasonEnum_valueDistribution;

  static Serializer<StructureDiffRenameCandidatesInnerReasonEnum>
  get serializer => _$structureDiffRenameCandidatesInnerReasonEnumSerializer;

  const StructureDiffRenameCandidatesInnerReasonEnum._(String name)
    : super(name);

  static BuiltSet<StructureDiffRenameCandidatesInnerReasonEnum> get values =>
      _$structureDiffRenameCandidatesInnerReasonEnumValues;
  static StructureDiffRenameCandidatesInnerReasonEnum valueOf(String name) =>
      _$structureDiffRenameCandidatesInnerReasonEnumValueOf(name);
}
