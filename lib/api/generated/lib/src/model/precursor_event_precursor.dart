//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'precursor_event_precursor.g.dart';

/// Precursor summary
///
/// Properties:
/// * [id] - ULID identifier
/// * [kind]
/// * [status]
/// * [statusReason]
/// * [description]
/// * [lift]
@BuiltValue()
abstract class PrecursorEventPrecursor
    implements Built<PrecursorEventPrecursor, PrecursorEventPrecursorBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'kind')
  PrecursorEventPrecursorKindEnum get kind;
  // enum kindEnum {  event,  series,  };

  @BuiltValueField(wireName: r'status')
  PrecursorEventPrecursorStatusEnum get status;
  // enum statusEnum {  candidate,  validated,  stale,  retired,  };

  @BuiltValueField(wireName: r'statusReason')
  String? get statusReason;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'lift')
  num? get lift;

  PrecursorEventPrecursor._();

  factory PrecursorEventPrecursor(
          [void updates(PrecursorEventPrecursorBuilder b)]) =
      _$PrecursorEventPrecursor;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrecursorEventPrecursorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrecursorEventPrecursor> get serializer =>
      _$PrecursorEventPrecursorSerializer();
}

class _$PrecursorEventPrecursorSerializer
    implements PrimitiveSerializer<PrecursorEventPrecursor> {
  @override
  final Iterable<Type> types = const [
    PrecursorEventPrecursor,
    _$PrecursorEventPrecursor
  ];

  @override
  final String wireName = r'PrecursorEventPrecursor';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrecursorEventPrecursor object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(PrecursorEventPrecursorKindEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PrecursorEventPrecursorStatusEnum),
    );
    if (object.statusReason != null) {
      yield r'statusReason';
      yield serializers.serialize(
        object.statusReason,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.lift != null) {
      yield r'lift';
      yield serializers.serialize(
        object.lift,
        specifiedType: const FullType.nullable(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrecursorEventPrecursor object, {
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
    required PrecursorEventPrecursorBuilder result,
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
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorEventPrecursorKindEnum),
          ) as PrecursorEventPrecursorKindEnum;
          result.kind = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrecursorEventPrecursorStatusEnum),
          ) as PrecursorEventPrecursorStatusEnum;
          result.status = valueDes;
          break;
        case r'statusReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.statusReason = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'lift':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lift = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrecursorEventPrecursor deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrecursorEventPrecursorBuilder();
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

class PrecursorEventPrecursorKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'event')
  static const PrecursorEventPrecursorKindEnum event =
      _$precursorEventPrecursorKindEnum_event;
  @BuiltValueEnumConst(wireName: r'series')
  static const PrecursorEventPrecursorKindEnum series =
      _$precursorEventPrecursorKindEnum_series;

  static Serializer<PrecursorEventPrecursorKindEnum> get serializer =>
      _$precursorEventPrecursorKindEnumSerializer;

  const PrecursorEventPrecursorKindEnum._(String name) : super(name);

  static BuiltSet<PrecursorEventPrecursorKindEnum> get values =>
      _$precursorEventPrecursorKindEnumValues;
  static PrecursorEventPrecursorKindEnum valueOf(String name) =>
      _$precursorEventPrecursorKindEnumValueOf(name);
}

class PrecursorEventPrecursorStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'candidate')
  static const PrecursorEventPrecursorStatusEnum candidate =
      _$precursorEventPrecursorStatusEnum_candidate;
  @BuiltValueEnumConst(wireName: r'validated')
  static const PrecursorEventPrecursorStatusEnum validated =
      _$precursorEventPrecursorStatusEnum_validated;
  @BuiltValueEnumConst(wireName: r'stale')
  static const PrecursorEventPrecursorStatusEnum stale =
      _$precursorEventPrecursorStatusEnum_stale;
  @BuiltValueEnumConst(wireName: r'retired')
  static const PrecursorEventPrecursorStatusEnum retired =
      _$precursorEventPrecursorStatusEnum_retired;

  static Serializer<PrecursorEventPrecursorStatusEnum> get serializer =>
      _$precursorEventPrecursorStatusEnumSerializer;

  const PrecursorEventPrecursorStatusEnum._(String name) : super(name);

  static BuiltSet<PrecursorEventPrecursorStatusEnum> get values =>
      _$precursorEventPrecursorStatusEnumValues;
  static PrecursorEventPrecursorStatusEnum valueOf(String name) =>
      _$precursorEventPrecursorStatusEnumValueOf(name);
}
