//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:foresignal_api/src/model/attribution.dart';
import 'package:foresignal_api/src/model/record_page.dart';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/count_result.dart';
import 'package:foresignal_api/src/model/record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'list_records200_response.g.dart';

/// ListRecords200Response
///
/// Properties:
/// * [items]
/// * [nextCursor]
/// * [watermarkSeq]
/// * [asOfSeq] - Echo of the pinned snapshot seq (asOfSeq or order=id)
/// * [asOf] - Echo of asOf
/// * [approximate] - asOf only: true when a source is SAMPLED/LATEST or the range is downsampled
/// * [horizon] - asOf only: earliest supported T over the involved sources
/// * [attributions] - Aggregated attributions of the records in this page
/// * [licenceFiltered] - Records removed by the licence policy
/// * [count]
/// * [exact] - False above 1,000,000
@BuiltValue()
abstract class ListRecords200Response
    implements Built<ListRecords200Response, ListRecords200ResponseBuilder> {
  /// One Of [CountResult], [RecordPage]
  OneOf get oneOf;

  ListRecords200Response._();

  factory ListRecords200Response(
          [void updates(ListRecords200ResponseBuilder b)]) =
      _$ListRecords200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListRecords200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListRecords200Response> get serializer =>
      _$ListRecords200ResponseSerializer();
}

class _$ListRecords200ResponseSerializer
    implements PrimitiveSerializer<ListRecords200Response> {
  @override
  final Iterable<Type> types = const [
    ListRecords200Response,
    _$ListRecords200Response
  ];

  @override
  final String wireName = r'ListRecords200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListRecords200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ListRecords200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ListRecords200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListRecords200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(RecordPage),
      FullType(CountResult),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
