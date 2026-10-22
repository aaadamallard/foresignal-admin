//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_traffic.g.dart';

/// Live aircraft and vessels inside
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [aircraft]
/// * [vessels]
@BuiltValue()
abstract class ExposureTraffic
    implements Built<ExposureTraffic, ExposureTrafficBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposureTrafficStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'aircraft')
  int? get aircraft;

  @BuiltValueField(wireName: r'vessels')
  int? get vessels;

  ExposureTraffic._();

  factory ExposureTraffic([void updates(ExposureTrafficBuilder b)]) =
      _$ExposureTraffic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureTrafficBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureTraffic> get serializer =>
      _$ExposureTrafficSerializer();
}

class _$ExposureTrafficSerializer
    implements PrimitiveSerializer<ExposureTraffic> {
  @override
  final Iterable<Type> types = const [ExposureTraffic, _$ExposureTraffic];

  @override
  final String wireName = r'ExposureTraffic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureTraffic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposureTrafficStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(int),
      );
    }
    if (object.vessels != null) {
      yield r'vessels';
      yield serializers.serialize(
        object.vessels,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureTraffic object, {
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
    required ExposureTrafficBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExposureTrafficStatusEnum),
          ) as ExposureTrafficStatusEnum;
          result.status = valueDes;
          break;
        case r'attribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(BuiltList, [FullType(Attribution)]),
          ) as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'aircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.aircraft = valueDes;
          break;
        case r'vessels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.vessels = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureTraffic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureTrafficBuilder();
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

class ExposureTrafficStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposureTrafficStatusEnum ok = _$exposureTrafficStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposureTrafficStatusEnum unavailable =
      _$exposureTrafficStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposureTrafficStatusEnum notInstalled =
      _$exposureTrafficStatusEnum_notInstalled;

  static Serializer<ExposureTrafficStatusEnum> get serializer =>
      _$exposureTrafficStatusEnumSerializer;

  const ExposureTrafficStatusEnum._(String name) : super(name);

  static BuiltSet<ExposureTrafficStatusEnum> get values =>
      _$exposureTrafficStatusEnumValues;
  static ExposureTrafficStatusEnum valueOf(String name) =>
      _$exposureTrafficStatusEnumValueOf(name);
}
