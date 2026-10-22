//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/problem.dart';
import 'package:foresignal_api/src/model/stix_bundle.dart';
import 'package:foresignal_api/src/model/taxii_api_root.dart';
import 'package:foresignal_api/src/model/taxii_collection.dart';
import 'package:foresignal_api/src/model/taxii_collections.dart';
import 'package:foresignal_api/src/model/taxii_discovery.dart';
import 'package:foresignal_api/src/model/taxii_envelope.dart';

class StandardsApi {
  final Dio _dio;

  final Serializers _serializers;

  const StandardsApi(this._dio, this._serializers);

  /// Export a STIX 2.1 bundle
  /// &#x60;cisa-kev&#x60;/&#x60;nvd-cves&#x60; → &#x60;vulnerability&#x60;, abuse.ch IOCs → &#x60;indicator&#x60; (pattern from the IOC type), plus a Foresignal &#x60;identity&#x60;; deterministic UUIDv5 ids from record refs. Every record passes &#x60;EgressPolicy&#x60; on the EXPORT path (private sources, &#x60;LOCAL_ONLY&#x60; egress and license terms); refused records are counted in &#x60;Foresignal-Licence-Filtered&#x60;. Kinds: &#x60;vulnerability&#x60;, &#x60;malware-url&#x60;, &#x60;malware-c2&#x60; (default all three).  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [kind] - Record kinds (comma-separated)
  /// * [since] - observedAt ≥ since
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [StixBundle] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<StixBundle>> exportStix({
    BuiltList<String>? kind,
    DateTime? since,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/export/stix';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (kind != null)
        r'kind': encodeCollectionQueryParameter<String>(
          _serializers,
          kind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (since != null)
        r'since': encodeQueryParameter(
          _serializers,
          since,
          const FullType(DateTime),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    StixBundle? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(StixBundle),
                )
                as StixBundle;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<StixBundle>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// FDSN event service version
  /// Service version string.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getFdsnEventVersion({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fdsnws/event/1/version';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// FDSN event WADL
  /// Minimal WADL describing the query parameters.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getFdsnEventWadl({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fdsnws/event/1/application.wadl';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TAXII API root
  /// TAXII 2.1 API root.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TaxiiApiRoot] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TaxiiApiRoot>> getTaxiiApiRoot({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/taxii2/foresignal/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TaxiiApiRoot? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(TaxiiApiRoot),
                )
                as TaxiiApiRoot;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TaxiiApiRoot>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TAXII collection
  /// One TAXII collection.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [collectionId] - Collection id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TaxiiCollection] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TaxiiCollection>> getTaxiiCollection({
    required String collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/taxii2/foresignal/collections/{collectionId}/'.replaceAll(
      '{'
      r'collectionId'
      '}',
      encodeQueryParameter(
        _serializers,
        collectionId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TaxiiCollection? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(TaxiiCollection),
                )
                as TaxiiCollection;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TaxiiCollection>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TAXII collection objects
  /// STIX object versions in ingest order with &#x60;added_after&#x60; (strictly after the version&#39;s ingest time) and &#x60;next&#x60; pagination (repeat the same &#x60;added_after&#x60; with &#x60;next&#x60;); the default page is 100; &#x60;X-TAXII-Date-Added-First&#x60;/&#x60;-Last&#x60; headers.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [collectionId] - Collection id
  /// * [addedAfter] - Objects added after
  /// * [limit] - Page size
  /// * [next] - Pagination token
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TaxiiEnvelope] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TaxiiEnvelope>> getTaxiiCollectionObjects({
    required String collectionId,
    DateTime? addedAfter,
    int? limit,
    String? next,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/taxii2/foresignal/collections/{collectionId}/objects/'
        .replaceAll(
          '{'
          r'collectionId'
          '}',
          encodeQueryParameter(
            _serializers,
            collectionId,
            const FullType(String),
          ).toString(),
        );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (addedAfter != null)
        r'added_after': encodeQueryParameter(
          _serializers,
          addedAfter,
          const FullType(DateTime),
        ),
      if (limit != null)
        r'limit': encodeQueryParameter(
          _serializers,
          limit,
          const FullType(int),
        ),
      if (next != null)
        r'next': encodeQueryParameter(
          _serializers,
          next,
          const FullType(String),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TaxiiEnvelope? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(TaxiiEnvelope),
                )
                as TaxiiEnvelope;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TaxiiEnvelope>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TAXII discovery
  /// TAXII 2.1 discovery.  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TaxiiDiscovery] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TaxiiDiscovery>> getTaxiiDiscovery({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/taxii2/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TaxiiDiscovery? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(TaxiiDiscovery),
                )
                as TaxiiDiscovery;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TaxiiDiscovery>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// TAXII collections
  /// Read-only collections (e.g. vulnerabilities, indicators).  **Scope:** &#x60;agent&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TaxiiCollections] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TaxiiCollections>> listTaxiiCollections({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/taxii2/foresignal/collections/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TaxiiCollections? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(TaxiiCollections),
                )
                as TaxiiCollections;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TaxiiCollections>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// FDSN event query
  /// fdsnws-event 1.2 over &#x60;earthquake&#x60; records: QuakeML 1.2 BED (&#x60;smi:foresignal/{source}/{externalId}&#x60; publicIDs) or the pipe-separated text format. &#x60;204&#x60; when no events match (FDSN convention; &#x60;nodata&#x3D;404&#x60; selects 404); errors use FDSN plain-text bodies. Long and short parameter names are accepted (&#x60;start&#x60;, &#x60;minlat&#x60;, &#x60;minmag&#x60;, …); unsupported parameters are a 400. Depth is in meters in QuakeML and in km in the text format.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [starttime] - Origin time ≥
  /// * [endtime] - Origin time ≤
  /// * [minlatitude] - Box
  /// * [maxlatitude] - Box
  /// * [minlongitude] - Box
  /// * [maxlongitude] - Box
  /// * [latitude] - Radius centre
  /// * [longitude] - Radius centre
  /// * [minradius] - Degrees
  /// * [maxradius] - Degrees
  /// * [minmagnitude] - Magnitude ≥
  /// * [maxmagnitude] - Magnitude ≤
  /// * [orderby] - Ordering
  /// * [limit] - Maximum events
  /// * [format] - Output
  /// * [nodata] - Status of an empty result: 204 (default, FDSN convention) or 404 with an FDSN plain-text body
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> queryFdsnEvents({
    DateTime? starttime,
    DateTime? endtime,
    num? minlatitude,
    num? maxlatitude,
    num? minlongitude,
    num? maxlongitude,
    num? latitude,
    num? longitude,
    num? minradius,
    num? maxradius,
    num? minmagnitude,
    num? maxmagnitude,
    String? orderby,
    int? limit,
    String? format,
    int? nodata,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/fdsnws/event/1/query';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (starttime != null)
        r'starttime': encodeQueryParameter(
          _serializers,
          starttime,
          const FullType(DateTime),
        ),
      if (endtime != null)
        r'endtime': encodeQueryParameter(
          _serializers,
          endtime,
          const FullType(DateTime),
        ),
      if (minlatitude != null)
        r'minlatitude': encodeQueryParameter(
          _serializers,
          minlatitude,
          const FullType(num),
        ),
      if (maxlatitude != null)
        r'maxlatitude': encodeQueryParameter(
          _serializers,
          maxlatitude,
          const FullType(num),
        ),
      if (minlongitude != null)
        r'minlongitude': encodeQueryParameter(
          _serializers,
          minlongitude,
          const FullType(num),
        ),
      if (maxlongitude != null)
        r'maxlongitude': encodeQueryParameter(
          _serializers,
          maxlongitude,
          const FullType(num),
        ),
      if (latitude != null)
        r'latitude': encodeQueryParameter(
          _serializers,
          latitude,
          const FullType(num),
        ),
      if (longitude != null)
        r'longitude': encodeQueryParameter(
          _serializers,
          longitude,
          const FullType(num),
        ),
      if (minradius != null)
        r'minradius': encodeQueryParameter(
          _serializers,
          minradius,
          const FullType(num),
        ),
      if (maxradius != null)
        r'maxradius': encodeQueryParameter(
          _serializers,
          maxradius,
          const FullType(num),
        ),
      if (minmagnitude != null)
        r'minmagnitude': encodeQueryParameter(
          _serializers,
          minmagnitude,
          const FullType(num),
        ),
      if (maxmagnitude != null)
        r'maxmagnitude': encodeQueryParameter(
          _serializers,
          maxmagnitude,
          const FullType(num),
        ),
      if (orderby != null)
        r'orderby': encodeQueryParameter(
          _serializers,
          orderby,
          const FullType(String),
        ),
      if (limit != null)
        r'limit': encodeQueryParameter(
          _serializers,
          limit,
          const FullType(int),
        ),
      if (format != null)
        r'format': encodeQueryParameter(
          _serializers,
          format,
          const FullType(String),
        ),
      if (nodata != null)
        r'nodata': encodeQueryParameter(
          _serializers,
          nodata,
          const FullType(int),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
