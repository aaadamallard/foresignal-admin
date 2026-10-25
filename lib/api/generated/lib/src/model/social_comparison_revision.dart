//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison_revision.g.dart';

/// One revision of a comparison as late evidence arrives
///
/// Properties:
/// * [revision]
/// * [at]
/// * [status]
/// * [previousStatus]
/// * [reason]
/// * [physicalEvidenceRefs]
/// * [manifestId] - ULID identifier
@BuiltValue()
abstract class SocialComparisonRevision
    implements
        Built<SocialComparisonRevision, SocialComparisonRevisionBuilder> {
  @BuiltValueField(wireName: r'revision')
  int get revision;

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  @BuiltValueField(wireName: r'status')
  SocialComparisonRevisionStatusEnum get status;
  // enum statusEnum {  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'previousStatus')
  SocialComparisonRevisionPreviousStatusEnum? get previousStatus;
  // enum previousStatusEnum {  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'physicalEvidenceRefs')
  BuiltList<String>? get physicalEvidenceRefs;

  /// ULID identifier
  @BuiltValueField(wireName: r'manifestId')
  String? get manifestId;

  SocialComparisonRevision._();

  factory SocialComparisonRevision([
    void updates(SocialComparisonRevisionBuilder b),
  ]) = _$SocialComparisonRevision;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonRevisionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparisonRevision> get serializer =>
      _$SocialComparisonRevisionSerializer();
}

class _$SocialComparisonRevisionSerializer
    implements PrimitiveSerializer<SocialComparisonRevision> {
  @override
  final Iterable<Type> types = const [
    SocialComparisonRevision,
    _$SocialComparisonRevision,
  ];

  @override
  final String wireName = r'SocialComparisonRevision';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparisonRevision object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SocialComparisonRevisionStatusEnum),
    );
    if (object.previousStatus != null) {
      yield r'previousStatus';
      yield serializers.serialize(
        object.previousStatus,
        specifiedType: const FullType.nullable(
          SocialComparisonRevisionPreviousStatusEnum,
        ),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.physicalEvidenceRefs != null) {
      yield r'physicalEvidenceRefs';
      yield serializers.serialize(
        object.physicalEvidenceRefs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.manifestId != null) {
      yield r'manifestId';
      yield serializers.serialize(
        object.manifestId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonRevision object, {
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
    required SocialComparisonRevisionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revision':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.revision = valueDes;
          break;
        case r'at':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.at = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SocialComparisonRevisionStatusEnum,
                    ),
                  )
                  as SocialComparisonRevisionStatusEnum;
          result.status = valueDes;
          break;
        case r'previousStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialComparisonRevisionPreviousStatusEnum,
                    ),
                  )
                  as SocialComparisonRevisionPreviousStatusEnum?;
          if (valueDes == null) continue;
          result.previousStatus = valueDes;
          break;
        case r'reason':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.reason = valueDes;
          break;
        case r'physicalEvidenceRefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.physicalEvidenceRefs.replace(valueDes);
          break;
        case r'manifestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.manifestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialComparisonRevision deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonRevisionBuilder();
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

class SocialComparisonRevisionStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialComparisonRevisionStatusEnum pending =
      _$socialComparisonRevisionStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialComparisonRevisionStatusEnum corroborated =
      _$socialComparisonRevisionStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialComparisonRevisionStatusEnum unobserved =
      _$socialComparisonRevisionStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialComparisonRevisionStatusEnum contradicted =
      _$socialComparisonRevisionStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialComparisonRevisionStatusEnum insufficientCoverage =
      _$socialComparisonRevisionStatusEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonRevisionStatusEnum unknownDefaultOpenApi =
      _$socialComparisonRevisionStatusEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonRevisionStatusEnum> get serializer =>
      _$socialComparisonRevisionStatusEnumSerializer;

  const SocialComparisonRevisionStatusEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonRevisionStatusEnum> get values =>
      _$socialComparisonRevisionStatusEnumValues;
  static SocialComparisonRevisionStatusEnum valueOf(String name) =>
      _$socialComparisonRevisionStatusEnumValueOf(name);
}

class SocialComparisonRevisionPreviousStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialComparisonRevisionPreviousStatusEnum pending =
      _$socialComparisonRevisionPreviousStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialComparisonRevisionPreviousStatusEnum corroborated =
      _$socialComparisonRevisionPreviousStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialComparisonRevisionPreviousStatusEnum unobserved =
      _$socialComparisonRevisionPreviousStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialComparisonRevisionPreviousStatusEnum contradicted =
      _$socialComparisonRevisionPreviousStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialComparisonRevisionPreviousStatusEnum insufficientCoverage =
      _$socialComparisonRevisionPreviousStatusEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonRevisionPreviousStatusEnum
  unknownDefaultOpenApi =
      _$socialComparisonRevisionPreviousStatusEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonRevisionPreviousStatusEnum>
  get serializer => _$socialComparisonRevisionPreviousStatusEnumSerializer;

  const SocialComparisonRevisionPreviousStatusEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonRevisionPreviousStatusEnum> get values =>
      _$socialComparisonRevisionPreviousStatusEnumValues;
  static SocialComparisonRevisionPreviousStatusEnum valueOf(String name) =>
      _$socialComparisonRevisionPreviousStatusEnumValueOf(name);
}
