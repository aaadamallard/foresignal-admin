//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'situation_brief_status.g.dart';

/// Accepted brief regeneration request
///
/// Properties:
/// * [situationId] - ULID identifier
/// * [status]
/// * [requestedAt]
/// * [previousBriefGeneratedAt]
@BuiltValue()
abstract class SituationBriefStatus
    implements Built<SituationBriefStatus, SituationBriefStatusBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'situationId')
  String get situationId;

  @BuiltValueField(wireName: r'status')
  SituationBriefStatusStatusEnum get status;
  // enum statusEnum {  queued,  running,  };

  @BuiltValueField(wireName: r'requestedAt')
  DateTime get requestedAt;

  @BuiltValueField(wireName: r'previousBriefGeneratedAt')
  DateTime? get previousBriefGeneratedAt;

  SituationBriefStatus._();

  factory SituationBriefStatus([void updates(SituationBriefStatusBuilder b)]) =
      _$SituationBriefStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SituationBriefStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SituationBriefStatus> get serializer =>
      _$SituationBriefStatusSerializer();
}

class _$SituationBriefStatusSerializer
    implements PrimitiveSerializer<SituationBriefStatus> {
  @override
  final Iterable<Type> types = const [
    SituationBriefStatus,
    _$SituationBriefStatus,
  ];

  @override
  final String wireName = r'SituationBriefStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SituationBriefStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'situationId';
    yield serializers.serialize(
      object.situationId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SituationBriefStatusStatusEnum),
    );
    yield r'requestedAt';
    yield serializers.serialize(
      object.requestedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.previousBriefGeneratedAt != null) {
      yield r'previousBriefGeneratedAt';
      yield serializers.serialize(
        object.previousBriefGeneratedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SituationBriefStatus object, {
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
    required SituationBriefStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'situationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.situationId = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      SituationBriefStatusStatusEnum,
                    ),
                  )
                  as SituationBriefStatusStatusEnum;
          result.status = valueDes;
          break;
        case r'requestedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.requestedAt = valueDes;
          break;
        case r'previousBriefGeneratedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.previousBriefGeneratedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SituationBriefStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SituationBriefStatusBuilder();
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

class SituationBriefStatusStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'queued')
  static const SituationBriefStatusStatusEnum queued =
      _$situationBriefStatusStatusEnum_queued;
  @BuiltValueEnumConst(wireName: r'running')
  static const SituationBriefStatusStatusEnum running =
      _$situationBriefStatusStatusEnum_running;

  static Serializer<SituationBriefStatusStatusEnum> get serializer =>
      _$situationBriefStatusStatusEnumSerializer;

  const SituationBriefStatusStatusEnum._(String name) : super(name);

  static BuiltSet<SituationBriefStatusStatusEnum> get values =>
      _$situationBriefStatusStatusEnumValues;
  static SituationBriefStatusStatusEnum valueOf(String name) =>
      _$situationBriefStatusStatusEnumValueOf(name);
}
