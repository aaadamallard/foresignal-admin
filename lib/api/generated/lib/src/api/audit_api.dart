//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:foresignal_api/src/api_util.dart';
import 'package:foresignal_api/src/model/audit_event_page.dart';
import 'package:foresignal_api/src/model/problem.dart';

class AuditApi {
  final Dio _dio;

  final Serializers _serializers;

  const AuditApi(this._dio, this._serializers);

  /// List audit events
  /// Newest first, keyset paging. Covers authenticated writes, 401/403 on write paths, pairing claims, token revocations, MCP tool calls, notification actions, private-data reads by non-admins, exports and purges. &#x60;detail&#x60; never contains secrets or request bodies. Retention key &#x60;audit&#x60; (default 90d).  **Scope:** &#x60;admin&#x60;.
  ///
  /// Parameters:
  /// * [since] - Earliest `at` (inclusive)
  /// * [until] - Latest `at` (exclusive)
  /// * [tokenId] - Only this token
  /// * [operationId] - Only this operation
  /// * [status] - Only this HTTP status
  /// * [cursor] - Opaque cursor from the previous page's `nextCursor`
  /// * [limit] - Page size
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AuditEventPage] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AuditEventPage>> listAuditEvents({
    DateTime? since,
    DateTime? until,
    String? tokenId,
    String? operationId,
    int? status,
    String? cursor,
    int? limit,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/v1/audit';
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
      if (tokenId != null)
        r'tokenId': encodeQueryParameter(
          _serializers,
          tokenId,
          const FullType(String),
        ),
      if (operationId != null)
        r'operationId': encodeQueryParameter(
          _serializers,
          operationId,
          const FullType(String),
        ),
      if (status != null)
        r'status': encodeQueryParameter(
          _serializers,
          status,
          const FullType(int),
        ),
      if (cursor != null)
        r'cursor': encodeQueryParameter(
          _serializers,
          cursor,
          const FullType(String),
        ),
      if (limit != null)
        r'limit': encodeQueryParameter(
          _serializers,
          limit,
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

    AuditEventPage? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AuditEventPage),
                )
                as AuditEventPage;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AuditEventPage>(
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
