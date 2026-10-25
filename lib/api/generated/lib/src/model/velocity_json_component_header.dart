//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'velocity_json_component_header.g.dart';

/// GRIB-like header
///
/// Properties:
/// * [parameterCategory]
/// * [parameterNumber] - 2 = U, 3 = V
/// * [lo1]
/// * [la1]
/// * [lo2]
/// * [la2]
/// * [dx]
/// * [dy]
/// * [nx]
/// * [ny]
/// * [refTime]
/// * [forecastTime] - Hours after refTime
@BuiltValue()
abstract class VelocityJsonComponentHeader
    implements
        Built<VelocityJsonComponentHeader, VelocityJsonComponentHeaderBuilder> {
  @BuiltValueField(wireName: r'parameterCategory')
  VelocityJsonComponentHeaderParameterCategoryEnum get parameterCategory;
  // enum parameterCategoryEnum {  2,  };

  /// 2 = U, 3 = V
  @BuiltValueField(wireName: r'parameterNumber')
  VelocityJsonComponentHeaderParameterNumberEnum get parameterNumber;
  // enum parameterNumberEnum {  2,  3,  };

  @BuiltValueField(wireName: r'lo1')
  num get lo1;

  @BuiltValueField(wireName: r'la1')
  num get la1;

  @BuiltValueField(wireName: r'lo2')
  num get lo2;

  @BuiltValueField(wireName: r'la2')
  num get la2;

  @BuiltValueField(wireName: r'dx')
  num get dx;

  @BuiltValueField(wireName: r'dy')
  num get dy;

  @BuiltValueField(wireName: r'nx')
  int get nx;

  @BuiltValueField(wireName: r'ny')
  int get ny;

  @BuiltValueField(wireName: r'refTime')
  DateTime get refTime;

  /// Hours after refTime
  @BuiltValueField(wireName: r'forecastTime')
  int get forecastTime;

  VelocityJsonComponentHeader._();

  factory VelocityJsonComponentHeader([
    void updates(VelocityJsonComponentHeaderBuilder b),
  ]) = _$VelocityJsonComponentHeader;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VelocityJsonComponentHeaderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VelocityJsonComponentHeader> get serializer =>
      _$VelocityJsonComponentHeaderSerializer();
}

class _$VelocityJsonComponentHeaderSerializer
    implements PrimitiveSerializer<VelocityJsonComponentHeader> {
  @override
  final Iterable<Type> types = const [
    VelocityJsonComponentHeader,
    _$VelocityJsonComponentHeader,
  ];

  @override
  final String wireName = r'VelocityJsonComponentHeader';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VelocityJsonComponentHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'parameterCategory';
    yield serializers.serialize(
      object.parameterCategory,
      specifiedType: const FullType(
        VelocityJsonComponentHeaderParameterCategoryEnum,
      ),
    );
    yield r'parameterNumber';
    yield serializers.serialize(
      object.parameterNumber,
      specifiedType: const FullType(
        VelocityJsonComponentHeaderParameterNumberEnum,
      ),
    );
    yield r'lo1';
    yield serializers.serialize(object.lo1, specifiedType: const FullType(num));
    yield r'la1';
    yield serializers.serialize(object.la1, specifiedType: const FullType(num));
    yield r'lo2';
    yield serializers.serialize(object.lo2, specifiedType: const FullType(num));
    yield r'la2';
    yield serializers.serialize(object.la2, specifiedType: const FullType(num));
    yield r'dx';
    yield serializers.serialize(object.dx, specifiedType: const FullType(num));
    yield r'dy';
    yield serializers.serialize(object.dy, specifiedType: const FullType(num));
    yield r'nx';
    yield serializers.serialize(object.nx, specifiedType: const FullType(int));
    yield r'ny';
    yield serializers.serialize(object.ny, specifiedType: const FullType(int));
    yield r'refTime';
    yield serializers.serialize(
      object.refTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'forecastTime';
    yield serializers.serialize(
      object.forecastTime,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VelocityJsonComponentHeader object, {
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
    required VelocityJsonComponentHeaderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'parameterCategory':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      VelocityJsonComponentHeaderParameterCategoryEnum,
                    ),
                  )
                  as VelocityJsonComponentHeaderParameterCategoryEnum;
          result.parameterCategory = valueDes;
          break;
        case r'parameterNumber':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(
                      VelocityJsonComponentHeaderParameterNumberEnum,
                    ),
                  )
                  as VelocityJsonComponentHeaderParameterNumberEnum;
          result.parameterNumber = valueDes;
          break;
        case r'lo1':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lo1 = valueDes;
          break;
        case r'la1':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.la1 = valueDes;
          break;
        case r'lo2':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.lo2 = valueDes;
          break;
        case r'la2':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.la2 = valueDes;
          break;
        case r'dx':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.dx = valueDes;
          break;
        case r'dy':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(num))
                  as num;
          result.dy = valueDes;
          break;
        case r'nx':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.nx = valueDes;
          break;
        case r'ny':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.ny = valueDes;
          break;
        case r'refTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(DateTime),
                  )
                  as DateTime;
          result.refTime = valueDes;
          break;
        case r'forecastTime':
          final valueDes =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int;
          result.forecastTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VelocityJsonComponentHeader deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VelocityJsonComponentHeaderBuilder();
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

class VelocityJsonComponentHeaderParameterCategoryEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 2)
  static const VelocityJsonComponentHeaderParameterCategoryEnum number2 =
      _$velocityJsonComponentHeaderParameterCategoryEnum_number2;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const VelocityJsonComponentHeaderParameterCategoryEnum
  unknownDefaultOpenApi =
      _$velocityJsonComponentHeaderParameterCategoryEnum_unknownDefaultOpenApi;

  static Serializer<VelocityJsonComponentHeaderParameterCategoryEnum>
  get serializer =>
      _$velocityJsonComponentHeaderParameterCategoryEnumSerializer;

  const VelocityJsonComponentHeaderParameterCategoryEnum._(String name)
    : super(name);

  static BuiltSet<VelocityJsonComponentHeaderParameterCategoryEnum>
  get values => _$velocityJsonComponentHeaderParameterCategoryEnumValues;
  static VelocityJsonComponentHeaderParameterCategoryEnum valueOf(
    String name,
  ) => _$velocityJsonComponentHeaderParameterCategoryEnumValueOf(name);
}

/// 2 = U, 3 = V
class VelocityJsonComponentHeaderParameterNumberEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 2)
  static const VelocityJsonComponentHeaderParameterNumberEnum number2 =
      _$velocityJsonComponentHeaderParameterNumberEnum_number2;
  @BuiltValueEnumConst(wireNumber: 3)
  static const VelocityJsonComponentHeaderParameterNumberEnum number3 =
      _$velocityJsonComponentHeaderParameterNumberEnum_number3;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const VelocityJsonComponentHeaderParameterNumberEnum
  unknownDefaultOpenApi =
      _$velocityJsonComponentHeaderParameterNumberEnum_unknownDefaultOpenApi;

  static Serializer<VelocityJsonComponentHeaderParameterNumberEnum>
  get serializer => _$velocityJsonComponentHeaderParameterNumberEnumSerializer;

  const VelocityJsonComponentHeaderParameterNumberEnum._(String name)
    : super(name);

  static BuiltSet<VelocityJsonComponentHeaderParameterNumberEnum> get values =>
      _$velocityJsonComponentHeaderParameterNumberEnumValues;
  static VelocityJsonComponentHeaderParameterNumberEnum valueOf(String name) =>
      _$velocityJsonComponentHeaderParameterNumberEnumValueOf(name);
}
