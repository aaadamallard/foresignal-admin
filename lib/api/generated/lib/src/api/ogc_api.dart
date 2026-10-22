//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/coverage_json.dart';
import 'package:foresignal_api/src/model/edr_instance_list.dart';
import 'package:foresignal_api/src/model/ogc_collection200_response.dart';
import 'package:foresignal_api/src/model/ogc_collections.dart';
import 'package:foresignal_api/src/model/ogc_conformance.dart';
import 'package:foresignal_api/src/model/ogc_feature.dart';
import 'package:foresignal_api/src/model/ogc_feature_collection.dart';
import 'package:foresignal_api/src/model/ogc_landing_page.dart';
import 'package:foresignal_api/src/model/ogc_queryables.dart';
import 'package:foresignal_api/src/model/ogc_tile_matrix_set.dart';
import 'package:foresignal_api/src/model/ogc_tile_matrix_set_list.dart';
import 'package:foresignal_api/src/model/ogc_tile_set.dart';
import 'package:foresignal_api/src/model/ogc_tile_set_list.dart';
import 'package:foresignal_api/src/model/problem.dart';

class OGCApi {
  final Dio _dio;

  final Serializers _serializers;

  const OGCApi(this._dio, this._serializers);

  /// EDR area query
  /// Native-grid subset of the polygon&#39;s bounding box with units and the nodata mask (&#x60;null&#x60; values), values flat and row-major. A regular lat/lon grid answers a &#x60;Grid&#x60; domain; a projected grid (geostationary, Lambert, affine) answers a &#x60;MultiPoint&#x60; domain of its cell centers. More than 100,000 native cells is 413 EDR_TOO_LARGE.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [coords] - WKT `POLYGON((…))`
  /// * [datetime] - Instant or interval (ISO 8601)
  /// * [parameterName] - Comma-separated parameter names
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CoverageJson] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CoverageJson>> edrArea({
    required String collectionId,
    required String coords,
    String? datetime,
    BuiltList<String>? parameterName,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/area'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'coords':
          encodeQueryParameter(_serializers, coords, const FullType(String)),
      if (datetime != null)
        r'datetime': encodeQueryParameter(
            _serializers, datetime, const FullType(String)),
      if (parameterName != null)
        r'parameter-name': encodeCollectionQueryParameter<String>(
          _serializers,
          parameterName,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
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

    CoverageJson? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(CoverageJson),
            ) as CoverageJson;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CoverageJson>(
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

  /// EDR instances (forecast runs)
  /// One instance per retained forecast run.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EdrInstanceList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EdrInstanceList>> edrInstances({
    required String collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/instances'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    EdrInstanceList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(EdrInstanceList),
            ) as EdrInstanceList;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EdrInstanceList>(
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

  /// EDR position query
  /// Values at a point as CoverageJSON; matches &#x60;/v1/sample&#x60; (SampleService) values, units and statuses.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [coords] - WKT `POINT(lon lat)`
  /// * [datetime] - Instant or interval (ISO 8601)
  /// * [parameterName] - Comma-separated parameter names
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CoverageJson] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CoverageJson>> edrPosition({
    required String collectionId,
    required String coords,
    String? datetime,
    BuiltList<String>? parameterName,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/position'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'coords':
          encodeQueryParameter(_serializers, coords, const FullType(String)),
      if (datetime != null)
        r'datetime': encodeQueryParameter(
            _serializers, datetime, const FullType(String)),
      if (parameterName != null)
        r'parameter-name': encodeCollectionQueryParameter<String>(
          _serializers,
          parameterName,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
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

    CoverageJson? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(CoverageJson),
            ) as CoverageJson;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CoverageJson>(
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

  /// WMTS capabilities
  /// One layer per product × style with both tile matrix sets, &#x60;Time&#x60; (and &#x60;RefTime&#x60; for forecasts) dimensions and RESTful ResourceURL templates. Through &#x60;/v1/k/{key}/wmts/...&#x60; every URL embeds the key prefix. Each layer carries &#x60;TileMatrixSetLimits&#x60; for its native zoom range and bounds. ETag, &#x60;private, max-age&#x3D;60&#x60; with &#x60;Vary: Authorization&#x60; (the layer list depends on the caller).  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
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
  Future<Response<String>> getWmtsCapabilities({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/wmts/1.0.0/WMTSCapabilities.xml';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

  /// WMTS key-value-pair requests
  /// &#x60;SERVICE&#x3D;WMTS&amp;REQUEST&#x3D;GetCapabilities|GetTile&#x60;. GetTile with a concrete TIME 301-redirects to the content-addressed tile; &#x60;current&#x60; maps to the &#x60;latest&#x60; alias.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [SERVICE] - Service
  /// * [REQUEST] - Request
  /// * [VERSION] - Version
  /// * [LAYER] - Layer (product id)
  /// * [STYLE] - Style
  /// * [FORMAT] - image/png or image/webp
  /// * [TILEMATRIXSET] - Tile matrix set
  /// * [TILEMATRIX] - Tile matrix (zoom)
  /// * [TILEROW] - Row
  /// * [TILECOL] - Column
  /// * [TIME] - `current` or a frame time (ISO extended)
  /// * [REFTIME] - Forecast run (ISO extended)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getWmtsKvp({
    required String SERVICE,
    required String REQUEST,
    String? VERSION,
    String? LAYER,
    String? STYLE,
    String? FORMAT,
    String? TILEMATRIXSET,
    String? TILEMATRIX,
    int? TILEROW,
    int? TILECOL,
    String? TIME,
    String? REFTIME,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/wmts';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'SERVICE':
          encodeQueryParameter(_serializers, SERVICE, const FullType(String)),
      r'REQUEST':
          encodeQueryParameter(_serializers, REQUEST, const FullType(String)),
      if (VERSION != null)
        r'VERSION':
            encodeQueryParameter(_serializers, VERSION, const FullType(String)),
      if (LAYER != null)
        r'LAYER':
            encodeQueryParameter(_serializers, LAYER, const FullType(String)),
      if (STYLE != null)
        r'STYLE':
            encodeQueryParameter(_serializers, STYLE, const FullType(String)),
      if (FORMAT != null)
        r'FORMAT':
            encodeQueryParameter(_serializers, FORMAT, const FullType(String)),
      if (TILEMATRIXSET != null)
        r'TILEMATRIXSET': encodeQueryParameter(
            _serializers, TILEMATRIXSET, const FullType(String)),
      if (TILEMATRIX != null)
        r'TILEMATRIX': encodeQueryParameter(
            _serializers, TILEMATRIX, const FullType(String)),
      if (TILEROW != null)
        r'TILEROW':
            encodeQueryParameter(_serializers, TILEROW, const FullType(int)),
      if (TILECOL != null)
        r'TILECOL':
            encodeQueryParameter(_serializers, TILECOL, const FullType(int)),
      if (TIME != null)
        r'TIME':
            encodeQueryParameter(_serializers, TIME, const FullType(String)),
      if (REFTIME != null)
        r'REFTIME':
            encodeQueryParameter(_serializers, REFTIME, const FullType(String)),
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

  /// WMTS RESTful tile
  /// &#x60;time&#x60; is &#x60;current&#x60; (latest alias, short cache) or a frame time; a concrete time 301-redirects to the content-addressed tile URL so caching stays correct. No client request causes an upstream fetch.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [layer] - Product id
  /// * [style] - Style name@v
  /// * [time] - `current` or ISO extended frame time
  /// * [tileMatrixSetId] - Tile matrix set (OGC 17-083r4)
  /// * [tileMatrix] - Tile matrix (zoom)
  /// * [tileRow] - Row
  /// * [tileCol] - Column
  /// * [format] - Image format
  /// * [refTime] - Forecast run (second dimension)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> getWmtsTile({
    required String layer,
    required String style,
    required String time,
    required String tileMatrixSetId,
    required String tileMatrix,
    required int tileRow,
    required int tileCol,
    required String format,
    String? refTime,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/wmts/1.0.0/{layer}/{style}/{time}/{tileMatrixSetId}/{tileMatrix}/{tileRow}/{tileCol}.{format}'
            .replaceAll(
                '{' r'layer' '}',
                encodeQueryParameter(
                        _serializers, layer, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'style' '}',
                encodeQueryParameter(
                        _serializers, style, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'time' '}',
                encodeQueryParameter(_serializers, time, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileMatrixSetId' '}',
                encodeQueryParameter(_serializers, tileMatrixSetId,
                        const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileMatrix' '}',
                encodeQueryParameter(_serializers, tileMatrix,
                        const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileRow' '}',
                encodeQueryParameter(_serializers, tileRow, const FullType(int))
                    .toString())
            .replaceAll(
                '{' r'tileCol' '}',
                encodeQueryParameter(_serializers, tileCol, const FullType(int))
                    .toString())
            .replaceAll(
                '{' r'format' '}',
                encodeQueryParameter(
                        _serializers, format, const FullType(String))
                    .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (refTime != null)
        r'RefTime':
            encodeQueryParameter(_serializers, refTime, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Link to the OpenAPI definition
  /// Redirects to the served OpenAPI document.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> ogcApiDefinition({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/api';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    return _response;
  }

  /// Get an OGC API collection
  /// A product collection (extents, &#x60;data_queries&#x60; for position, area and instances, parameter names, map tiles links) or, from 112, a feature collection.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id: a product id (108), a kind or `{kind}-history` (112)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcCollection200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcCollection200Response>> ogcCollection({
    required String collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcCollection200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcCollection200Response),
            ) as OgcCollection200Response;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcCollection200Response>(
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

  /// Map tile (OGC row/col order)
  /// Note the OGC &#x60;{tileMatrix}/{tileRow}/{tileCol}&#x60; order. &#x60;datetime&#x60; resolves like WMTS Time; a concrete time 301-redirects to the content-addressed tile.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [tileMatrixSetId] - Tile matrix set (OGC 17-083r4)
  /// * [tileMatrix] - Tile matrix (zoom)
  /// * [tileRow] - Row
  /// * [tileCol] - Column
  /// * [datetime] - Frame time (ISO extended) or omitted for latest
  /// * [style] - Versioned style `name@v` (400 UNKNOWN_STYLE)
  /// * [f] - Format
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> ogcCollectionTile({
    required String collectionId,
    required String tileMatrixSetId,
    required String tileMatrix,
    required int tileRow,
    required int tileCol,
    String? datetime,
    String? style,
    String? f,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/ogc/collections/{collectionId}/map/tiles/{tileMatrixSetId}/{tileMatrix}/{tileRow}/{tileCol}'
            .replaceAll(
                '{' r'collectionId' '}',
                encodeQueryParameter(
                        _serializers, collectionId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileMatrixSetId' '}',
                encodeQueryParameter(
                        _serializers, tileMatrixSetId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileMatrix' '}',
                encodeQueryParameter(
                        _serializers, tileMatrix, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileRow' '}',
                encodeQueryParameter(_serializers, tileRow, const FullType(int))
                    .toString())
            .replaceAll(
                '{' r'tileCol' '}',
                encodeQueryParameter(_serializers, tileCol, const FullType(int))
                    .toString());
    final _options = Options(
      method: r'GET',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (datetime != null)
        r'datetime': encodeQueryParameter(
            _serializers, datetime, const FullType(String)),
      if (style != null)
        r'style':
            encodeQueryParameter(_serializers, style, const FullType(String)),
      if (f != null)
        r'f': encodeQueryParameter(_serializers, f, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
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

  /// Map tileset metadata
  /// Tileset metadata per OGC API – Tiles 20-057.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [tileMatrixSetId] - Tile matrix set (OGC 17-083r4)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcTileSet] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcTileSet>> ogcCollectionTileset({
    required String collectionId,
    required String tileMatrixSetId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path =
        r'/v1/ogc/collections/{collectionId}/map/tiles/{tileMatrixSetId}'
            .replaceAll(
                '{' r'collectionId' '}',
                encodeQueryParameter(
                        _serializers, collectionId, const FullType(String))
                    .toString())
            .replaceAll(
                '{' r'tileMatrixSetId' '}',
                encodeQueryParameter(
                        _serializers, tileMatrixSetId, const FullType(String))
                    .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcTileSet? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcTileSet),
            ) as OgcTileSet;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcTileSet>(
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

  /// Map tilesets of a collection
  /// One tileset per tile matrix set.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id (a product id for raster collections)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcTileSetList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcTileSetList>> ogcCollectionTilesets({
    required String collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/map/tiles'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcTileSetList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcTileSetList),
            ) as OgcTileSetList;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcTileSetList>(
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

  /// List OGC API collections
  /// Raster products as coverage collections with map tiles and EDR links (108); 112 adds one feature collection per kind for current state and one &#x60;{kind}-history&#x60; collection. Private sources are excluded unless the token permits them.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcCollections] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcCollections>> ogcCollections({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcCollections? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcCollections),
            ) as OgcCollections;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcCollections>(
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

  /// OGC API conformance classes
  /// Only implemented classes. 108: OGC API – Common core, Tiles (core, tileset, tilesets-list, geodata-tilesets, png) and EDR 1.1 (core, position, area, instances, covjson). 112: Features Part 1 core and geojson; Part 3 filter, features-filter, queryables; CQL2 basic-cql2, cql2-text, cql2-json, basic-spatial-functions. oas30 is not claimed.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcConformance] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcConformance>> ogcConformance({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/conformance';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcConformance? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcConformance),
            ) as OgcConformance;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcConformance>(
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

  /// Get one OGC feature
  /// Current feature &#x60;{sourceId}:{externalId}&#x60; or history feature &#x60;{sourceId}:{externalId}:{version}&#x60;.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id: a kind (current state) or `{kind}-history`
  /// * [featureId] - Feature id
  /// * [licencePolicy] - Licence policy flags (comma-separated): `no-nc` excludes records whose commercial use is not ALLOWED, `no-sa` excludes share-alike records, `redistributable` excludes records whose redistribution is not ALLOWED. Adds to the token's `licencePolicy` floor; it can never remove a token flag.
  /// * [foresignalLicencePolicy] - Header form of `licencePolicy` (comma-separated flags `no-nc`, `no-sa`, `redistributable`)
  /// * [f] - Output format; tolerated for clients that append it (only JSON/GeoJSON is offered)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcFeature] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcFeature>> ogcItem({
    required String collectionId,
    required String featureId,
    BuiltList<String>? licencePolicy,
    String? foresignalLicencePolicy,
    String? f,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/items/{featureId}'
        .replaceAll(
            '{' r'collectionId' '}',
            encodeQueryParameter(
                    _serializers, collectionId, const FullType(String))
                .toString())
        .replaceAll(
            '{' r'featureId' '}',
            encodeQueryParameter(
                    _serializers, featureId, const FullType(String))
                .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (foresignalLicencePolicy != null)
          r'Foresignal-Licence-Policy': foresignalLicencePolicy,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (licencePolicy != null)
        r'licencePolicy': encodeCollectionQueryParameter<String>(
          _serializers,
          licencePolicy,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (f != null)
        r'f': encodeQueryParameter(_serializers, f, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OgcFeature? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcFeature),
            ) as OgcFeature;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcFeature>(
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

  /// Query OGC collection items
  /// GeoJSON features with &#x60;next&#x60; links (opaque keyset cursor). &#x60;datetime&#x60; matches effective time for current collections and observed time for history. &#x60;filter&#x60; accepts basic CQL2 (comparisons, IS NULL, AND/OR/NOT, literals, S_INTERSECTS) in cql2-text or cql2-json, depth ≤ 20 and ≤ 200 nodes. Unknown parameters and non-CRS84 CRSs → 400. Errors: &#x60;400 FILTER_INVALID&#x60; (with the position). Licence policy and token restrictions apply.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id: a kind (current state) or `{kind}-history`
  /// * [limit] - Page size
  /// * [bbox] - 4 or 6 numbers (CRS84)
  /// * [bboxCrs] - Only CRS84
  /// * [datetime] - Instant, `a/b`, `../b` or `a/..`
  /// * [filter] - CQL2 filter
  /// * [filterLang] - Filter language
  /// * [filterCrs] - Only CRS84
  /// * [count] - Return numberMatched when ≤ 100,000
  /// * [cursor] - Opaque pagination cursor from a previous response's nextCursor
  /// * [source_] - Filter by source id (repeatable or comma-separated)
  /// * [licencePolicy] - Licence policy flags (comma-separated): `no-nc` excludes records whose commercial use is not ALLOWED, `no-sa` excludes share-alike records, `redistributable` excludes records whose redistribution is not ALLOWED. Adds to the token's `licencePolicy` floor; it can never remove a token flag.
  /// * [foresignalLicencePolicy] - Header form of `licencePolicy` (comma-separated flags `no-nc`, `no-sa`, `redistributable`)
  /// * [f] - Output format; tolerated for clients that append it (only JSON/GeoJSON is offered)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcFeatureCollection] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcFeatureCollection>> ogcItems({
    required String collectionId,
    int? limit,
    String? bbox,
    String? bboxCrs,
    String? datetime,
    String? filter,
    String? filterLang,
    String? filterCrs,
    bool? count,
    String? cursor,
    BuiltList<String>? source_,
    BuiltList<String>? licencePolicy,
    String? foresignalLicencePolicy,
    String? f,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/items'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (foresignalLicencePolicy != null)
          r'Foresignal-Licence-Policy': foresignalLicencePolicy,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (limit != null)
        r'limit':
            encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (bbox != null)
        r'bbox':
            encodeQueryParameter(_serializers, bbox, const FullType(String)),
      if (bboxCrs != null)
        r'bbox-crs':
            encodeQueryParameter(_serializers, bboxCrs, const FullType(String)),
      if (datetime != null)
        r'datetime': encodeQueryParameter(
            _serializers, datetime, const FullType(String)),
      if (filter != null)
        r'filter':
            encodeQueryParameter(_serializers, filter, const FullType(String)),
      if (filterLang != null)
        r'filter-lang': encodeQueryParameter(
            _serializers, filterLang, const FullType(String)),
      if (filterCrs != null)
        r'filter-crs': encodeQueryParameter(
            _serializers, filterCrs, const FullType(String)),
      if (count != null)
        r'count':
            encodeQueryParameter(_serializers, count, const FullType(bool)),
      if (cursor != null)
        r'cursor':
            encodeQueryParameter(_serializers, cursor, const FullType(String)),
      if (source_ != null)
        r'source': encodeCollectionQueryParameter<String>(
          _serializers,
          source_,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (licencePolicy != null)
        r'licencePolicy': encodeCollectionQueryParameter<String>(
          _serializers,
          licencePolicy,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.csv,
        ),
      if (f != null)
        r'f': encodeQueryParameter(_serializers, f, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OgcFeatureCollection? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcFeatureCollection),
            ) as OgcFeatureCollection;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcFeatureCollection>(
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

  /// OGC API landing page
  /// Links &#x60;self&#x60;, &#x60;conformance&#x60;, &#x60;data&#x60; (collections), &#x60;tilingSchemes&#x60; (/v1/ogc/tileMatrixSets) and &#x60;service-desc&#x60; (/v1/ogc/api → the OpenAPI document). JSON only; feed and tile keys via &#x60;/v1/k/{key}/…&#x60;. 108 serves raster products (Tiles, EDR); 112 adds Features.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcLandingPage] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcLandingPage>> ogcLanding({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcLandingPage? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcLandingPage),
            ) as OgcLandingPage;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcLandingPage>(
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

  /// Get collection queryables
  /// JSON Schema of the properties usable in &#x60;filter&#x60;: top-level payload keys declared in the kind&#39;s fieldSpecs plus title, sourceId, observedAt, eventTime, version.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [collectionId] - Collection id: a kind (current state) or `{kind}-history`
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcQueryables] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcQueryables>> ogcQueryables({
    required String collectionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/collections/{collectionId}/queryables'.replaceAll(
        '{' r'collectionId' '}',
        encodeQueryParameter(_serializers, collectionId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcQueryables? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcQueryables),
            ) as OgcQueryables;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcQueryables>(
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

  /// Tile matrix set definition
  /// OGC 17-083r4 JSON definition.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [tileMatrixSetId] - Tile matrix set (OGC 17-083r4)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcTileMatrixSet] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcTileMatrixSet>> ogcTileMatrixSet({
    required String tileMatrixSetId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/tileMatrixSets/{tileMatrixSetId}'.replaceAll(
        '{' r'tileMatrixSetId' '}',
        encodeQueryParameter(
                _serializers, tileMatrixSetId, const FullType(String))
            .toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcTileMatrixSet? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcTileMatrixSet),
            ) as OgcTileMatrixSet;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcTileMatrixSet>(
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

  /// Tile matrix sets
  /// WebMercatorQuad and WorldCRS84Quad.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OgcTileMatrixSetList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OgcTileMatrixSetList>> ogcTileMatrixSets({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/ogc/tileMatrixSets';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerToken',
          },
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

    OgcTileMatrixSetList? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
              rawResponse,
              specifiedType: const FullType(OgcTileMatrixSetList),
            ) as OgcTileMatrixSetList;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<OgcTileMatrixSetList>(
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
