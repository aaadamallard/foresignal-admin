//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'exposure_facilities.g.dart';

/// Current reference facilities by kind (094)
///
/// Properties:
/// * [status]
/// * [attribution]
/// * [counts] - power-plant, airport, port, cable-landing, data-centre, nuclear-facility, spaceport
/// * [total]
@BuiltValue()
abstract class ExposureFacilities
    implements Built<ExposureFacilities, ExposureFacilitiesBuilder> {
  @BuiltValueField(wireName: r'status')
  ExposureFacilitiesStatusEnum get status;
  // enum statusEnum {  ok,  unavailable,  not-installed,  };

  @BuiltValueField(wireName: r'attribution')
  BuiltList<Attribution>? get attribution;

  /// power-plant, airport, port, cable-landing, data-centre, nuclear-facility, spaceport
  @BuiltValueField(wireName: r'counts')
  BuiltMap<String, int>? get counts;

  @BuiltValueField(wireName: r'total')
  int? get total;

  ExposureFacilities._();

  factory ExposureFacilities([void updates(ExposureFacilitiesBuilder b)]) =
      _$ExposureFacilities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExposureFacilitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExposureFacilities> get serializer =>
      _$ExposureFacilitiesSerializer();
}

class _$ExposureFacilitiesSerializer
    implements PrimitiveSerializer<ExposureFacilities> {
  @override
  final Iterable<Type> types = const [ExposureFacilities, _$ExposureFacilities];

  @override
  final String wireName = r'ExposureFacilities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExposureFacilities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ExposureFacilitiesStatusEnum),
    );
    if (object.attribution != null) {
      yield r'attribution';
      yield serializers.serialize(
        object.attribution,
        specifiedType: const FullType(BuiltList, [FullType(Attribution)]),
      );
    }
    if (object.counts != null) {
      yield r'counts';
      yield serializers.serialize(
        object.counts,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(int),
        ]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExposureFacilities object, {
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
    required ExposureFacilitiesBuilder result,
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
                    specifiedType: const FullType(ExposureFacilitiesStatusEnum),
                  )
                  as ExposureFacilitiesStatusEnum;
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
        case r'counts':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(int),
                    ]),
                  )
                  as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.counts.replace(valueDes);
          break;
        case r'total':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExposureFacilities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExposureFacilitiesBuilder();
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

class ExposureFacilitiesStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const ExposureFacilitiesStatusEnum ok =
      _$exposureFacilitiesStatusEnum_ok;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const ExposureFacilitiesStatusEnum unavailable =
      _$exposureFacilitiesStatusEnum_unavailable;
  @BuiltValueEnumConst(wireName: r'not-installed')
  static const ExposureFacilitiesStatusEnum notInstalled =
      _$exposureFacilitiesStatusEnum_notInstalled;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExposureFacilitiesStatusEnum unknownDefaultOpenApi =
      _$exposureFacilitiesStatusEnum_unknownDefaultOpenApi;

  static Serializer<ExposureFacilitiesStatusEnum> get serializer =>
      _$exposureFacilitiesStatusEnumSerializer;

  const ExposureFacilitiesStatusEnum._(String name) : super(name);

  static BuiltSet<ExposureFacilitiesStatusEnum> get values =>
      _$exposureFacilitiesStatusEnumValues;
  static ExposureFacilitiesStatusEnum valueOf(String name) =>
      _$exposureFacilitiesStatusEnumValueOf(name);
}
