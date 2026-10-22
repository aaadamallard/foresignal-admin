//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hypothesis_review_input_assumptions_inner.g.dart';

/// Assumption status change
///
/// Properties:
/// * [assumptionId] - ULID identifier
/// * [status]
/// * [rationale]
@BuiltValue()
abstract class HypothesisReviewInputAssumptionsInner
    implements
        Built<HypothesisReviewInputAssumptionsInner,
            HypothesisReviewInputAssumptionsInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'assumptionId')
  String get assumptionId;

  @BuiltValueField(wireName: r'status')
  HypothesisReviewInputAssumptionsInnerStatusEnum get status;
  // enum statusEnum {  solid,  caveated,  unsupported,  broken,  };

  @BuiltValueField(wireName: r'rationale')
  String? get rationale;

  HypothesisReviewInputAssumptionsInner._();

  factory HypothesisReviewInputAssumptionsInner(
          [void updates(HypothesisReviewInputAssumptionsInnerBuilder b)]) =
      _$HypothesisReviewInputAssumptionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HypothesisReviewInputAssumptionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HypothesisReviewInputAssumptionsInner> get serializer =>
      _$HypothesisReviewInputAssumptionsInnerSerializer();
}

class _$HypothesisReviewInputAssumptionsInnerSerializer
    implements PrimitiveSerializer<HypothesisReviewInputAssumptionsInner> {
  @override
  final Iterable<Type> types = const [
    HypothesisReviewInputAssumptionsInner,
    _$HypothesisReviewInputAssumptionsInner
  ];

  @override
  final String wireName = r'HypothesisReviewInputAssumptionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HypothesisReviewInputAssumptionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assumptionId';
    yield serializers.serialize(
      object.assumptionId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType:
          const FullType(HypothesisReviewInputAssumptionsInnerStatusEnum),
    );
    if (object.rationale != null) {
      yield r'rationale';
      yield serializers.serialize(
        object.rationale,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HypothesisReviewInputAssumptionsInner object, {
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
    required HypothesisReviewInputAssumptionsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assumptionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assumptionId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(HypothesisReviewInputAssumptionsInnerStatusEnum),
          ) as HypothesisReviewInputAssumptionsInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'rationale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rationale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HypothesisReviewInputAssumptionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HypothesisReviewInputAssumptionsInnerBuilder();
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

class HypothesisReviewInputAssumptionsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'solid')
  static const HypothesisReviewInputAssumptionsInnerStatusEnum solid =
      _$hypothesisReviewInputAssumptionsInnerStatusEnum_solid;
  @BuiltValueEnumConst(wireName: r'caveated')
  static const HypothesisReviewInputAssumptionsInnerStatusEnum caveated =
      _$hypothesisReviewInputAssumptionsInnerStatusEnum_caveated;
  @BuiltValueEnumConst(wireName: r'unsupported')
  static const HypothesisReviewInputAssumptionsInnerStatusEnum unsupported =
      _$hypothesisReviewInputAssumptionsInnerStatusEnum_unsupported;
  @BuiltValueEnumConst(wireName: r'broken')
  static const HypothesisReviewInputAssumptionsInnerStatusEnum broken =
      _$hypothesisReviewInputAssumptionsInnerStatusEnum_broken;

  static Serializer<HypothesisReviewInputAssumptionsInnerStatusEnum>
      get serializer =>
          _$hypothesisReviewInputAssumptionsInnerStatusEnumSerializer;

  const HypothesisReviewInputAssumptionsInnerStatusEnum._(String name)
      : super(name);

  static BuiltSet<HypothesisReviewInputAssumptionsInnerStatusEnum> get values =>
      _$hypothesisReviewInputAssumptionsInnerStatusEnumValues;
  static HypothesisReviewInputAssumptionsInnerStatusEnum valueOf(String name) =>
      _$hypothesisReviewInputAssumptionsInnerStatusEnumValueOf(name);
}
