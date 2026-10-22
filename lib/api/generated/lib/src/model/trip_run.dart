//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/trip_hazard.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trip_run.g.dart';

/// A pre-trip check run (114)
///
/// Properties:
/// * [id] - ULID identifier
/// * [tripId] - ULID identifier
/// * [occurrence]
/// * [status]
/// * [clear] - No hazards found ('route clear')
/// * [hazards]
/// * [briefing] - Markdown trip briefing (029 digest renderer)
/// * [deliveredAt]
/// * [createdAt]
@BuiltValue()
abstract class TripRun implements Built<TripRun, TripRunBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// ULID identifier
  @BuiltValueField(wireName: r'tripId')
  String get tripId;

  @BuiltValueField(wireName: r'occurrence')
  DateTime get occurrence;

  @BuiltValueField(wireName: r'status')
  TripRunStatusEnum get status;
  // enum statusEnum {  delivered,  skipped,  dry-run,  failed,  };

  /// No hazards found ('route clear')
  @BuiltValueField(wireName: r'clear')
  bool get clear;

  @BuiltValueField(wireName: r'hazards')
  BuiltList<TripHazard> get hazards;

  /// Markdown trip briefing (029 digest renderer)
  @BuiltValueField(wireName: r'briefing')
  String? get briefing;

  @BuiltValueField(wireName: r'deliveredAt')
  DateTime? get deliveredAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  TripRun._();

  factory TripRun([void updates(TripRunBuilder b)]) = _$TripRun;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TripRunBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TripRun> get serializer => _$TripRunSerializer();
}

class _$TripRunSerializer implements PrimitiveSerializer<TripRun> {
  @override
  final Iterable<Type> types = const [TripRun, _$TripRun];

  @override
  final String wireName = r'TripRun';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TripRun object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'tripId';
    yield serializers.serialize(
      object.tripId,
      specifiedType: const FullType(String),
    );
    yield r'occurrence';
    yield serializers.serialize(
      object.occurrence,
      specifiedType: const FullType(DateTime),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TripRunStatusEnum),
    );
    yield r'clear';
    yield serializers.serialize(
      object.clear,
      specifiedType: const FullType(bool),
    );
    yield r'hazards';
    yield serializers.serialize(
      object.hazards,
      specifiedType: const FullType(BuiltList, [FullType(TripHazard)]),
    );
    if (object.briefing != null) {
      yield r'briefing';
      yield serializers.serialize(
        object.briefing,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveredAt != null) {
      yield r'deliveredAt';
      yield serializers.serialize(
        object.deliveredAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TripRun object, {
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
    required TripRunBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'tripId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tripId = valueDes;
          break;
        case r'occurrence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.occurrence = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TripRunStatusEnum),
          ) as TripRunStatusEnum;
          result.status = valueDes;
          break;
        case r'clear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.clear = valueDes;
          break;
        case r'hazards':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TripHazard)]),
          ) as BuiltList<TripHazard>;
          result.hazards.replace(valueDes);
          break;
        case r'briefing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.briefing = valueDes;
          break;
        case r'deliveredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.deliveredAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TripRun deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TripRunBuilder();
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

class TripRunStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'delivered')
  static const TripRunStatusEnum delivered = _$tripRunStatusEnum_delivered;
  @BuiltValueEnumConst(wireName: r'skipped')
  static const TripRunStatusEnum skipped = _$tripRunStatusEnum_skipped;
  @BuiltValueEnumConst(wireName: r'dry-run')
  static const TripRunStatusEnum dryRun = _$tripRunStatusEnum_dryRun;
  @BuiltValueEnumConst(wireName: r'failed')
  static const TripRunStatusEnum failed = _$tripRunStatusEnum_failed;

  static Serializer<TripRunStatusEnum> get serializer =>
      _$tripRunStatusEnumSerializer;

  const TripRunStatusEnum._(String name) : super(name);

  static BuiltSet<TripRunStatusEnum> get values => _$tripRunStatusEnumValues;
  static TripRunStatusEnum valueOf(String name) =>
      _$tripRunStatusEnumValueOf(name);
}
