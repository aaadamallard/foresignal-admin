//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/pol_deviation_stay.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pol_deviation.g.dart';

/// Payload of `pol-deviation` records of the derived source pattern-of-life (114)
///
/// Properties:
/// * [subjectId] - ULID identifier
/// * [subjectRef]
/// * [deviationType]
/// * [at]
/// * [placeId] - ULID identifier
/// * [placeLabel]
/// * [stay]
/// * [hourOfWeek]
/// * [bucketShare] - Share of the place's dwell in this hour-of-week bucket (UNUSUAL_TIME < 0.02; EXPECTED_ABSENT ≥ 0.6)
/// * [lastSeenAt]
@BuiltValue()
abstract class PolDeviation
    implements Built<PolDeviation, PolDeviationBuilder> {
  /// ULID identifier
  @BuiltValueField(wireName: r'subjectId')
  String get subjectId;

  @BuiltValueField(wireName: r'subjectRef')
  String? get subjectRef;

  @BuiltValueField(wireName: r'deviationType')
  PolDeviationDeviationTypeEnum get deviationType;
  // enum deviationTypeEnum {  NEW_PLACE,  UNUSUAL_TIME,  EXPECTED_ABSENT,  };

  @BuiltValueField(wireName: r'at')
  DateTime get at;

  /// ULID identifier
  @BuiltValueField(wireName: r'placeId')
  String? get placeId;

  @BuiltValueField(wireName: r'placeLabel')
  String? get placeLabel;

  @BuiltValueField(wireName: r'stay')
  PolDeviationStay? get stay;

  @BuiltValueField(wireName: r'hourOfWeek')
  int? get hourOfWeek;

  /// Share of the place's dwell in this hour-of-week bucket (UNUSUAL_TIME < 0.02; EXPECTED_ABSENT ≥ 0.6)
  @BuiltValueField(wireName: r'bucketShare')
  num? get bucketShare;

  @BuiltValueField(wireName: r'lastSeenAt')
  DateTime? get lastSeenAt;

  PolDeviation._();

  factory PolDeviation([void updates(PolDeviationBuilder b)]) = _$PolDeviation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PolDeviationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PolDeviation> get serializer => _$PolDeviationSerializer();
}

class _$PolDeviationSerializer implements PrimitiveSerializer<PolDeviation> {
  @override
  final Iterable<Type> types = const [PolDeviation, _$PolDeviation];

  @override
  final String wireName = r'PolDeviation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PolDeviation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'subjectId';
    yield serializers.serialize(
      object.subjectId,
      specifiedType: const FullType(String),
    );
    if (object.subjectRef != null) {
      yield r'subjectRef';
      yield serializers.serialize(
        object.subjectRef,
        specifiedType: const FullType(String),
      );
    }
    yield r'deviationType';
    yield serializers.serialize(
      object.deviationType,
      specifiedType: const FullType(PolDeviationDeviationTypeEnum),
    );
    yield r'at';
    yield serializers.serialize(
      object.at,
      specifiedType: const FullType(DateTime),
    );
    if (object.placeId != null) {
      yield r'placeId';
      yield serializers.serialize(
        object.placeId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.placeLabel != null) {
      yield r'placeLabel';
      yield serializers.serialize(
        object.placeLabel,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.stay != null) {
      yield r'stay';
      yield serializers.serialize(
        object.stay,
        specifiedType: const FullType.nullable(PolDeviationStay),
      );
    }
    if (object.hourOfWeek != null) {
      yield r'hourOfWeek';
      yield serializers.serialize(
        object.hourOfWeek,
        specifiedType: const FullType(int),
      );
    }
    if (object.bucketShare != null) {
      yield r'bucketShare';
      yield serializers.serialize(
        object.bucketShare,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.lastSeenAt != null) {
      yield r'lastSeenAt';
      yield serializers.serialize(
        object.lastSeenAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PolDeviation object, {
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
    required PolDeviationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subjectId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subjectId = valueDes;
          break;
        case r'subjectRef':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subjectRef = valueDes;
          break;
        case r'deviationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      PolDeviationDeviationTypeEnum,
                    ),
                  )
                  as PolDeviationDeviationTypeEnum;
          result.deviationType = valueDes;
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
        case r'placeId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeId = valueDes;
          break;
        case r'placeLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.placeLabel = valueDes;
          break;
        case r'stay':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(PolDeviationStay),
                  )
                  as PolDeviationStay?;
          if (valueDes == null) continue;
          result.stay.replace(valueDes);
          break;
        case r'hourOfWeek':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.hourOfWeek = valueDes;
          break;
        case r'bucketShare':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.bucketShare = valueDes;
          break;
        case r'lastSeenAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.lastSeenAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PolDeviation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolDeviationBuilder();
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

class PolDeviationDeviationTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NEW_PLACE')
  static const PolDeviationDeviationTypeEnum NEW_PLACE =
      _$polDeviationDeviationTypeEnum_NEW_PLACE;
  @BuiltValueEnumConst(wireName: r'UNUSUAL_TIME')
  static const PolDeviationDeviationTypeEnum UNUSUAL_TIME =
      _$polDeviationDeviationTypeEnum_UNUSUAL_TIME;
  @BuiltValueEnumConst(wireName: r'EXPECTED_ABSENT')
  static const PolDeviationDeviationTypeEnum EXPECTED_ABSENT =
      _$polDeviationDeviationTypeEnum_EXPECTED_ABSENT;

  static Serializer<PolDeviationDeviationTypeEnum> get serializer =>
      _$polDeviationDeviationTypeEnumSerializer;

  const PolDeviationDeviationTypeEnum._(String name) : super(name);

  static BuiltSet<PolDeviationDeviationTypeEnum> get values =>
      _$polDeviationDeviationTypeEnumValues;
  static PolDeviationDeviationTypeEnum valueOf(String name) =>
      _$polDeviationDeviationTypeEnumValueOf(name);
}
