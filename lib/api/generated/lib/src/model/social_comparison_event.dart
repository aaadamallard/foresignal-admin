//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'social_comparison_event.g.dart';

/// SSE `comparison.updated` (topic `social`): a comparison was created or revised (137)
///
/// Properties:
/// * [event]
/// * [comparisonId] - ULID identifier
/// * [claimId] - ULID identifier
/// * [narrativeId] - ULID identifier
/// * [status]
/// * [previousStatus]
/// * [revision]
/// * [evaluatedAt]
@BuiltValue()
abstract class SocialComparisonEvent
    implements Built<SocialComparisonEvent, SocialComparisonEventBuilder> {
  @BuiltValueField(wireName: r'event')
  SocialComparisonEventEventEnum get event;
  // enum eventEnum {  comparison.updated,  };

  /// ULID identifier
  @BuiltValueField(wireName: r'comparisonId')
  String get comparisonId;

  /// ULID identifier
  @BuiltValueField(wireName: r'claimId')
  String get claimId;

  /// ULID identifier
  @BuiltValueField(wireName: r'narrativeId')
  String get narrativeId;

  @BuiltValueField(wireName: r'status')
  SocialComparisonEventStatusEnum get status;
  // enum statusEnum {  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'previousStatus')
  SocialComparisonEventPreviousStatusEnum? get previousStatus;
  // enum previousStatusEnum {  pending,  corroborated,  unobserved,  contradicted,  insufficient-coverage,  };

  @BuiltValueField(wireName: r'revision')
  int get revision;

  @BuiltValueField(wireName: r'evaluatedAt')
  DateTime get evaluatedAt;

  SocialComparisonEvent._();

  factory SocialComparisonEvent([
    void updates(SocialComparisonEventBuilder b),
  ]) = _$SocialComparisonEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SocialComparisonEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SocialComparisonEvent> get serializer =>
      _$SocialComparisonEventSerializer();
}

class _$SocialComparisonEventSerializer
    implements PrimitiveSerializer<SocialComparisonEvent> {
  @override
  final Iterable<Type> types = const [
    SocialComparisonEvent,
    _$SocialComparisonEvent,
  ];

  @override
  final String wireName = r'SocialComparisonEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SocialComparisonEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'event';
    yield serializers.serialize(
      object.event,
      specifiedType: const FullType(SocialComparisonEventEventEnum),
    );
    yield r'comparisonId';
    yield serializers.serialize(
      object.comparisonId,
      specifiedType: const FullType(String),
    );
    yield r'claimId';
    yield serializers.serialize(
      object.claimId,
      specifiedType: const FullType(String),
    );
    yield r'narrativeId';
    yield serializers.serialize(
      object.narrativeId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SocialComparisonEventStatusEnum),
    );
    if (object.previousStatus != null) {
      yield r'previousStatus';
      yield serializers.serialize(
        object.previousStatus,
        specifiedType: const FullType.nullable(
          SocialComparisonEventPreviousStatusEnum,
        ),
      );
    }
    yield r'revision';
    yield serializers.serialize(
      object.revision,
      specifiedType: const FullType(int),
    );
    yield r'evaluatedAt';
    yield serializers.serialize(
      object.evaluatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SocialComparisonEvent object, {
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
    required SocialComparisonEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SocialComparisonEventEventEnum,
                    ),
                  )
                  as SocialComparisonEventEventEnum;
          result.event = valueDes;
          break;
        case r'comparisonId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.comparisonId = valueDes;
          break;
        case r'claimId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.claimId = valueDes;
          break;
        case r'narrativeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.narrativeId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SocialComparisonEventStatusEnum,
                    ),
                  )
                  as SocialComparisonEventStatusEnum;
          result.status = valueDes;
          break;
        case r'previousStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      SocialComparisonEventPreviousStatusEnum,
                    ),
                  )
                  as SocialComparisonEventPreviousStatusEnum?;
          if (valueDes == null) continue;
          result.previousStatus = valueDes;
          break;
        case r'revision':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.revision = valueDes;
          break;
        case r'evaluatedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.evaluatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SocialComparisonEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SocialComparisonEventBuilder();
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

class SocialComparisonEventEventEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'comparison.updated')
  static const SocialComparisonEventEventEnum comparisonPeriodUpdated =
      _$socialComparisonEventEventEnum_comparisonPeriodUpdated;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonEventEventEnum unknownDefaultOpenApi =
      _$socialComparisonEventEventEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonEventEventEnum> get serializer =>
      _$socialComparisonEventEventEnumSerializer;

  const SocialComparisonEventEventEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonEventEventEnum> get values =>
      _$socialComparisonEventEventEnumValues;
  static SocialComparisonEventEventEnum valueOf(String name) =>
      _$socialComparisonEventEventEnumValueOf(name);
}

class SocialComparisonEventStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialComparisonEventStatusEnum pending =
      _$socialComparisonEventStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialComparisonEventStatusEnum corroborated =
      _$socialComparisonEventStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialComparisonEventStatusEnum unobserved =
      _$socialComparisonEventStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialComparisonEventStatusEnum contradicted =
      _$socialComparisonEventStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialComparisonEventStatusEnum insufficientCoverage =
      _$socialComparisonEventStatusEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonEventStatusEnum unknownDefaultOpenApi =
      _$socialComparisonEventStatusEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonEventStatusEnum> get serializer =>
      _$socialComparisonEventStatusEnumSerializer;

  const SocialComparisonEventStatusEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonEventStatusEnum> get values =>
      _$socialComparisonEventStatusEnumValues;
  static SocialComparisonEventStatusEnum valueOf(String name) =>
      _$socialComparisonEventStatusEnumValueOf(name);
}

class SocialComparisonEventPreviousStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'pending')
  static const SocialComparisonEventPreviousStatusEnum pending =
      _$socialComparisonEventPreviousStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'corroborated')
  static const SocialComparisonEventPreviousStatusEnum corroborated =
      _$socialComparisonEventPreviousStatusEnum_corroborated;
  @BuiltValueEnumConst(wireName: r'unobserved')
  static const SocialComparisonEventPreviousStatusEnum unobserved =
      _$socialComparisonEventPreviousStatusEnum_unobserved;
  @BuiltValueEnumConst(wireName: r'contradicted')
  static const SocialComparisonEventPreviousStatusEnum contradicted =
      _$socialComparisonEventPreviousStatusEnum_contradicted;
  @BuiltValueEnumConst(wireName: r'insufficient-coverage')
  static const SocialComparisonEventPreviousStatusEnum insufficientCoverage =
      _$socialComparisonEventPreviousStatusEnum_insufficientCoverage;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SocialComparisonEventPreviousStatusEnum unknownDefaultOpenApi =
      _$socialComparisonEventPreviousStatusEnum_unknownDefaultOpenApi;

  static Serializer<SocialComparisonEventPreviousStatusEnum> get serializer =>
      _$socialComparisonEventPreviousStatusEnumSerializer;

  const SocialComparisonEventPreviousStatusEnum._(String name) : super(name);

  static BuiltSet<SocialComparisonEventPreviousStatusEnum> get values =>
      _$socialComparisonEventPreviousStatusEnumValues;
  static SocialComparisonEventPreviousStatusEnum valueOf(String name) =>
      _$socialComparisonEventPreviousStatusEnumValueOf(name);
}
