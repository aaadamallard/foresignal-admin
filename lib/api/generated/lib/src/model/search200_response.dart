//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/search_result.dart';
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/count_result.dart';
import 'package:foresignal_api/src/model/search_results.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'search200_response.g.dart';

/// Search200Response
///
/// Properties:
/// * [mode]
/// * [items]
/// * [degraded] - True when semantic was requested but text was used
/// * [attributions]
/// * [licenceFiltered]
/// * [reason] - Why semantic results were not used, when `degraded` is true (027)
/// * [count]
/// * [exact] - False above 1,000,000
/// * [watermarkSeq]
@BuiltValue()
abstract class Search200Response
    implements Built<Search200Response, Search200ResponseBuilder> {
  /// One Of [CountResult], [SearchResults]
  OneOf get oneOf;

  Search200Response._();

  factory Search200Response([void updates(Search200ResponseBuilder b)]) =
      _$Search200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Search200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Search200Response> get serializer =>
      _$Search200ResponseSerializer();
}

class _$Search200ResponseSerializer
    implements PrimitiveSerializer<Search200Response> {
  @override
  final Iterable<Type> types = const [Search200Response, _$Search200Response];

  @override
  final String wireName = r'Search200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Search200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    Search200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  Search200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Search200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(SearchResults),
      FullType(CountResult),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}

class Search200ResponseModeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'hybrid')
  static const Search200ResponseModeEnum hybrid =
      _$search200ResponseModeEnum_hybrid;
  @BuiltValueEnumConst(wireName: r'semantic')
  static const Search200ResponseModeEnum semantic =
      _$search200ResponseModeEnum_semantic;
  @BuiltValueEnumConst(wireName: r'text')
  static const Search200ResponseModeEnum text =
      _$search200ResponseModeEnum_text;

  static Serializer<Search200ResponseModeEnum> get serializer =>
      _$search200ResponseModeEnumSerializer;

  const Search200ResponseModeEnum._(String name) : super(name);

  static BuiltSet<Search200ResponseModeEnum> get values =>
      _$search200ResponseModeEnumValues;
  static Search200ResponseModeEnum valueOf(String name) =>
      _$search200ResponseModeEnumValueOf(name);
}
