//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/count_result.dart';
import 'package:foresignal_api/src/model/record_version.dart';
import 'package:foresignal_api/src/model/history_page.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'query_history200_response.g.dart';

/// QueryHistory200Response
///
/// Properties:
/// * [items] - Versions ordered by the selected timeField
/// * [nextCursor]
/// * [attributions]
/// * [licenceFiltered] - Records removed by the licence policy
/// * [count]
/// * [exact] - False above 1,000,000
/// * [watermarkSeq]
@BuiltValue()
abstract class QueryHistory200Response
    implements Built<QueryHistory200Response, QueryHistory200ResponseBuilder> {
  /// One Of [CountResult], [HistoryPage]
  OneOf get oneOf;

  QueryHistory200Response._();

  factory QueryHistory200Response([
    void updates(QueryHistory200ResponseBuilder b),
  ]) = _$QueryHistory200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueryHistory200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueryHistory200Response> get serializer =>
      _$QueryHistory200ResponseSerializer();
}

class _$QueryHistory200ResponseSerializer
    implements PrimitiveSerializer<QueryHistory200Response> {
  @override
  final Iterable<Type> types = const [
    QueryHistory200Response,
    _$QueryHistory200Response,
  ];

  @override
  final String wireName = r'QueryHistory200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueryHistory200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    QueryHistory200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  QueryHistory200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryHistory200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(HistoryPage),
      FullType(CountResult),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf =
        serializers.deserialize(oneOfDataSrc, specifiedType: targetType)
            as OneOf;
    return result.build();
  }
}
