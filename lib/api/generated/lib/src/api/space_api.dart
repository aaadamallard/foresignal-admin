//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/celestrak_gp_element.dart';
import 'package:foresignal_api/src/model/problem.dart';

class SpaceApi {
  final Dio _dio;

  final Serializers _serializers;

  const SpaceApi(this._dio, this._serializers);

  /// CelesTrak-compatible GP element sets
  /// CelesTrak-compatible GP output served from &#x60;celestrak-gp&#x60; heads, never by calling CelesTrak, so Gpredict (&#x60;GROUP&#x3D;…&amp;FORMAT&#x3D;tle&#x60;), Look4Sat (&#x60;GROUP&#x3D;active&amp;FORMAT&#x3D;csv&#x60;) and SatDump (&#x60;FORMAT&#x3D;json&#x60;) can read elements from Foresignal. Query keys are uppercase as at CelesTrak; exactly one selector is required (&#x60;INTDES&#x60; matches as a prefix, so &#x60;1998-067&#x60; selects every piece). Clients that cannot send headers pass a 035 feed key as &#x60;?key&#x3D;&#x60; (the key&#39;s prefixes must include &#x60;/compat/celestrak/&#x60;); a feed-key response is &#x60;Cache-Control: private, max-age&#x3D;3600&#x60;. A caller whose restriction hides &#x60;celestrak-gp&#x60; or the &#x60;satellite&#x60; kind, or limits the area, gets &#x60;No GP data found&#x60;.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [GROUP] - CelesTrak group name (membership), or `active` for every non-expired element set
  /// * [CATNR] - NORAD catalogue number (up to 9 digits)
  /// * [INTDES] - International designator, matched as a prefix (`1998-067` selects every piece, `1998-067A` one object)
  /// * [NAME] - Case-insensitive substring of OBJECT_NAME
  /// * [SPECIAL] - Not supported; always 400
  /// * [FORMAT] - Output format (case-insensitive): `TLE`/`3LE` (name line + 2 lines), `2LE`, `JSON`, `JSON-PRETTY`, `CSV`, `XML` (CCSDS OMM XML), `KVN`. Absent or unknown → CSV, as CelesTrak since 2026-05-09. TLE formats omit objects ≥ 100000 (no alpha-5).
  /// * [key] - 035 feed key (`fsf_…`) for clients that cannot send headers (Gpredict, Look4Sat); its prefixes must include `/compat/celestrak/` (064)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getCelestrakGp({
    String? GROUP,
    String? CATNR,
    String? INTDES,
    String? NAME,
    String? SPECIAL,
    String? FORMAT,
    String? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/compat/celestrak/gp.php';
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
      if (GROUP != null)
        r'GROUP': encodeQueryParameter(
          _serializers,
          GROUP,
          const FullType(String),
        ),
      if (CATNR != null)
        r'CATNR': encodeQueryParameter(
          _serializers,
          CATNR,
          const FullType(String),
        ),
      if (INTDES != null)
        r'INTDES': encodeQueryParameter(
          _serializers,
          INTDES,
          const FullType(String),
        ),
      if (NAME != null)
        r'NAME': encodeQueryParameter(
          _serializers,
          NAME,
          const FullType(String),
        ),
      if (SPECIAL != null)
        r'SPECIAL': encodeQueryParameter(
          _serializers,
          SPECIAL,
          const FullType(String),
        ),
      if (FORMAT != null)
        r'FORMAT': encodeQueryParameter(
          _serializers,
          FORMAT,
          const FullType(String),
        ),
      if (key != null)
        r'key': encodeQueryParameter(_serializers, key, const FullType(String)),
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

  /// CelesTrak GP output (NORAD path alias)
  /// CelesTrak-compatible GP output served from &#x60;celestrak-gp&#x60; heads, never by calling CelesTrak, so Gpredict (&#x60;GROUP&#x3D;…&amp;FORMAT&#x3D;tle&#x60;), Look4Sat (&#x60;GROUP&#x3D;active&amp;FORMAT&#x3D;csv&#x60;) and SatDump (&#x60;FORMAT&#x3D;json&#x60;) can read elements from Foresignal. Query keys are uppercase as at CelesTrak; exactly one selector is required (&#x60;INTDES&#x60; matches as a prefix, so &#x60;1998-067&#x60; selects every piece). Clients that cannot send headers pass a 035 feed key as &#x60;?key&#x3D;&#x60; (the key&#39;s prefixes must include &#x60;/compat/celestrak/&#x60;); a feed-key response is &#x60;Cache-Control: private, max-age&#x3D;3600&#x60;. A caller whose restriction hides &#x60;celestrak-gp&#x60; or the &#x60;satellite&#x60; kind, or limits the area, gets &#x60;No GP data found&#x60;. Alias of &#x60;/compat/celestrak/gp.php&#x60; at CelesTrak&#39;s historical path.  **Scope:** &#x60;read&#x60; (open while &#x60;security.openReads&#x60; is on).
  ///
  /// Parameters:
  /// * [GROUP] - CelesTrak group name (membership), or `active` for every non-expired element set
  /// * [CATNR] - NORAD catalogue number (up to 9 digits)
  /// * [INTDES] - International designator, matched as a prefix (`1998-067` selects every piece, `1998-067A` one object)
  /// * [NAME] - Case-insensitive substring of OBJECT_NAME
  /// * [SPECIAL] - Not supported; always 400
  /// * [FORMAT] - Output format (case-insensitive): `TLE`/`3LE` (name line + 2 lines), `2LE`, `JSON`, `JSON-PRETTY`, `CSV`, `XML` (CCSDS OMM XML), `KVN`. Absent or unknown → CSV, as CelesTrak since 2026-05-09. TLE formats omit objects ≥ 100000 (no alpha-5).
  /// * [key] - 035 feed key (`fsf_…`) for clients that cannot send headers (Gpredict, Look4Sat); its prefixes must include `/compat/celestrak/` (064)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getCelestrakGpAlias({
    String? GROUP,
    String? CATNR,
    String? INTDES,
    String? NAME,
    String? SPECIAL,
    String? FORMAT,
    String? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/compat/celestrak/NORAD/elements/gp.php';
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
      if (GROUP != null)
        r'GROUP': encodeQueryParameter(
          _serializers,
          GROUP,
          const FullType(String),
        ),
      if (CATNR != null)
        r'CATNR': encodeQueryParameter(
          _serializers,
          CATNR,
          const FullType(String),
        ),
      if (INTDES != null)
        r'INTDES': encodeQueryParameter(
          _serializers,
          INTDES,
          const FullType(String),
        ),
      if (NAME != null)
        r'NAME': encodeQueryParameter(
          _serializers,
          NAME,
          const FullType(String),
        ),
      if (SPECIAL != null)
        r'SPECIAL': encodeQueryParameter(
          _serializers,
          SPECIAL,
          const FullType(String),
        ),
      if (FORMAT != null)
        r'FORMAT': encodeQueryParameter(
          _serializers,
          FORMAT,
          const FullType(String),
        ),
      if (key != null)
        r'key': encodeQueryParameter(_serializers, key, const FullType(String)),
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

  /// Per-group TLE text (CelesTrak-compatible)
  /// The two-line element sets of a CelesTrak group as plain TLE text, for SatDump, Gpredict and Look4Sat. Served from the celestrak-gp cache only; never fetched upstream.
  ///
  /// Parameters:
  /// * [group] - weather, noaa, goes, resource, amateur, cubesat, active, stations, …
  /// * [key] - A feed key (fsf_…) for clients that cannot send headers.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getCelestrakGroupTle({
    required String group,
    String? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/compat/celestrak/NORAD/elements/{group}.txt'.replaceAll(
      '{'
      r'group'
      '}',
      encodeQueryParameter(
        _serializers,
        group,
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
      if (key != null)
        r'key': encodeQueryParameter(_serializers, key, const FullType(String)),
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
