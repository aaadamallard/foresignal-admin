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
  /// Newest first, keyset paging. Covers authenticated writes, 401/403 on write paths, pairing claims, token revocations, MCP tool calls, notification actions, private-data reads by non-admins, exports and purges. &#x60;detail&#x60; never contains secrets or request bodies. Retention key &#x60;audit&#x60; (default 90d).  **Scope:** &#x60;admin&#x60;.  **v2.0 (R2-013):** a signed-in user reaches the log with &#x60;audit.read&#x60; (the Auditor role) without admin scope; a session without it is 403 PERMISSION_DENIED. What a signed-in user does is attributed to the user: actor kind &#x60;user&#x60; with &#x60;userId&#x60; and &#x60;userEmail&#x60;, including sign-ins (successful and failed), sign-outs, session revocations, account activation and password resets, every user, role, settings, collection and LLM provider change, and reads refused with PERMISSION_DENIED (&#x60;detail.requiredPermission&#x60;). Filters: time, token, operation, status, actor kind, user and target. The log is append-only: the database refuses to change an entry; retention deletes entries older than the window.
  ///
  /// Parameters:
  /// * [since] - Earliest `at` (inclusive)
  /// * [until] - Latest `at` (exclusive)
  /// * [tokenId] - Only this token
  /// * [operationId] - Only this operation
  /// * [status] - Only this HTTP status
  /// * [actorKind] - Only this actor kind (for example `user` or `token`, R2-013)
  /// * [userId] - Only entries attributed to this user (R2-013)
  /// * [targetType] - Only this target type, for example `users` or `settings` (R2-013)
  /// * [targetId] - Only this target id (R2-013)
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
    String? actorKind,
    String? userId,
    String? targetType,
    String? targetId,
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
      if (actorKind != null)
        r'actorKind': encodeQueryParameter(
          _serializers,
          actorKind,
          const FullType(String),
        ),
      if (userId != null)
        r'userId': encodeQueryParameter(
          _serializers,
          userId,
          const FullType(String),
        ),
      if (targetType != null)
        r'targetType': encodeQueryParameter(
          _serializers,
          targetType,
          const FullType(String),
        ),
      if (targetId != null)
        r'targetId': encodeQueryParameter(
          _serializers,
          targetId,
          const FullType(String),
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
