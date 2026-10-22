//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/ogc_link.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_data_queries.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection.dart';
import 'package:foresignal_api/src/model/ogc_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:foresignal_api/src/model/ogc_coverage_collection_extent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'ogc_collection200_response.g.dart';

/// OgcCollection200Response
///
/// Properties:
/// * [id] - Product id
/// * [title]
/// * [description]
/// * [itemType]
/// * [crs]
/// * [attribution]
/// * [extent]
/// * [links]
/// * [dataQueries]
/// * [parameterNames] - EDR parameters with units and nodata
/// * [outputFormats]
@BuiltValue()
abstract class OgcCollection200Response
    implements
        Built<OgcCollection200Response, OgcCollection200ResponseBuilder> {
  /// One Of [OgcCollection], [OgcCoverageCollection]
  OneOf get oneOf;

  OgcCollection200Response._();

  factory OgcCollection200Response(
          [void updates(OgcCollection200ResponseBuilder b)]) =
      _$OgcCollection200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OgcCollection200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OgcCollection200Response> get serializer =>
      _$OgcCollection200ResponseSerializer();
}

class _$OgcCollection200ResponseSerializer
    implements PrimitiveSerializer<OgcCollection200Response> {
  @override
  final Iterable<Type> types = const [
    OgcCollection200Response,
    _$OgcCollection200Response
  ];

  @override
  final String wireName = r'OgcCollection200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OgcCollection200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    OgcCollection200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  OgcCollection200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OgcCollection200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(OgcCollection),
      FullType(OgcCoverageCollection),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class OgcCollection200ResponseItemTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'coverage')
  static const OgcCollection200ResponseItemTypeEnum coverage =
      _$ogcCollection200ResponseItemTypeEnum_coverage;

  static Serializer<OgcCollection200ResponseItemTypeEnum> get serializer =>
      _$ogcCollection200ResponseItemTypeEnumSerializer;

  const OgcCollection200ResponseItemTypeEnum._(String name) : super(name);

  static BuiltSet<OgcCollection200ResponseItemTypeEnum> get values =>
      _$ogcCollection200ResponseItemTypeEnumValues;
  static OgcCollection200ResponseItemTypeEnum valueOf(String name) =>
      _$ogcCollection200ResponseItemTypeEnumValueOf(name);
}
