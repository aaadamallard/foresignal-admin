//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revision_driver.g.dart';

/// One driver of a revision and its log-likelihood contribution
///
/// Properties:
/// * [kind]
/// * [id] - Indicator, evidence or base-rate id
/// * [ref] - Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
/// * [hypothesisId] - ULID identifier
/// * [signalFamily]
/// * [lr]
/// * [lnLr]
/// * [pDetect]
/// * [applied] - Log-odds change applied after suppression and damping
/// * [suppressed]
/// * [suppressionReason]
@BuiltValue()
abstract class RevisionDriver
    implements Built<RevisionDriver, RevisionDriverBuilder> {
  @BuiltValueField(wireName: r'kind')
  RevisionDriverKindEnum get kind;
  // enum kindEnum {  indicator,  evidence,  base-rate,  review,  operator,  };

  /// Indicator, evidence or base-rate id
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Canonical object reference `{type}:{id}` (docs/Client-Contract.md §2). Record refs are `record:{sourceId}/{externalId}[@{seq}]` with the external id percent-encoded. Remote refs (132) are `remote:{instanceId}/{type}:{id}`: read-only material received from another instance.
  @BuiltValueField(wireName: r'ref')
  String? get ref;

  /// ULID identifier
  @BuiltValueField(wireName: r'hypothesisId')
  String get hypothesisId;

  @BuiltValueField(wireName: r'signalFamily')
  String? get signalFamily;

  @BuiltValueField(wireName: r'lr')
  num? get lr;

  @BuiltValueField(wireName: r'lnLr')
  num? get lnLr;

  @BuiltValueField(wireName: r'pDetect')
  num? get pDetect;

  /// Log-odds change applied after suppression and damping
  @BuiltValueField(wireName: r'applied')
  num get applied;

  @BuiltValueField(wireName: r'suppressed')
  bool get suppressed;

  @BuiltValueField(wireName: r'suppressionReason')
  RevisionDriverSuppressionReasonEnum? get suppressionReason;
  // enum suppressionReasonEnum {  same-evidence-group,  same-family-day,  damped,  capped,  };

  RevisionDriver._();

  factory RevisionDriver([void updates(RevisionDriverBuilder b)]) =
      _$RevisionDriver;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevisionDriverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevisionDriver> get serializer =>
      _$RevisionDriverSerializer();
}

class _$RevisionDriverSerializer
    implements PrimitiveSerializer<RevisionDriver> {
  @override
  final Iterable<Type> types = const [RevisionDriver, _$RevisionDriver];

  @override
  final String wireName = r'RevisionDriver';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevisionDriver object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(RevisionDriverKindEnum),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ref != null) {
      yield r'ref';
      yield serializers.serialize(
        object.ref,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'hypothesisId';
    yield serializers.serialize(
      object.hypothesisId,
      specifiedType: const FullType(String),
    );
    if (object.signalFamily != null) {
      yield r'signalFamily';
      yield serializers.serialize(
        object.signalFamily,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lr != null) {
      yield r'lr';
      yield serializers.serialize(
        object.lr,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lnLr != null) {
      yield r'lnLr';
      yield serializers.serialize(
        object.lnLr,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.pDetect != null) {
      yield r'pDetect';
      yield serializers.serialize(
        object.pDetect,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'applied';
    yield serializers.serialize(
      object.applied,
      specifiedType: const FullType(num),
    );
    yield r'suppressed';
    yield serializers.serialize(
      object.suppressed,
      specifiedType: const FullType(bool),
    );
    if (object.suppressionReason != null) {
      yield r'suppressionReason';
      yield serializers.serialize(
        object.suppressionReason,
        specifiedType:
            const FullType.nullable(RevisionDriverSuppressionReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RevisionDriver object, {
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
    required RevisionDriverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RevisionDriverKindEnum),
          ) as RevisionDriverKindEnum;
          result.kind = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'ref':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ref = valueDes;
          break;
        case r'hypothesisId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hypothesisId = valueDes;
          break;
        case r'signalFamily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signalFamily = valueDes;
          break;
        case r'lr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lr = valueDes;
          break;
        case r'lnLr':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lnLr = valueDes;
          break;
        case r'pDetect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.pDetect = valueDes;
          break;
        case r'applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.applied = valueDes;
          break;
        case r'suppressed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.suppressed = valueDes;
          break;
        case r'suppressionReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(RevisionDriverSuppressionReasonEnum),
          ) as RevisionDriverSuppressionReasonEnum?;
          if (valueDes == null) continue;
          result.suppressionReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevisionDriver deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevisionDriverBuilder();
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

class RevisionDriverKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'indicator')
  static const RevisionDriverKindEnum indicator =
      _$revisionDriverKindEnum_indicator;
  @BuiltValueEnumConst(wireName: r'evidence')
  static const RevisionDriverKindEnum evidence =
      _$revisionDriverKindEnum_evidence;
  @BuiltValueEnumConst(wireName: r'base-rate')
  static const RevisionDriverKindEnum baseRate =
      _$revisionDriverKindEnum_baseRate;
  @BuiltValueEnumConst(wireName: r'review')
  static const RevisionDriverKindEnum review = _$revisionDriverKindEnum_review;
  @BuiltValueEnumConst(wireName: r'operator')
  static const RevisionDriverKindEnum operator_ =
      _$revisionDriverKindEnum_operator_;

  static Serializer<RevisionDriverKindEnum> get serializer =>
      _$revisionDriverKindEnumSerializer;

  const RevisionDriverKindEnum._(String name) : super(name);

  static BuiltSet<RevisionDriverKindEnum> get values =>
      _$revisionDriverKindEnumValues;
  static RevisionDriverKindEnum valueOf(String name) =>
      _$revisionDriverKindEnumValueOf(name);
}

class RevisionDriverSuppressionReasonEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'same-evidence-group')
  static const RevisionDriverSuppressionReasonEnum sameEvidenceGroup =
      _$revisionDriverSuppressionReasonEnum_sameEvidenceGroup;
  @BuiltValueEnumConst(wireName: r'same-family-day')
  static const RevisionDriverSuppressionReasonEnum sameFamilyDay =
      _$revisionDriverSuppressionReasonEnum_sameFamilyDay;
  @BuiltValueEnumConst(wireName: r'damped')
  static const RevisionDriverSuppressionReasonEnum damped =
      _$revisionDriverSuppressionReasonEnum_damped;
  @BuiltValueEnumConst(wireName: r'capped')
  static const RevisionDriverSuppressionReasonEnum capped =
      _$revisionDriverSuppressionReasonEnum_capped;

  static Serializer<RevisionDriverSuppressionReasonEnum> get serializer =>
      _$revisionDriverSuppressionReasonEnumSerializer;

  const RevisionDriverSuppressionReasonEnum._(String name) : super(name);

  static BuiltSet<RevisionDriverSuppressionReasonEnum> get values =>
      _$revisionDriverSuppressionReasonEnumValues;
  static RevisionDriverSuppressionReasonEnum valueOf(String name) =>
      _$revisionDriverSuppressionReasonEnumValueOf(name);
}
