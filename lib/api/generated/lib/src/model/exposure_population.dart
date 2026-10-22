//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_population.g.dart';

/// Optional GHSL population estimate (pack)
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [estimate]
/// * [epoch]
/// * [method]
/// * [note]
@BuiltValue()
abstract class ExposurePopulation
    implements Built<ExposurePopulation, ExposurePopulationBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposurePopulationStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  @BuiltValueField(wireName: r'estimate')
  num? get estimate;

  @BuiltValueField(wireName: r'epoch')
  int? get epoch;

  @BuiltValueField(wireName: r'method')
  String? get method;

  @BuiltValueField(wireName: r'note')
  String? get note;

  ExposurePopulation._();

  factory ExposurePopulation([void updates(ExposurePopulationBuilder b)]) =
      _$ExposurePopulation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposurePopulationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposurePopulation> get serializer =>
      _$ExposurePopulationSerializer();
}

class _$ExposurePopulationSerializer
    implements PrimitiveSerializer<ExposurePopulation> {
  @override
  final Iterable<Type> types = const [ExposurePopulation, _$ExposurePopulation];

  @override
  final String wireName = r'ExposurePopulation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposurePopulation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposurePopulationStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.estimate != null) {
      yield r'estimate';
      yield serializers.serialize(
        object.estimate,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.epoch != null) {
      yield r'epoch';
      yield serializers.serialize(
        object.epoch,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposurePopulation object, {
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
    required ExposurePopulationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ExposurePopulationStatusEnum),
                  )
                  as ExposurePopulationStatusEnum;
          result.status = valueDes;
          break;
        case r'attribution':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(Attribution),
                    ]),
                  )
                  as BuiltList<Attribution>?;
          if (valueDes == null) continue;
          result.attribution.replace(valueDes);
          break;
        case r'estimate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(num),
                  )
                  as num?;
          if (valueDes == null) continue;
          result.estimate = valueDes;
          break;
        case r'epoch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.epoch = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.method = valueDes;
          break;
        case r'note':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposurePopulation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposurePopulationBuilder();
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

class ExposurePopulationStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposurePopulationStatusEnum ok =
      _$exposurePopulationStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposurePopulationStatusEnum unavailable =
      _$exposurePopulationStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposurePopulationStatusEnum notInstalled =
      _$exposurePopulationStatusEnum_notInstalled;

  static Serializer<ExposurePopulationStatusEnum> get serializer =>
      _$exposurePopulationStatusEnumSerializer;

  const ExposurePopulationStatusEnum._(String name) : super(name);

  static BuiltSet<ExposurePopulationStatusEnum> get values =>
      _$exposurePopulationStatusEnumValues;
  static ExposurePopulationStatusEnum valueOf(String name) =>
      _$exposurePopulationStatusEnumValueOf(name);
}
