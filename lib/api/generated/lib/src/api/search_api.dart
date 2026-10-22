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
import 'package:foresignal_api/src/model/search200_response.dart';
import 'package:foresignal_api/src/model/search_status.dart';

class SearchApi {
  final Dio _dio;

  final Serializers _serializers;

  const SearchApi(this._dio, this._serializers);

  /// Cancel a running reindex
  /// Clears the pending reindex and its slot; searches continue on the active slot. Idempotent when no reindex is running.  **Scope:** &#x60;admin&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchStatus>> cancelReindex({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search/reindex';
    final _options = Options(
      method: r'DELETE',
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

    SearchStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(SearchStatus),
                )
                as SearchStatus;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchStatus>(
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

  /// Semantic search status
  /// Semantic search status  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchStatus>> getSearchStatus({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search/status';
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

    SearchStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(SearchStatus),
                )
                as SearchStatus;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchStatus>(
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

  /// Rebuild embeddings
  /// Rebuilds the inactive vector slot with the active (or same) embedding model while searches keep answering from the active slot; swaps atomically when complete. One at a time.  **Scope:** &#x60;admin&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SearchStatus] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SearchStatus>> reindexSearch({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search/reindex';
    final _options = Options(
      method: r'POST',
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

    SearchStatus? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(SearchStatus),
                )
                as SearchStatus;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SearchStatus>(
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

  /// Search records, briefings and alerts
  /// &#x60;text&#x60; ranks &#x60;websearch_to_tsquery&#x60; matches (plus &#x60;record_head.search_text&#x60; matches for records without documents) and always works; &#x60;semantic&#x60; embeds &#x60;q&#x60; with the active model (budgeted) and orders by cosine distance; &#x60;hybrid&#x60; (default) fuses both with reciprocal rank fusion (k &#x3D; 60) and degrades to text with &#x60;degraded&#x3D;true&#x60; when semantic search is unavailable (&#x60;semantic&#x60; then → 409 SEMANTIC_UNAVAILABLE). Time filters apply to the effective time by default (&#x60;timeField&#x3D;observed&#x60; for the observation time). When results degrade to text, &#x60;reason&#x60; says why. An unknown source is 404, a private one the caller may not see is 404 too. Record hits carry the persisted &#x60;seq&#x60;. Private sources are excluded unless the caller may see them; results are clamped to the caller&#39;s restriction (035).  **Scope:** &#x60;read&#x60; (always authenticated: a token is required even when &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [q] - Query text
  /// * [mode] - Search mode
  /// * [docType] - Document types (default all)
  /// * [source_] - Filter by source id (repeatable or comma-separated)
  /// * [kind] - Filter by kind (repeatable or comma-separated)
  /// * [bbox] - minLon,minLat,maxLon,maxLat (WGS84)
  /// * [since] - Lower bound (inclusive) on the `timeField` axis (effective time by default)
  /// * [until] - Upper bound (exclusive) on the `timeField` axis (effective time by default)
  /// * [limit] - Max results
  /// * [timeField] - Time axis for since/until
  /// * [count] - Return `{count, exact, watermarkSeq}` instead of items (038); counts up to 1,000,000 exactly
  /// * [place] - Place id(s) (036), resolved to their areas and intersected with the other filters; requires a token (places are never anonymous)
  /// * [radiusKm] - Extra buffer around `place` areas (036)
  /// * [view] - Saved view id or slug (036), intersected with the other filters; a view that references a place or watchlist needs a token
  /// * [inWatchlist] - Only entities whose identity is on this watchlist (036); token required (401 for anonymous and feed keys)
  /// * [country] - ISO 3166-1 alpha-2 codes (040); unknown → 400 UNKNOWN_REGION
  /// * [admin1] - ISO 3166-2 codes, e.g. US-TX (040)
  /// * [county] - US county FIPS5 codes (040)
  /// * [licencePolicy] - Licence policy flags (comma-separated): `no-nc` excludes records whose commercial use is not ALLOWED, `no-sa` excludes share-alike records, `redistributable` excludes records whose redistribution is not ALLOWED. Adds to the token's `licencePolicy` floor; it can never remove a token flag.
  /// * [foresignalLicencePolicy] - Header form of `licencePolicy` (comma-separated flags `no-nc`, `no-sa`, `redistributable`)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Search200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Search200Response>> search({
    required String q,
    String? mode,
    BuiltList<String>? docType,
    BuiltList<String>? source_,
    BuiltList<String>? kind,
    String? bbox,
    DateTime? since,
    DateTime? until,
    int? limit,
    String? timeField,
    bool? count,
    BuiltList<String>? place,
    num? radiusKm,
    String? view,
    String? inWatchlist,
    BuiltList<String>? country,
    BuiltList<String>? admin1,
    BuiltList<String>? county,
    BuiltList<String>? licencePolicy,
    String? foresignalLicencePolicy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/search';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (foresignalLicencePolicy != null)
          r'Foresignal-Licence-Policy': foresignalLicencePolicy,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'bearerToken'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'q': encodeQueryParameter(_serializers, q, const FullType(String)),
      if (mode != null)
        r'mode': encodeQueryParameter(
          _serializers,
          mode,
          const FullType(String),
        ),
      if (docType != null)
        r'docType': encodeCollectionQueryParameter<String>(
          _serializers,
          docType,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (source_ != null)
        r'source': encodeCollectionQueryParameter<String>(
          _serializers,
          source_,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (kind != null)
        r'kind': encodeCollectionQueryParameter<String>(
          _serializers,
          kind,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (bbox != null)
        r'bbox': encodeQueryParameter(
          _serializers,
          bbox,
          const FullType(String),
        ),
      if (since != null)
        r'since': encodeQueryParameter(
          _serializers,
          since,
          const FullType(DateTime),
        ),
      if (until != null)
        r'until': encodeQueryParameter(
          _serializers,
          until,
          const FullType(DateTime),
        ),
      if (limit != null)
        r'limit': encodeQueryParameter(
          _serializers,
          limit,
          const FullType(int),
        ),
      if (timeField != null)
        r'timeField': encodeQueryParameter(
          _serializers,
          timeField,
          const FullType(String),
        ),
      if (count != null)
        r'count': encodeQueryParameter(
          _serializers,
          count,
          const FullType(bool),
        ),
      if (place != null)
        r'place': encodeCollectionQueryParameter<String>(
          _serializers,
          place,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (radiusKm != null)
        r'radiusKm': encodeQueryParameter(
          _serializers,
          radiusKm,
          const FullType(num),
        ),
      if (view != null)
        r'view': encodeQueryParameter(
          _serializers,
          view,
          const FullType(String),
        ),
      if (inWatchlist != null)
        r'inWatchlist': encodeQueryParameter(
          _serializers,
          inWatchlist,
          const FullType(String),
        ),
      if (country != null)
        r'country': encodeCollectionQueryParameter<String>(
          _serializers,
          country,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (admin1 != null)
        r'admin1': encodeCollectionQueryParameter<String>(
          _serializers,
          admin1,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (county != null)
        r'county': encodeCollectionQueryParameter<String>(
          _serializers,
          county,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (licencePolicy != null)
        r'licencePolicy': encodeCollectionQueryParameter<String>(
          _serializers,
          licencePolicy,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
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

    Search200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Search200Response),
                )
                as Search200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Search200Response>(
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
