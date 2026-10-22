//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_versus_observed_narratives_inner.g.dart';

/// Notable narrative
///
/// Properties:
/// * [narrativeId] - ULID identifier
/// * [title]
/// * [status]
/// * [situationId] - ULID identifier
@BuiltValue()
abstract class SocialVersusObservedNarrativesInner
    implements
        Built<SocialVersusObservedNarrativesInner,
            SocialVersusObservedNarrativesInnerBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'status')
  SocialVersusObservedNarrativesInnerStatusEnum get status;
  // enum statusEnum {  unassessed,  pending,  corroborated,  unobserved,  contradicted,  mixed,  insufficient-coverage,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String? get situationId;

  SocialVersusObservedNarrativesInner._();

  factory SocialVersusObservedNarrativesInner(
          [void updates(SocialVersusObservedNarrativesInnerBuilder b)]) =
      _$SocialVersusObservedNarrativesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialVersusObservedNarrativesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialVersusObservedNarrativesInner> get serializer =>
      _$SocialVersusObservedNarrativesInnerSerializer();
}

class _$SocialVersusObservedNarrativesInnerSerializer
    implements PrimitiveSerializer<SocialVersusObservedNarrativesInner> {
  @override
  final Iterable<Type> types = const [
    SocialVersusObservedNarrativesInner,
    _$SocialVersusObservedNarrativesInner
  ];

  @override
  final String wireName = r'SocialVersusObservedNarrativesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialVersusObservedNarrativesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType:
          const FullType(SocialVersusObservedNarrativesInnerStatusEnum),
    );
    if (object.situationId != null) {
      yield r'situationId';
      yield serializers.serialize(
        object.situationId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialVersusObservedNarrativesInner object, {
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
    required SocialVersusObservedNarrativesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narrativeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narrativeId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SocialVersusObservedNarrativesInnerStatusEnum),
          ) as SocialVersusObservedNarrativesInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'situationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.situationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialVersusObservedNarrativesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialVersusObservedNarrativesInnerBuilder();
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

class SocialVersusObservedNarrativesInnerStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'unassessed')
  static const SocialVersusObservedNarrativesInnerStatusEnum unassessed =
      _$socialVersusObservedNarrativesInnerStatusEnum_unassessed;
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialVersusObservedNarrativesInnerStatusEnum pending =
      _$socialVersusObservedNarrativesInnerStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialVersusObservedNarrativesInnerStatusEnum corroborated =
      _$socialVersusObservedNarrativesInnerStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialVersusObservedNarrativesInnerStatusEnum unobserved =
      _$socialVersusObservedNarrativesInnerStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialVersusObservedNarrativesInnerStatusEnum contradicted =
      _$socialVersusObservedNarrativesInnerStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const SocialVersusObservedNarrativesInnerStatusEnum mixed =
      _$socialVersusObservedNarrativesInnerStatusEnum_mixed;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialVersusObservedNarrativesInnerStatusEnum
      insufficientCoverage =
      _$socialVersusObservedNarrativesInnerStatusEnum_insufficientCoverage;

  static Serializer<SocialVersusObservedNarrativesInnerStatusEnum>
      get serializer =>
          _$socialVersusObservedNarrativesInnerStatusEnumSerializer;

  const SocialVersusObservedNarrativesInnerStatusEnum._(String name)
      : super(name);

  static BuiltSet<SocialVersusObservedNarrativesInnerStatusEnum> get values =>
      _$socialVersusObservedNarrativesInnerStatusEnumValues;
  static SocialVersusObservedNarrativesInnerStatusEnum valueOf(String name) =>
      _$socialVersusObservedNarrativesInnerStatusEnumValueOf(name);
}
