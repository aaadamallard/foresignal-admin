//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/impact_rate_interval.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'impact_rate.g.dart';

/// Historical conditional rate P(impact | hazard class) from 121 base-rate machinery
///
/// Properties:
/// * [hazardClass]
/// * [impactFamily]
/// * [regionClass]
/// * [lagHours]
/// * [rate]
/// * [interval]
/// * [n] - Hazard occurrences
/// * [nImpacts]
/// * [source_]
/// * [status] - `insufficient` when n < 20 (pair skipped)
/// * [baseRateId]
/// * [computedAt]
@BuiltValue()
abstract class ImpactRate implements Built<ImpactRate, ImpactRateBuilder> {
  @BuiltValueField(wireName: r'hazardClass')
  String get hazardClass;

  @BuiltValueField(wireName: r'impactFamily')
  String get impactFamily;

  @BuiltValueField(wireName: r'regionClass')
  String get regionClass;

  @BuiltValueField(wireName: r'lagHours')
  int? get lagHours;

  @BuiltValueField(wireName: r'rate')
  num? get rate;

  @BuiltValueField(wireName: r'interval')
  ImpactRateInterval? get interval;

  /// Hazard occurrences
  @BuiltValueField(wireName: r'n')
  int get n;

  @BuiltValueField(wireName: r'nImpacts')
  int? get nImpacts;

  @BuiltValueField(wireName: r'source')
  ImpactRateSource_Enum? get source_;
  // enum source_Enum {  own-history,  reference-import,  mixed,  };

  /// `insufficient` when n < 20 (pair skipped)
  @BuiltValueField(wireName: r'status')
  ImpactRateStatusEnum get status;
  // enum statusEnum {  ok,  insufficient,  };

  @BuiltValueField(wireName: r'baseRateId')
  String? get baseRateId;

  @BuiltValueField(wireName: r'computedAt')
  DateTime get computedAt;

  ImpactRate._();

  factory ImpactRate([void updates(ImpactRateBuilder b)]) = _$ImpactRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImpactRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImpactRate> get serializer => _$ImpactRateSerializer();
}

class _$ImpactRateSerializer implements PrimitiveSerializer<ImpactRate> {
  @override
  final Iterable<Type> types = const [ImpactRate, _$ImpactRate];

  @override
  final String wireName = r'ImpactRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImpactRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hazardClass';
    yield serializers.serialize(
      object.hazardClass,
      specifiedType: const FullType(String),
    );
    yield r'impactFamily';
    yield serializers.serialize(
      object.impactFamily,
      specifiedType: const FullType(String),
    );
    yield r'regionClass';
    yield serializers.serialize(
      object.regionClass,
      specifiedType: const FullType(String),
    );
    if (object.lagHours != null) {
      yield r'lagHours';
      yield serializers.serialize(
        object.lagHours,
        specifiedType: const FullType(int),
      );
    }
    if (object.rate != null) {
      yield r'rate';
      yield serializers.serialize(
        object.rate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.interval != null) {
      yield r'interval';
      yield serializers.serialize(
        object.interval,
        specifiedType: const FullType.nullable(ImpactRateInterval),
      );
    }
    yield r'n';
    yield serializers.serialize(object.n, specifiedType: const FullType(int));
    if (object.nImpacts != null) {
      yield r'nImpacts';
      yield serializers.serialize(
        object.nImpacts,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(ImpactRateSource_Enum),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ImpactRateStatusEnum),
    );
    if (object.baseRateId != null) {
      yield r'baseRateId';
      yield serializers.serialize(
        object.baseRateId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'computedAt';
    yield serializers.serialize(
      object.computedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImpactRate object, {
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
    required ImpactRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hazardClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.hazardClass = valueDes;
          break;
        case r'impactFamily':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.impactFamily = valueDes;
          break;
        case r'regionClass':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.regionClass = valueDes;
          break;
        case r'lagHours':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.lagHours = valueDes;
          break;
        case r'rate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.rate = valueDes;
          break;
        case r'interval':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ImpactRateInterval),
                  )
                  as ImpactRateInterval?;
          if (valueDes == null) continue;
          result.interval.replace(valueDes);
          break;
        case r'n':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.n = valueDes;
          break;
        case r'nImpacts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.nImpacts = valueDes;
          break;
        case r'source':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ImpactRateSource_Enum,
                    ),
                  )
                  as ImpactRateSource_Enum?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ImpactRateStatusEnum),
                  )
                  as ImpactRateStatusEnum;
          result.status = valueDes;
          break;
        case r'baseRateId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.baseRateId = valueDes;
          break;
        case r'computedAt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.computedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImpactRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImpactRateBuilder();
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

class ImpactRateSource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'own-history')
  static const ImpactRateSource_Enum ownHistory =
      _$impactRateSourceEnum_ownHistory;
  @BuiltValueEnumConst(wireName: r'reference-import')
  static const ImpactRateSource_Enum referenceImport =
      _$impactRateSourceEnum_referenceImport;
  @BuiltValueEnumConst(wireName: r'mixed')
  static const ImpactRateSource_Enum mixed = _$impactRateSourceEnum_mixed;

  static Serializer<ImpactRateSource_Enum> get serializer =>
      _$impactRateSourceEnumSerializer;

  const ImpactRateSource_Enum._(String name) : super(name);

  static BuiltSet<ImpactRateSource_Enum> get values =>
      _$impactRateSourceEnumValues;
  static ImpactRateSource_Enum valueOf(String name) =>
      _$impactRateSourceEnumValueOf(name);
}

/// `insufficient` when n < 20 (pair skipped)
class ImpactRateStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ImpactRateStatusEnum ok = _$impactRateStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'insufficient')
  static const ImpactRateStatusEnum insufficient =
      _$impactRateStatusEnum_insufficient;

  static Serializer<ImpactRateStatusEnum> get serializer =>
      _$impactRateStatusEnumSerializer;

  const ImpactRateStatusEnum._(String name) : super(name);

  static BuiltSet<ImpactRateStatusEnum> get values =>
      _$impactRateStatusEnumValues;
  static ImpactRateStatusEnum valueOf(String name) =>
      _$impactRateStatusEnumValueOf(name);
}
