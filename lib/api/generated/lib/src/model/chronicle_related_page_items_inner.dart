//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/opaque_chronicle_link.dart';
import 'package:foresignal_api/src/model/object_envelope.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/chronicle_link_scores.dart';
import 'package:foresignal_api/src/model/chronicle_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'chronicle_related_page_items_inner.g.dart';

/// ChronicleRelatedPageItemsInner
///
/// Properties:
/// * [linkId] - ULID identifier
/// * [disclosure]
/// * [a] - Local chronicle id
/// * [b] - Local chronicle id or `remote:{instanceId}/chronicle:{sketchId}`
/// * [other]
/// * [strength] - From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
/// * [dimensions]
/// * [scores]
/// * [temporal]
/// * [timeOverlap]
/// * [sharedSituations]
/// * [sharedCanonicalEvents] - Computed exactly from both key sets (capped)
/// * [sharedEntities]
/// * [sharedKeyCount]
/// * [status]
/// * [firstFound]
/// * [lastUpdated]
/// * [chronicleId] - The caller's own chronicle in this link
/// * [remote]
/// * [ownerHandle]
/// * [title]
/// * [accessRequestStatus]
@BuiltValue()
abstract class ChronicleRelatedPageItemsInner
    implements
        Built<ChronicleRelatedPageItemsInner,
            ChronicleRelatedPageItemsInnerBuilder> {
  /// One Of [ChronicleLink], [OpaqueChronicleLink]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'disclosure';

  static const Map<String, Type> discriminatorMapping = {
    r'full': ChronicleLink,
    r'opaque': OpaqueChronicleLink,
  };

  ChronicleRelatedPageItemsInner._();

  factory ChronicleRelatedPageItemsInner(
          [void updates(ChronicleRelatedPageItemsInnerBuilder b)]) =
      _$ChronicleRelatedPageItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChronicleRelatedPageItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChronicleRelatedPageItemsInner> get serializer =>
      _$ChronicleRelatedPageItemsInnerSerializer();
}

extension ChronicleRelatedPageItemsInnerDiscriminatorExt
    on ChronicleRelatedPageItemsInner {
  String? get discriminatorValue {
    if (this is ChronicleLink) {
      return r'full';
    }
    if (this is OpaqueChronicleLink) {
      return r'opaque';
    }
    return null;
  }
}

extension ChronicleRelatedPageItemsInnerBuilderDiscriminatorExt
    on ChronicleRelatedPageItemsInnerBuilder {
  String? get discriminatorValue {
    if (this is ChronicleLinkBuilder) {
      return r'full';
    }
    if (this is OpaqueChronicleLinkBuilder) {
      return r'opaque';
    }
    return null;
  }
}

class _$ChronicleRelatedPageItemsInnerSerializer
    implements PrimitiveSerializer<ChronicleRelatedPageItemsInner> {
  @override
  final Iterable<Type> types = const [
    ChronicleRelatedPageItemsInner,
    _$ChronicleRelatedPageItemsInner
  ];

  @override
  final String wireName = r'ChronicleRelatedPageItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChronicleRelatedPageItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ChronicleRelatedPageItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ChronicleRelatedPageItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChronicleRelatedPageItemsInnerBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList
            .indexOf(ChronicleRelatedPageItemsInner.discriminatorFieldName) +
        1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      ChronicleLink,
      OpaqueChronicleLink,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'full':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(ChronicleLink),
        ) as ChronicleLink;
        oneOfType = ChronicleLink;
        break;
      case r'opaque':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OpaqueChronicleLink),
        ) as OpaqueChronicleLink;
        oneOfType = OpaqueChronicleLink;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class ChronicleRelatedPageItemsInnerDisclosureEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'opaque')
  static const ChronicleRelatedPageItemsInnerDisclosureEnum opaque =
      _$chronicleRelatedPageItemsInnerDisclosureEnum_opaque;

  static Serializer<ChronicleRelatedPageItemsInnerDisclosureEnum>
      get serializer =>
          _$chronicleRelatedPageItemsInnerDisclosureEnumSerializer;

  const ChronicleRelatedPageItemsInnerDisclosureEnum._(String name)
      : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerDisclosureEnum> get values =>
      _$chronicleRelatedPageItemsInnerDisclosureEnumValues;
  static ChronicleRelatedPageItemsInnerDisclosureEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerDisclosureEnumValueOf(name);
}

/// From estimated Jaccard: low < 0.1 ≤ medium < 0.3 ≤ high
class ChronicleRelatedPageItemsInnerStrengthEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'low')
  static const ChronicleRelatedPageItemsInnerStrengthEnum low =
      _$chronicleRelatedPageItemsInnerStrengthEnum_low;
  @BuiltValueEnumConst(wireName: r'medium')
  static const ChronicleRelatedPageItemsInnerStrengthEnum medium =
      _$chronicleRelatedPageItemsInnerStrengthEnum_medium;
  @BuiltValueEnumConst(wireName: r'high')
  static const ChronicleRelatedPageItemsInnerStrengthEnum high =
      _$chronicleRelatedPageItemsInnerStrengthEnum_high;

  static Serializer<ChronicleRelatedPageItemsInnerStrengthEnum>
      get serializer => _$chronicleRelatedPageItemsInnerStrengthEnumSerializer;

  const ChronicleRelatedPageItemsInnerStrengthEnum._(String name) : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerStrengthEnum> get values =>
      _$chronicleRelatedPageItemsInnerStrengthEnumValues;
  static ChronicleRelatedPageItemsInnerStrengthEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerStrengthEnumValueOf(name);
}

class ChronicleRelatedPageItemsInnerDimensionsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'evidence')
  static const ChronicleRelatedPageItemsInnerDimensionsEnum evidence =
      _$chronicleRelatedPageItemsInnerDimensionsEnum_evidence;
  @BuiltValueEnumConst(wireName: r'entities')
  static const ChronicleRelatedPageItemsInnerDimensionsEnum entities =
      _$chronicleRelatedPageItemsInnerDimensionsEnum_entities;
  @BuiltValueEnumConst(wireName: r'area-time')
  static const ChronicleRelatedPageItemsInnerDimensionsEnum areaTime =
      _$chronicleRelatedPageItemsInnerDimensionsEnum_areaTime;
  @BuiltValueEnumConst(wireName: r'topics')
  static const ChronicleRelatedPageItemsInnerDimensionsEnum topics =
      _$chronicleRelatedPageItemsInnerDimensionsEnum_topics;

  static Serializer<ChronicleRelatedPageItemsInnerDimensionsEnum>
      get serializer =>
          _$chronicleRelatedPageItemsInnerDimensionsEnumSerializer;

  const ChronicleRelatedPageItemsInnerDimensionsEnum._(String name)
      : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerDimensionsEnum> get values =>
      _$chronicleRelatedPageItemsInnerDimensionsEnumValues;
  static ChronicleRelatedPageItemsInnerDimensionsEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerDimensionsEnumValueOf(name);
}

class ChronicleRelatedPageItemsInnerTemporalEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'a-precedes-b')
  static const ChronicleRelatedPageItemsInnerTemporalEnum aPrecedesB =
      _$chronicleRelatedPageItemsInnerTemporalEnum_aPrecedesB;
  @BuiltValueEnumConst(wireName: r'b-precedes-a')
  static const ChronicleRelatedPageItemsInnerTemporalEnum bPrecedesA =
      _$chronicleRelatedPageItemsInnerTemporalEnum_bPrecedesA;
  @BuiltValueEnumConst(wireName: r'concurrent')
  static const ChronicleRelatedPageItemsInnerTemporalEnum concurrent =
      _$chronicleRelatedPageItemsInnerTemporalEnum_concurrent;

  static Serializer<ChronicleRelatedPageItemsInnerTemporalEnum>
      get serializer => _$chronicleRelatedPageItemsInnerTemporalEnumSerializer;

  const ChronicleRelatedPageItemsInnerTemporalEnum._(String name) : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerTemporalEnum> get values =>
      _$chronicleRelatedPageItemsInnerTemporalEnumValues;
  static ChronicleRelatedPageItemsInnerTemporalEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerTemporalEnumValueOf(name);
}

class ChronicleRelatedPageItemsInnerTimeOverlapEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'none')
  static const ChronicleRelatedPageItemsInnerTimeOverlapEnum none =
      _$chronicleRelatedPageItemsInnerTimeOverlapEnum_none;
  @BuiltValueEnumConst(wireName: r'partial')
  static const ChronicleRelatedPageItemsInnerTimeOverlapEnum partial =
      _$chronicleRelatedPageItemsInnerTimeOverlapEnum_partial;
  @BuiltValueEnumConst(wireName: r'full')
  static const ChronicleRelatedPageItemsInnerTimeOverlapEnum full =
      _$chronicleRelatedPageItemsInnerTimeOverlapEnum_full;

  static Serializer<ChronicleRelatedPageItemsInnerTimeOverlapEnum>
      get serializer =>
          _$chronicleRelatedPageItemsInnerTimeOverlapEnumSerializer;

  const ChronicleRelatedPageItemsInnerTimeOverlapEnum._(String name)
      : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerTimeOverlapEnum> get values =>
      _$chronicleRelatedPageItemsInnerTimeOverlapEnumValues;
  static ChronicleRelatedPageItemsInnerTimeOverlapEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerTimeOverlapEnumValueOf(name);
}

class ChronicleRelatedPageItemsInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'active')
  static const ChronicleRelatedPageItemsInnerStatusEnum active =
      _$chronicleRelatedPageItemsInnerStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'dismissed')
  static const ChronicleRelatedPageItemsInnerStatusEnum dismissed =
      _$chronicleRelatedPageItemsInnerStatusEnum_dismissed;

  static Serializer<ChronicleRelatedPageItemsInnerStatusEnum> get serializer =>
      _$chronicleRelatedPageItemsInnerStatusEnumSerializer;

  const ChronicleRelatedPageItemsInnerStatusEnum._(String name) : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerStatusEnum> get values =>
      _$chronicleRelatedPageItemsInnerStatusEnumValues;
  static ChronicleRelatedPageItemsInnerStatusEnum valueOf(String name) =>
      _$chronicleRelatedPageItemsInnerStatusEnumValueOf(name);
}

class ChronicleRelatedPageItemsInnerAccessRequestStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const ChronicleRelatedPageItemsInnerAccessRequestStatusEnum pending =
      _$chronicleRelatedPageItemsInnerAccessRequestStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'granted')
  static const ChronicleRelatedPageItemsInnerAccessRequestStatusEnum granted =
      _$chronicleRelatedPageItemsInnerAccessRequestStatusEnum_granted;
  @BuiltValueEnumConst(wireName: r'declined')
  static const ChronicleRelatedPageItemsInnerAccessRequestStatusEnum declined =
      _$chronicleRelatedPageItemsInnerAccessRequestStatusEnum_declined;

  static Serializer<ChronicleRelatedPageItemsInnerAccessRequestStatusEnum>
      get serializer =>
          _$chronicleRelatedPageItemsInnerAccessRequestStatusEnumSerializer;

  const ChronicleRelatedPageItemsInnerAccessRequestStatusEnum._(String name)
      : super(name);

  static BuiltSet<ChronicleRelatedPageItemsInnerAccessRequestStatusEnum>
      get values =>
          _$chronicleRelatedPageItemsInnerAccessRequestStatusEnumValues;
  static ChronicleRelatedPageItemsInnerAccessRequestStatusEnum valueOf(
          String name) =>
      _$chronicleRelatedPageItemsInnerAccessRequestStatusEnumValueOf(name);
}
